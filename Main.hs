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
    rootExp <- return (parse $ (alexScanTokens string))
    evalExp state [rootExp]                