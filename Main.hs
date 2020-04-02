module Main where

import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Control.Monad

--Simple data type to store the state of computation
--CONTAINS: The variable array, the list of streams
type State =  ([Var],[[Int]])
type Var = (String,Int)

main = do 

    [path] <- getArgs
    string <- readFile path
    streams <- reader []
    state <- return ([],streams)
    rootExp <- return (parse $ (alexScanTokens string))
    evalExp state [rootExp]

--reads standard input return standard output
-- takes the type that we want be the result and then we return IO in order main to read it
reader :: [[Int]] -> IO [[Int]]
--into variable eof we store the result if we have smth to read or not
reader result = do eof <- isEOF
                   if eof
                      --return convert the type of the list which list of list with int into IO
                      then return (result)         
                      else do a <- getLine
                              --if the end of the file is not reached, and with b we take the first line and separate it into words
                              let b = words a
                              --map each element of b to become a list from ["1", "5"]  into [["1"], ["5"]]
                              --read convert the string into an int from ["1"] into [1]
                              let c = map (\x -> [read x :: Int]) b
                              reader (addToResult result c)

addToResult :: [[Int]] -> [[Int]] -> [[Int]]
addToResult [] c = c
addToResult result [] = result
--c [[1], [5]]
--result [[1,2], [5,6]]
--add to [1,2] 1 from c
--           result  c
addToResult (x:xs) (y:ys) = (x ++ y) : addToResult xs ys                          

--INPUT: the current state of evaluation, the list of sub expressions left to evalExp
--OUTPUT: none, the method only prints to standard output
evalExp :: State -> [Exp] -> IO ()

--All sub expressions have been evaluated, first base case 
evalExp s [] = return ()
    
    --FOR TESTING, delete after
    --print s
    --print "Parse tree consumed. Evaluation finished"

--End marker detected, second base case
evalExp s (EndProgram:es) = return ()
    
    --print s
    --print "End marker detected. Ending evaluation"

--Increment variable index i
evalExp s ((IncVar var):es) = do
    
    --print $ (show i) ++ " incremented to: " ++ show (val + 1)
    evalExp (setVar s var (DataInt(val + 1))) es

    where 

        val = getVar s var

--Decrement variable index i
evalExp s ((DecVar var):es) = do

    evalExp (setVar s var (DataInt(val - 1))) es

    where

        val = getVar s var

--evalExp e1 then evalExp e2
evalExp s ((Seq e1 e2):es) = do
    
    --print s
    evalExp s (e1:e2:es)

--Unwrap the expression from the single data type then evaluate it it
evalExp s ((Single e):es) = do
    
    --print s
    evalExp s (e:es)

--Set the value of variable index j to the head of stream i, and remove it from the stream
evalExp s ((TakeFrom i var):es) = do

    evalExp (setVar (dropFrom s i) var (DataInt val)) es

    where
        
        val = peekFrom s i 

--Set index i in state s to value x
evalExp s ((SetVar var x):es) = do
    
    --print s
    --print $ "setting index " ++ (show i) ++ " to value: " ++ (show val)
   
    evalExp (setVar s var (DataInt val)) es

    where 

        val = evalInt s x

evalExp s ((TimesEq var x):es) = do

    evalExp (setVar s var (DataInt ((getVar s var) * val))) es

    where val = evalInt s x

evalExp s ((DivEq var x):es) = do

    evalExp (setVar s var (DataInt ((getVar s var) `div` val))) es

    where val = evalInt s x

evalExp s ((AddEq var x):es) = do

    evalExp (setVar s var (DataInt ((getVar s var) + val))) es

    where val = evalInt s x

evalExp s ((SubEq var x):es) = do

    evalExp (setVar s var (DataInt ((getVar s var) - val))) es

    where val = evalInt s x

--Print variable index 
evalExp s ((PrintVar str):es) = do 

    print $ getVar s str
    evalExp s es

evalExp s ((PrintAll args):es) = evalExp s ((getPrintExprList args) ++ es)

--Drop the head from stream x
evalExp s ((DropFrom x):es) = do
    
    --print s
    evalExp (dropFrom s x) es

evalExp s ((IfEl b e1 e2):es) = do

    if(evalBool s b) then evalExp s (e1:es) else evalExp s (e2:es)

--If state s means b1 evalutes to true then carry out expression e and reassess after
evalExp s ((While b1 e):es) = do

    --print s
    if(evalBool s b1) then (evalExp s (e:(While b1 e):es)) else evalExp s es

getPrintExprList :: ArgList -> [Exp]

--base case
getPrintExprList (EndNode str) = (PrintVar str):[]
getPrintExprList (ListNode str list) = (PrintVar str):(getPrintExprList list)

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
evalInt s (Neg e) = (-1) * (evalInt s e)
evalInt s (GetVar str) = getVar s str
evalInt s (GetLength i) = getStreamLength s i


--INPUT: state, which stream is being queried
--OUTPUT: length of requested stream
getStreamLength :: State -> Int -> Int
getStreamLength (_, xss) i = length (xss !! i)

    
--INPUT: state, which stream to peak from
--OUTPUT: head of requested stream (without it removed)
peekFrom :: State -> Int -> Int
peekFrom (_, xss) i = head (xss !! i)


--INPUT: state, which stream to drop from
--OUTPUT: resulting state
dropFrom :: State -> Int -> State
dropFrom s i = dropFromAux s i []

dropFromAux :: State -> Int -> [[Int]] -> State
dropFromAux _ i _ | i < 0 = error "Index out of bounds!"
dropFromAux (ys, []) _ acc = (ys, acc)
dropFromAux (ys, (xs:xss)) 0 acc = (ys, (acc ++ [drop 1 xs] ++ xss))
dropFromAux (ys, (xs:xss)) i acc = dropFromAux (ys, xss) (i - 1) (acc ++ [xs])


--INPUT: state, the string of the variable
--OUTPUT: state, the value of the variable
getVar :: State -> String -> Int
getVar ([],_) str = error "Var does not exist"
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

    | str == var = (acc ++ [(str,(evalInt ((str,val):vars,streams) inX))] ++ vars, streams)
    | otherwise = setVarAux (vars,streams) var inX ((str,val):acc)

--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is empty
isEmpty :: State -> Int -> Bool
isEmpty (_, []) _ = True 
isEmpty (_, (xs:xss)) 0
    | xs == [] = True
    | otherwise = False
isEmpty (_, (xs:xss)) i = isEmpty ([], xss) (i - 1)


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is not empty
notEmpty :: State -> Int -> Bool
notEmpty s i = not $ isEmpty s i