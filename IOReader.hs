module IOReader where

import Control.Exception
import System.IO
import Control.Monad
import Text.Read
          
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
                              if(not $ checkIfAllDigits b) then error "Invalid values detected in stream input, only Ints are permitted!" else reader (addToResult result c)

--Determines whether all strings in the list evaluate to digits or not
checkIfAllDigits :: [String] -> Bool
checkIfAllDigits [] = True
checkIfAllDigits (x:xs)

    | val == Nothing = False
    | otherwise = checkIfAllDigits xs

    where val = readMaybe x :: Maybe Int

addToResult :: [[Int]] -> [[Int]] -> [[Int]]
addToResult [] c = c
addToResult result [] = result
--c [[1], [5]]
--result [[1,2], [5,6]]
--add to [1,2] 1 from c
--           result  c
addToResult (x:xs) (y:ys) = (x ++ y) : addToResult xs ys                         
