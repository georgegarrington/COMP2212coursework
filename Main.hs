module Main where

import System.Environment
import Tokens
import Grammar
import Evaluator
import IOReader

main = do 

    [path] <- getArgs
    string <- readFile path
    streams <- reader []

    if(length streams == 0) then error "Please make sure you have provided stream data!" else do
   
    state <- return ([],streams)
    tokens <- return $ removeMultiLines $ alexScanTokens string
    rootExp <- return $ parse $ tokens
    evalExp state [rootExp]                

{-
Mutually recursive methods to remove all multiline comment tokens and the tokens between them. Could not 
manage to get alex to correctly tokenize "/*" or "*/" so instead pattern match using each 
characters' individual tokens which are also the tokens for multiplication and division
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