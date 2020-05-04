module Main where

import System.Environment
import Tokens
import Grammar
import Evaluator
import IOReader

main = do 

    [path] <- getArgs
    string <- readFile path
    tokens <- return $ removeMultiLines $ alexScanTokens string
    rootExp <- return $ parse $ tokens

    --The expected number of streams
    expected <- return $ getMaxStreams rootExp

    if(isTakeFromInBoolExps rootExp) then 

        error "\n\nERROR! Using streams[n].take in int comparison within a boolean expression is not currently supported. Please remove any streams[n].take expressions from all boolean expressions and try again. (e.g. in all while/for loops and all if/else statements) If you need to compare the value of the head of a stream in a boolean expression you can achieve the same thing by using the 'peek' keyword then calling streams[n].drop(1) directly after the boolean expression\n"

    else do 

    streams <- reader []

    if(length streams == 0) then do

        --If the input is empty then run the program with n empty streams where n is the number of expected streams 
        emptyStreams <- return $ generateNEmptyStreams $ expected
        state <- return ([],emptyStreams)
        evalExp state [rootExp]

        else do

        if(length streams < expected) then do 

            error $ "\n\nERROR! Incorrect number of streams provided! This program was expecting: " ++ (show expected) ++ " streams, but received: " ++ (show $ length streams) ++ ". Please make sure you have provided the correct number of streams in your stream data file and try again\n"

        else do 

        state <- return ([],streams)
        evalExp state [rootExp]


--VARIOUS ERROR CHECKING AND UTILITY FUNCTIONS DEFINED BELOW

{-
Mutually recursive methods to remove all multiline comment tokens and the tokens between them. Could not 
manage to get alex to correctly tokenize "/*" or "*/" so instead pattern match using each 
characters' individual tokens which are also the tokens for multiplication and division. This is the only possible
legal usage of "/" followed immediately by "*" and vice versa so this is a valid solution and we know this pattern
will definately always hold for multiline comments
-}
removeMultiLines :: [Token] -> [Token]
removeMultiLines [] = []

-- "/*" start of a multiline comment looks like this
removeMultiLines ((TokenDiv _):(TokenTimes _):toks) = dropCommentBody toks
removeMultiLines ((TokenTimes _ ):(TokenDiv _ ):toks) = error "\n\nERROR! Expected a multiline comment start but found a misplaced multiline comment end instead! \n"
removeMultiLines (t:toks) = t:(removeMultiLines toks)

dropCommentBody :: [Token] -> [Token]
dropCommentBody [] = error "\n\nERROR! Multiline comment was declared without an end! \n"

-- "*/" end of a multiline comment looks like this
dropCommentBody ((TokenTimes _):(TokenDiv _):toks) = removeMultiLines toks
dropCommentBody ((TokenDiv _ ):(TokenTimes _ ):toks) = error "\n\nERROR! Expected a multiline comment end but found a misplaced multiline comment start instead! \n"
dropCommentBody (t:toks) = dropCommentBody toks


--Returns the specified number of empty streams, used if there is an empty input
generateNEmptyStreams :: Int -> [[Int]]

--Have to cons another empty list as the empty list represents the end of a list
generateNEmptyStreams 0 = []
generateNEmptyStreams n = []:(generateNEmptyStreams $ n - 1)


{-
Returns the highest number stream referenced in the program so the interpreter runs with 
this number many empty streams if no input is given
-}
getMaxStreams :: Exp -> Int

--Other base case when stream is referenced in drop from
getMaxStreams (DropFrom i _) = i + 1

--The base cases, when int expressions are referenced
getMaxStreams (SetVar _ inX) = getMaxInIntX inX
getMaxStreams (TimesEq _ inX) = getMaxInIntX inX
getMaxStreams (DivEq _ inX) = getMaxInIntX inX
getMaxStreams (SubEq _ inX) = getMaxInIntX inX
getMaxStreams (AddEq _ inX) = getMaxInIntX inX

--Recursive calls
getMaxStreams (PrintAll args) = getMaxInPrintList args
getMaxStreams (For inits _ incs e) = max (max (getMaxInExpList inits) (getMaxInExpList incs)) (getMaxStreams e)
getMaxStreams (Seq e1 e2) = max (getMaxStreams e1) (getMaxStreams e2)
getMaxStreams (While _ e) = getMaxStreams e
getMaxStreams (IfEl _ e1 e2) = max (getMaxStreams e1) (getMaxStreams e2)

--Inc var, dec var, nothing and end program not applicable as they do not reference streams
getMaxStreams _ = 0


--Returns the highest number stream referenced in this int expression
getMaxInIntX :: IntExp -> Int

{-
The base cases, when streams are referenced. All base cases add
one to account for zero indexing so Haskell knows how many empty
streams to populate the list of streams with
-}
getMaxInIntX (TakeFrom i) = i + 1
getMaxInIntX (PeekFrom i) = i + 1
getMaxInIntX (GetLength i) = i + 1

--Recursive calls
getMaxInIntX (Neg inX) = getMaxInIntX inX
getMaxInIntX (Mul inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Div inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Add inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Sub inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Expo inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Mod inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Max inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)
getMaxInIntX (Min inX1 inX2) = max (getMaxInIntX inX1) (getMaxInIntX inX2)

--Get var, and data int are not applicable as they do not reference streams
getMaxInIntX _ = 0


--Return the highest number stream referenced in the print argument list
getMaxInPrintList :: ArgList -> Int
getMaxInPrintList (ArgListNode inX list) = max (getMaxInIntX inX) (getMaxInPrintList list)
getMaxInPrintList (ArgEndNode inX) = getMaxInIntX inX


--Return the highest number stream referenced in the expression list
getMaxInExpList :: ExpList -> Int
getMaxInExpList (ExpListNode e list) = max (getMaxStreams e) (getMaxInExpList list)
getMaxInExpList (ExpEndNode e) = getMaxStreams e


{-
Goes through the parse tree of the program and checks "streams[n].take"
has not been used in any bool expressions as changing state is not supported
by the evalBool function
-}
isTakeFromInBoolExps :: Exp -> Bool

--The base cases; check the boolean expressions
isTakeFromInBoolExps (While bX e) = (checkTakeFrom bX) || (isTakeFromInBoolExps e)
isTakeFromInBoolExps (For _ bX _ e) = (checkTakeFrom bX) || (isTakeFromInBoolExps e)
isTakeFromInBoolExps (IfEl bX e1 e2) = (checkTakeFrom bX) || (isTakeFromInBoolExps e1) || (isTakeFromInBoolExps e2)
isTakeFromInBoolExps (Seq e1 e2) = (isTakeFromInBoolExps e1) || (isTakeFromInBoolExps e2)

--All other cases are redundant as they do not use boolean expressions
isTakeFromInBoolExps _ = False

checkTakeFrom :: BExp -> Bool
checkTakeFrom (And bX1 bX2) = (checkTakeFrom bX1) || (checkTakeFrom bX2)
checkTakeFrom (Or bX1 bX2) = (checkTakeFrom bX1) || (checkTakeFrom bX2)
checkTakeFrom (Not bX) = (checkTakeFrom bX)
checkTakeFrom (GThan inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeFrom (LThan inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeFrom (GThanEQ inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeFrom (LThanEQ inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeFrom (Equal inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeFrom (NEqual inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)

--All other cases redundant as they do not use take from (Stream empty, databool)
checkTakeFrom _ = False

checkTakeInIntX :: IntExp -> Bool

--The only base case that returns true in this long chain of functions :)
checkTakeInIntX (TakeFrom _ ) = True

checkTakeInIntX (Mul inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Div inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Add inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Sub inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Mod inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Expo inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Max inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Min inX1 inX2) = (checkTakeInIntX inX1) || (checkTakeInIntX inX2)
checkTakeInIntX (Neg inX) = checkTakeInIntX inX

--All other cases redundant
checkTakeInIntX _ = False