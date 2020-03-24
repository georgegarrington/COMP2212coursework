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

testProg :: Exp
testProg = Seq (VarSize 2) (PrintVar 0)

printEval :: IO EvalState -> IO Exp -> IO ()
printEval s1 (Seq e1 e2) = do
    
    printEval s1 e1
    s2 <- evalExp s1 e1
    printEval s2 e2

evalExp :: IO EvalState -> IO Exp -> IO EvalState


{-
evalExp (State _ []) _ = do
    print "All streams consumed, program finished"
evalExp _ EndProgram = do
    print "Parse tree consumed, program finished"-}
    
evalExp s1 (Seq e1 e2) = evalExp (evalExp s1 e1) e2


{--
evalExp :: EvalState -> Exp -> EvalState
evalExp s (Seq e1 e2) = evalExp (evalExp s e2) e2
evalExp s (VarSize x) = setVarSize s x--}
{--
evalExp s (PrintVar i) = do 

    print $ getIndex s i
    return s--}

{-
evalExp s1 (Seq e1 e2) = do

    s2 <- evalExp s1 e1
    evalExp s2 e2

evalExp s1 (While b e) = do

    s2 <- evalExp s1 e
    if(evalBool s2 b) then evalExp s2 (While b e) else return-}
    

--INPUT: State, which stream to remove from:
--OUTPUT: resulting state, with requested stream head removed
dropFrom :: EvalState -> Int -> EvalState 
dropFrom (State ys (xs:xss)) 0 = State ys ([drop 1 xs] ++ xss) 
dropFrom (State ys (xs:xss)) i = dropFrom (State ys xss) (i - 1)

--Initially all elements in the array are 0 for simplicity sake
setVarSize :: EvalState -> Int -> EvalState
setVarSize (State xs xss) i
    | i <= 0 = error "Variable array size must be greater than 0!"
    | otherwise = (State (replicate i 0) xss)

--INPUT: state, index to print
--OUPUT; requested index
getIndex :: EvalState -> Int -> Int
getIndex (State (y:ys) _) 0 = y
getIndex (State ys _) i | i < 0 || i >= (length ys) = error "Index out of bounds!"
getIndex (State (y:ys) _) i = getIndex (State ys []) (i - 1)

--INPUT: state, index to change, new value
--OUTPUT: resulting state
setIndex :: EvalState -> Int -> Int -> EvalState
setIndex (State xs xss) i y = (State (setNth i y xs) xss) 

--INPUT: Index to change, new value, list
setNth :: Int -> a -> [a] -> [a]
setNth i y xs = setNthAux i y xs []

setNthAux :: Int -> a -> [a] -> [a] -> [a]
setNthAux 0 y (x:xs) acc = acc ++ [y] ++ xs
setNthAux i y (x:xs) acc = setNthAux (i - 1) y xs (acc ++ [x])

--INPUT: state, which stream is being queried
--OUTPUT: whether or not requested stream is empty
isEmpty :: EvalState -> Int -> Bool
isEmpty (State _ (xs:xss)) 0
    | xs == [] = True
    | otherwise = False
isEmpty (State _ (xs:xss)) i = isEmpty (State [] xss) (i - 1)

notEmpty :: EvalState -> Int -> Bool
notEmpty s i = not $ isEmpty s i



--Takes the current sub expression to evaluate, the variable "array" and the list of streams

--INPUT: Expression to evalute, variable array, streams
--evalInt :: IntExp -> [Int] -> [[Int]]

-- INPUT: Index to take head from, list of streams
-- OUTPUT: Head of the stream requested , resulting list of streams in a tuple with the requested head removed
headOfNth :: Num a => Int -> [[a]] -> (a, [[a]])
headOfNth i xss = headOfNthAux i xss []

-- INFO: HELPER METHOD
headOfNthAux :: Num a => Int -> [[a]] -> [[a]] -> (a,[[a]])
headOfNthAux 0 (xs:xss) acc = ((head xs), (acc ++ [drop 1 xs] ++ xss))
headOfNthAux i (xs:xss) acc = headOfNthAux (i - 1) xss (acc ++ [xs])

{-
evalInt2 :: (IntExp, EvalState) -> (Int, EvalState)
evalInt2 ((TakeFrom i), (State xs xss)) = headOfNth -}