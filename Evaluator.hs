module Evaluator where 

import Tokens
import Grammar

--Simple data type to store the state of computation
--CONTAINS: The variable array, the list of streams
type State =  ([Var],[[Int]])

--The name of the variable paired to its value
type Var = (String,Int)


--INPUT: the current state of evaluation, the list of sub expressions left to evalExp
--OUTPUT: none, the method only prints to standard output
evalExp :: State -> [Exp] -> IO ()

--All sub expressions have been evaluated, first base case 
evalExp s [] = return ()
    
--End marker detected, second base case
evalExp s (EndProgram:es) = return ()

--Do nothing and skip to the next expression to evaluate
evalExp s (DataNothing:es) = evalExp s es

--Increment the specified variable
evalExp s ((IncVar var):es) = evalExp (setVar s var (DataInt(val + 1))) es
    
    where 

        val = getVar s var

--Decrement variable index i
evalExp s ((DecVar var):es) = evalExp (setVar s var (DataInt(val - 1))) es

    where

        val = getVar s var

--Evaluate e1 then evaluate e2
evalExp s ((Seq e1 e2):es) = evalExp s (e1:e2:es)    
    
--Set the value of the named variable to the head of stream i, and remove it from the stream
evalExp s ((TakeFrom i var):es) = evalExp (setVar (dropFrom s i) var (DataInt val)) es

    where
        
        val = peekFrom s i 

--Set index named variable in state s to value of x
evalExp s ((SetVar var x):es) = evalExp (setVar s var (DataInt val)) es

    where 

        val = evalInt s x

evalExp s ((TimesEq var x):es) = evalExp (setVar s var (DataInt ((getVar s var) * val))) es

    where val = evalInt s x

evalExp s ((DivEq var x):es) = evalExp (setVar s var (DataInt ((getVar s var) `div` val))) es

    where val = evalInt s x

evalExp s ((AddEq var x):es) = evalExp (setVar s var (DataInt ((getVar s var) + val))) es

    where val = evalInt s x

evalExp s ((SubEq var x):es) = evalExp (setVar s var (DataInt ((getVar s var) - val))) es

    where val = evalInt s x

--Print variable index 
evalExp s ((PrintVar inX):es) = do 

    print $ evalInt s inX
    evalExp s es

evalExp s ((PrintAll args):es) = evalExp s ((getPrintExprList args) ++ es)

--Drop the head from stream i
evalExp s ((DropFrom i):es) = evalExp (dropFrom s i) es    

evalExp s ((IfEl b e1 e2):es) = if(evalBool s b) then evalExp s (e1:es) else evalExp s (e2:es)

--If b evalutes to true then carry out expression e and reassess after
evalExp s ((While b e):es) = if(evalBool s b) then (evalExp s (e:(While b e):es)) else evalExp s es
    
{-
A for loop can simply be treated as a while loop with an initialisation step, and 
then on every iteration execute the expression contained in the loop followed
by the incremental step expression
-}
evalExp s ((For init b incr e):es) = do 

    evalExp s (init:(While b (Seq e incr)):es)


--INPUT: an arg list data type which represents a list of variable names
--OUTPUT: a list of print expressions corresponding to each of these variable names
getPrintExprList :: ArgList -> [Exp]

--base case
getPrintExprList (EndNode inX) = [PrintVar inX]
getPrintExprList (ListNode inX list) = (PrintVar inX):(getPrintExprList list)


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
evalBool s (StreamNotEmpty i) = notEmpty s i


--INPUT: state, int expression to evaluate
--OUTPUT: evaluated int
evalInt :: State -> IntExp -> Int

--The base case 
evalInt s (DataInt x) = x
evalInt s (Mul e1 e2) = (evalInt s e1) * (evalInt s e2)
evalInt s (Div e1 e2) = (evalInt s e1) `div` (evalInt s e2)
evalInt s (Add e1 e2) = (evalInt s e1) + (evalInt s e2)
evalInt s (Sub e1 e2) = (evalInt s e1) - (evalInt s e2)
evalInt s (Mod e1 e2) = (evalInt s e1) `mod` (evalInt s e2)
evalInt s (Expo e1 e2) = (evalInt s e1) ^ (evalInt s e2)
evalInt s (Neg e) = (-1) * (evalInt s e)
evalInt s (GetVar str) = getVar s str
evalInt s (GetLength i) = getStreamLength s i


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


--INPUT: state, which stream to drop from
--OUTPUT: resulting state with the head removed from requested stream
dropFrom :: State -> Int -> State
dropFrom s i = dropFromAux s i []

dropFromAux :: State -> Int -> [[Int]] -> State
dropFromAux (_, xss) i _ | i < 0 || i >= (length xss) = error "Stream does not exist!"
dropFromAux (_, []) _ _ = error "No element found in requested stream!"
dropFromAux (ys, (xs:xss)) 0 acc 

    | xs == [] = error "No element found in requested stream!"
    | otherwise = (ys, (acc ++ [drop 1 xs] ++ xss))

dropFromAux (ys, (xs:xss)) i acc = dropFromAux (ys, xss) (i - 1) (acc ++ [xs])


--INPUT: state, the string of the variable
--OUTPUT: state, the value of the variable
getVar :: State -> String -> Int
getVar ([],_) str = error "Var does not exist!"
getVar (((str1,x):xs),_) str2

    | str1 == str2 = x
    | otherwise = getVar (xs,[]) str2


--INPUT: state, variable name to change or add, value of the variable
--OUTPUT: resulting state
setVar :: State -> String -> IntExp -> State
setVar s var inX = setVarAux s var inX []

--Helper method using an accumulator
setVarAux :: State -> String -> IntExp -> [Var] -> State
setVarAux ([],streams) var inX acc = (((var,(evalInt ([],streams) inX)):acc),streams)
setVarAux ((str,val):vars,streams) var inX acc 

    | str == var = (acc ++ [(str,(evalInt (acc ++ [(str,val)] ++ vars,streams) inX))] ++ vars, streams)
    | otherwise = setVarAux (vars,streams) var inX ((str,val):acc)


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is empty
isEmpty :: State -> Int -> Bool
isEmpty (_, []) _ = error "Stream not found!" 
isEmpty (_, (xs:xss)) 0
    | xs == [] = True
    | otherwise = False
isEmpty (_, (xs:xss)) i = isEmpty ([], xss) (i - 1)


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is not empty
notEmpty :: State -> Int -> Bool
notEmpty s i = not $ isEmpty s i