module Evaluator where

import Grammar

--Simple data type to store the state of computation
--CONTAINS: The variable array, the list of streams
data EvalState = State [Int] [[Int]] deriving (Show, Read)

--Just some test data types to play around with
myVar :: EvalState
myVar = State [0,0,0] [[1,2,3],[4,5,6]] 
myVar2 :: EvalState
myVar2 = State [0,0,0] [[1,2,3],[5,6]] 
myVar3 :: EvalState
myVar3 = State [0,0,0] [[1,2,3],[6]] 
myVar4 :: EvalState
myVar4 = State [0,0,0] [[1,2,3],[]] 

nullState :: EvalState
nullState = State [] []

problem1 :: EvalState
problem1 = State [0,0,0] [[1,2,3,4],[5,6,7,8]]

problem1Parse :: Exp 
problem1Parse = Seq (VarSize 3) (Seq (While (And (StreamNotEmpty 0) (StreamNotEmpty 1)) (Seq (SetVal 0 (TakeFrom 0)) (Seq (SetVal 1 (TakeFrom 0)) (Seq (SetVal 2 (TakeFrom 1)) (Seq (PrintVar 0) (Seq (PrintVar 1) (Single (PrintVar 2)))))))) (Single EndProgram))

exampleProg :: Exp
exampleProg = Seq (VarSize 1) (Seq (While (LThan (GetVal 0) (DataInt 10)) (IncVal 0)) EndProgram)

exampleProg2 :: Exp
exampleProg2 = Seq (VarSize 2) (Seq (SetVal 0 (DataInt 10)) (PrintVar 0))

exampleProg3 :: Exp 
exampleProg3 = Seq (Seq (VarSize 3) (While (StreamNotEmpty 0) (Seq (SetVal 0 (TakeFrom 0)) (PrintVar 0)))) (EndProgram)

exampleProg4 :: Exp
exampleProg4 = Seq (SetVal 0 (TakeFrom 0)) (PrintVar 0)

--INPUT: the current state of evaluation, the list of sub expressions left to evaluate
evaluate :: EvalState -> [Exp] -> IO ()

--All sub expressions have been evaluated, first base case 
evaluate s [] = do
    
    --FOR TESTING, delete after
    print s
    print "Parse tree consumed. Evaluation finished"

--End marker detected, second base case
evaluate s (EndProgram:es) = do
    
    print s
    print "End marker detected. Ending evaluation"

--FOR TESTING, delete 
evaluate s ((IncVal i):es) = do
    
    print $ (show i) ++ " incremented to: " ++ show (val + 1)
    evaluate (setIndex s i (DataInt(val + 1))) es

    where 

        val = getIndex s i

--Evaluate e1 then evaluate e2
evaluate s ((Seq e1 e2):es) = evaluate s (e1:e2:es)
evaluate s ((Single e):es) = evaluate s (e:es)
evaluate s ((VarSize x):es) = evaluate (setVarSize s x) es
evaluate s ((SetVal i x):es) = evaluate (setIndex state i (DataInt val)) es

    where 

        val = snd $ evalInt s x
        state = fst $ evalInt s x

evaluate s ((PrintVar x):es) = do 

    print (getIndex s x)
    evaluate s es

evaluate s ((DropFrom x):es) = evaluate (dropFrom s x) es
evaluate s ((While b1 e):es) = do

    if(evalBool s b1) then (evaluate s (e:(While b1 e):es)) else (print $ (show s) ++ " Loop finished")


--INPUT: state, boolean expression to evaluate
--OUTPUT: evaluated boolean
evalBool :: EvalState -> BExp -> Bool

--The base case
evalBool s (DataBool b) = b
evalBool s (And e1 e2) = (evalBool s e1) && (evalBool s e2)
evalBool s (Or e1 e2) = (evalBool s e1) || (evalBool s e2)
evalBool s (Not e) = not $ evalBool s e
evalBool s (GThan ix1 ix2) = (evalIntStateless s ix1) > (evalIntStateless s ix2)
evalBool s (LThan ix1 ix2) = (evalIntStateless s ix1) < (evalIntStateless s ix2)
evalBool s (GThanEQ ix1 ix2) = (evalIntStateless s ix1) >= (evalIntStateless s ix2)
evalBool s (LThanEQ ix1 ix2) = (evalIntStateless s ix1) <= (evalIntStateless s ix2)
evalBool s (Equal ix1 ix2) = (evalIntStateless s ix1) == (evalIntStateless s ix2)
evalBool s (NEqual ix1 ix2) = (evalIntStateless s ix1) /= (evalIntStateless s ix2)
evalBool s (StreamEmpty i) = isEmpty s i
evalBool s (StreamNotEmpty i) = notEmpty s i


--Unwraps the evaluated int from its tate tuple
evalIntStateless :: EvalState -> IntExp -> Int
evalIntStateless s e = snd $ evalInt s e


--INPUT: state, int expression to evaluate
--OUTPUT: tuple of resulting state and evaluated int
evalInt :: EvalState -> IntExp -> (EvalState, Int)

--The base case 
evalInt s (DataInt x) = (s,x)
evalInt s (Mul e1 e2) = (s, (snd $ evalInt s e1) * (snd $ evalInt s e2))
evalInt s (Div e1 e2) = (s, (snd $ evalInt s e1) `div` (snd $ evalInt s e2))
evalInt s (Add e1 e2) = (s, (snd $ evalInt s e1) + (snd $ evalInt s e2))
evalInt s (Sub e1 e2) = (s, (snd $ evalInt s e1) - (snd $ evalInt s e2))
evalInt s (Neg e) = (s, (-1) * (snd $ evalInt s e))
evalInt s (GetVal x) = (s, getIndex s x)
evalInt s (TakeFrom x) = ((dropFrom s x), peekFrom s x)
evalInt s (GetLength x) = (s, getStreamLength s x)


--INPUT: state, which stream is being queried
--OUTPUT: length of requested stream
getStreamLength :: EvalState -> Int -> Int
getStreamLength (State _ xss) i = length (xss !! i)

    
--INPUT: state, which stream to peak from
--OUTPUT: head of requested stream (without it removed)
peekFrom :: EvalState -> Int -> Int
peekFrom (State _ xss) i = head (xss !! i)


--INPUT: State, which stream to remove from:
--OUTPUT: resulting state, with requested stream head removed
dropFrom :: EvalState -> Int -> EvalState 
dropFrom _ i | i < 0 = error "Index out of bounds!"
dropFrom (State ys []) = (State ys [])
dropFrom (State ys (xs:xss)) 0 = State ys ([drop 1 xs] ++ xss)
dropFrom (State ys (xs:xss)) i = dropFrom (State ys xss) (i - 1)


--Initially all elements in the array are 0 for simplicity sake
setVarSize :: EvalState -> Int -> EvalState
setVarSize (State xs xss) i
    | i <= 0 = error "Variable array size must be greater than 0!"
    | otherwise = (State (replicate i 0) xss)


--INPUT: state, index to retrieve
--OUPUT; requested index
getIndex :: EvalState -> Int -> Int
getIndex (State (y:ys) _) 0 = y
getIndex (State ys _) i | i < 0 || i >= (length ys) = error "Index out of bounds!"
getIndex (State (y:ys) _) i = getIndex (State ys []) (i - 1)


--INPUT: state, index to change, new value
--OUTPUT: resulting state
setIndex :: EvalState -> Int -> IntExp -> EvalState
setIndex (State xs xss) i y = (State (setNth i val xs) (getStreams state)) 

    where

        val = snd $ evalInt (State xs xss) y
        state = fst $ evalInt (State xs xss) y


getStreams :: EvalState -> [[Int]]
getStreams (State _ xss) = xss


--INPUT: index to change, new value, list
--OUTPUT: resulting list 
setNth :: Int -> a -> [a] -> [a]
setNth i y xs = setNthAux i y xs []

setNthAux :: Int -> a -> [a] -> [a] -> [a]
setNthAux 0 y (x:xs) acc = acc ++ [y] ++ xs
setNthAux i y (x:xs) acc = setNthAux (i - 1) y xs (acc ++ [x])


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is empty
isEmpty :: EvalState -> Int -> Bool
isEmpty (State _ []) _ = True 
isEmpty (State _ (xs:xss)) 0
    | xs == [] = True
    | otherwise = False
isEmpty (State _ (xs:xss)) i = isEmpty (State [] xss) (i - 1)


--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is not empty
notEmpty :: EvalState -> Int -> Bool
notEmpty s i = not $ isEmpty s i


-- INPUT: index to take head from, list of streams
-- OUTPUT: head of the stream requested , resulting list of streams in a tuple with the requested head removed
headOfNth :: Num a => Int -> [[a]] -> (a, [[a]])
headOfNth i xss = headOfNthAux i xss []


-- INFO: HELPER METHOD
headOfNthAux :: Num a => Int -> [[a]] -> [[a]] -> (a,[[a]])
headOfNthAux 0 (xs:xss) acc = ((head xs), (acc ++ [drop 1 xs] ++ xss))
headOfNthAux i (xs:xss) acc = headOfNthAux (i - 1) xss (acc ++ [xs])