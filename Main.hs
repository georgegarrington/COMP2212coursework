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
    streams <- reader []

    if(length streams == 0) then do

        --If the input is empty then run the program with n empty streams where n is the number of expected streams 
        emptyStreams <- return $ generateNEmptyStreams $ getMaxStreams rootExp
        state <- return ([],emptyStreams)
        evalExp state [rootExp]

        else do

        state <- return ([],streams)
        evalExp state [rootExp]


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
removeMultiLines (t:toks) = t:(removeMultiLines toks)

dropCommentBody :: [Token] -> [Token]
dropCommentBody [] = error "Multiline comment was declared without an end!"

-- "*/" end of a multiline comment looks like this
dropCommentBody ((TokenTimes _):(TokenDiv _):toks) = removeMultiLines toks
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
