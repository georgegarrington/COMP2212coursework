import Tokens
import Grammar
import Evaluator
import System.Environment
import Control.Exception
import System.IO

main = do 

   [path] <- getArgs
   string <- readFile path
   print $ parse $ (alexScanTokens string)