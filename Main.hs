module Main where

import Evaluator
import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO

state1 :: EvalState
state1 = State [0,0,0] [[1,2,3,4],[5,6,7,8]]

state2 :: EvalState
state2 = State [0,0,0,0,0] [[1,0,3],[2,7,5],[8,(-4),(-2)]]

state3 :: EvalState
state3 = State [0] [[1,2,3,4,5,6],[5,4,3,2,1,0]]

state4 :: EvalState 
state4 = State [0,0,0] [[1,2,3,4,5,6]]

state5 :: EvalState
state5 = State [0,0] [[1,2,3,4]]

main = do 

   [path] <- getArgs
   string <- readFile path
   Evaluator.evaluate state4 [parse $ (alexScanTokens string)]

{-

varSize = 5;

while(streams[0].length() >= 3){

    vars[0] = streams[0].take(); --A1
    vars[1] = streams[0].take(); --A2
    vars[2] = streams[0].take(); --A3

    vars[3] = 2 * vars[1]; //second element to print
    vars[4] = 3 * vars[0] - 1; //third element to print

    vars[2].print();
    vars[3].print();
    vars[4].print();

};

end;

-}