module Main where

import Evaluator
import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO

state1 :: EvalState
state1 = State [0,0,0] [[1,2,3,4],[5,6,7,8]]

main = do 

   [path] <- getArgs
   string <- readFile path
   Evaluator.evaluate state1 [parse $ (alexScanTokens string)]