module Evaluator where 

import Tokens
import Grammar

--Simple data type to store the state of computation
--CONTAINS: The variable array, the list of streams
type State =  ([Var],[[Int]])

--The name of the variable paired to its value
type Var = (String,Int)


--INPUT: the current state of evaluation, the list of sub expressions left to evaluate
--OUTPUT: none, the method only prints to standard output
evalExp :: State -> [Exp] -> IO ()

--All sub expressions have been evaluated, first base case 
evalExp s [] = return ()
    
--End marker detected, second base case; this is the proper way to end a program
evalExp s (EndProgram:es) = return ()

--Do nothing and skip to the next expression to evaluate
evalExp s (DataNothing:es) = evalExp s es

--Increment the variable in state s with the name var
evalExp s ((IncVar var):es) = evalExp (setVar s var (val + 1)) es
    
    where 

        val = getVar s var

--Decrement the variable in state s with the name var
evalExp s ((DecVar var):es) = evalExp (setVar s var (val - 1)) es

    where

        val = getVar s var

--Evaluate e1 then evaluate e2
evalExp s ((Seq e1 e2):es) = evalExp s (e1:e2:es)    
    
--Set the variable with name var in state s to value of x
evalExp s ((SetVar var x):es) = evalExp (setVar state var val) es

    where 

        tup = evalInt s x
        val = fst tup
        state = snd tup

evalExp s ((TimesEq var x):es) = evalExp (setVar state var ((getVar state var) * val)) es

    where 

        tup = evalInt s x
        val = fst tup
        state = snd tup

evalExp s ((DivEq var x):es) = evalExp (setVar state var ((getVar state var) `div` val)) es

    where 

        tup = evalInt s x
        val = fst tup
        state = snd tup

evalExp s ((AddEq var x):es) = evalExp (setVar state var ((getVar state var) + val)) es

    where

        tup = evalInt s x
        val = fst tup
        state = snd tup

evalExp s ((SubEq var x):es) = evalExp (setVar state var ((getVar state var) - val)) es

    where 

        tup = evalInt s x
        val = fst tup
        state = snd tup


{-Print all of the int expressions in the arglist args, printList will call the evalExp 
on the rest of the expressions when it has finished printing out and evaluting the arguments-}
evalExp s ((PrintAll args):es) = printList s es args

--Drop the head from stream i
evalExp s ((DropFrom i j):es) = evalExp (dropFrom s i j) es    

evalExp s ((IfEl b e1 e2):es) = if(evalBool s b) then evalExp s (e1:es) else evalExp s (e2:es)

--If b evalutes to true then carry out expression e and reassess after
evalExp s ((While b e):es) = if(evalBool s b) then (evalExp s (e:(While b e):es)) else evalExp s es
    
{-
A for loop can simply be treated as a while loop with multiple initialisation steps, and 
then on every iteration execute the expression contained in the loop followed
by arbitrarily many incremental step expressions
-}
evalExp s ((For inits b incrs e):es) = do 

    {-
    First do all the initialisation expressions, then do a while loop of the 
    expression within the curly braces of the for loop followed by all the 
    incremental step expressions
    -}
    evalExp s ((getExpList inits) ++ [While b (listToSeq ([e] ++ (getExpList incrs)))] ++ es)


--Prints a list of int expressions, then when done calls 
printList :: State -> [Exp] -> ArgList -> IO ()
printList s es (ArgEndNode inX) = do

    print val
    evalExp state es

    where

        tup = evalInt s inX
        val = fst tup
        state = snd tup

printList s es (ArgListNode inX list) = do

    print val
    printList state es list

    where

        tup = evalInt s inX
        val = fst tup
        state = snd tup

--Used with a for loop to get the list of expressions
getExpList :: ExpList -> [Exp]
getExpList (ExpEndNode e) = [e]
getExpList (ExpListNode e list) = e:(getExpList list)


--Turns a list of expressions into a seq data type with arbitrary many inner seqs
listToSeq :: [Exp] -> Exp
listToSeq [] = error "You cannot generate a seq from an empty list of expressions!"
listToSeq [e] = e
listToSeq (e:es) = Seq e (listToSeq es)

--INPUT: state, boolean expression to evaluate
--OUTPUT: evaluated boolean
evalBool :: State -> BExp -> Bool

--The base case
evalBool s (DataBool b) = b
evalBool s (And e1 e2) = (evalBool s e1) && (evalBool s e2)
evalBool s (Or e1 e2) = (evalBool s e1) || (evalBool s e2)
evalBool s (Not e) = not $ evalBool s e
evalBool s (GThan ix1 ix2) = (evalInt s ix1) > (evalInt s ix2)
evalBool s (LThan ix1 ix2) = (evalInt s ix1) < (evalInt s ix2)
evalBool s (GThanEQ ix1 ix2) = (evalInt s ix1) >= (evalInt s ix2)
evalBool s (LThanEQ ix1 ix2) = (evalInt s ix1) <= (evalInt s ix2)
evalBool s (Equal ix1 ix2) = (evalInt s ix1) == (evalInt s ix2)
evalBool s (NEqual ix1 ix2) = (evalInt s ix1) /= (evalInt s ix2)
evalBool s (StreamEmpty i) = isEmpty s i


--INPUT: state, int expression to evaluate
--OUTPUT: evaluated int and the resulting (possible) changed state with streams altered
evalInt :: State -> IntExp -> (Int, State)

--Base cases, these do not alter state so just return the same state
evalInt s (DataInt x) = (x,s)
evalInt s (TakeFrom i) = (peekFrom s i, dropFrom s i 1)
evalInt s (GetVar str) = (getVar s str, s)
evalInt s (GetLength i) = (getStreamLength s i, s)
evalInt s (PeekFrom i) = (peekFrom s i, s)

evalInt s (Max e1 e2) = (max (fst $ evalInt s e1) (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt s e2

evalInt s (Min e1 e2) = (min (fst $ evalInt s e1) (fst $ evalInt sLHS e2), sRHS)

    where

            sLHS = snd $ evalInt s e1
            sRHS = snd $ evalInt s e2

{-
Make sure to do each new call using the newly evaluated state of the last call,
and return the resulting state of the final evaluation in the returned tuple
-}
evalInt s (Mul e1 e2) = ((fst $ evalInt s e1) * (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2

evalInt s (Div e1 e2) = ((fst $ evalInt s e1) `div` (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2

evalInt s (Add e1 e2) = ((fst $ evalInt s e1) + (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2

evalInt s (Sub e1 e2) = ((fst $ evalInt s e1) - (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2

evalInt s (Mod e1 e2) = ((fst $ evalInt s e1) `mod` (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2


evalInt s (Expo e1 e2) = ((fst $ evalInt s e1) ^ (fst $ evalInt sLHS e2), sRHS)

    where

        sLHS = snd $ evalInt s e1
        sRHS = snd $ evalInt sLHS e2

evalInt s (Neg e) = ((-1) * (fst $ evalInt s e), snd $ evalInt s e)


--INPUT: state, which stream is being queried
--OUTPUT: length of requested stream
getStreamLength :: State -> Int -> Int
getStreamLength (_, xss) i 

    | i >= (length xss) || i < 0 = error "Requested stream does not exist!"
    | otherwise = length (xss !! i)
    

--INPUT: state, which stream to peek from
--OUTPUT: head of requested stream (without it being removed)
peekFrom :: State -> Int -> Int
peekFrom (_, xss) i 

    | i >= (length xss) || i < 0 = error "Requested stream does not exist!"
    | (xss !! i) == [] = error "No element found in requested stream!"
    | otherwise = head (xss !! i)


--INPUT: state, which stream to drop from, how many times to drop
--OUTPUT: resulting state with the head removed from requested stream
dropFrom :: State -> Int -> Int -> State
dropFrom s i j = dropFromAux s i j []

dropFromAux :: State -> Int -> Int -> [[Int]] -> State
dropFromAux (_, xss) i _ _ | i < 0 || i >= (length xss) = error "Requested stream does not exist!"
dropFromAux (_, []) _ _ _ = error "No streams were found!"
dropFromAux (ys, (xs:xss)) 0 j acc 

    | j > length xs = error "Cannot drop more elements than there are in the stream!"
    | xs == [] = error "No element found in requested stream!"
    | otherwise = (ys, (acc ++ [drop j xs] ++ xss))

dropFromAux (ys, (xs:xss)) i j acc = dropFromAux (ys, xss) (i - 1) j (acc ++ [xs])


--INPUT: state, the string of the variable
--OUTPUT: state, the value of the variable
getVar :: State -> String -> Int
getVar ([],_) str = error "Var does not exist!"
getVar (((str1,x):xs),_) str2

    | str1 == str2 = x
    | otherwise = getVar (xs,[]) str2


--INPUT: state, variable name to change or add, value of the variable
--OUTPUT: resulting state
setVar :: State -> String -> Int -> State
setVar s var x = setVarAux s var x []

--Helper method using an accumulator
setVarAux :: State -> String -> Int -> [Var] -> State
setVarAux ([],streams) var x acc = (((var,x):acc),streams)
setVarAux ((str,val):vars,streams) var x acc 

    | str == var = (acc ++ [(str,x)] ++ vars, streams)
    | otherwise = setVarAux (vars,streams) var x ((str,val):acc)


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is empty
isEmpty :: State -> Int -> Bool
isEmpty (_, []) _ = error "Stream does not exist!" 
isEmpty (_, (xs:xss)) 0
    | xs == [] = True
    | otherwise = False
isEmpty (_, (xs:xss)) i = isEmpty ([], xss) (i - 1)