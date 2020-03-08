{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]

tokens :-
$white+       ; 
  "--".*        ; 
  '\n'       {\p -> \s -> TokenNewLine p}
  \-             {\p -> \s -> TokenMinus p}
  \+             {\p -> \s -> TokenPlus p}
  $digit+        {\p -> \s -> TokenInt p (read s)}
  Check          {\p -> \s -> TokenCheck p }
  If             {\p -> \s -> TokenIf p }
  Then           {\p -> \s -> TokenThen p }
  Else           {\p -> \s -> TokenElse p }
  \(             {\p -> \s -> TokenLParen p }
  \)             {\p -> \s -> TokenRParen p }

{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- The token type: 
data Token = 
  TokenNewLine AlexPosn        |
  TokenMinus AlexPosn          |
  TokenPlus AlexPosn           |
  TokenForward AlexPosn        | 
  TokenRotate  AlexPosn        | 
  TokenDigit AlexPosn Int      |
  TokenInt AlexPosn Int        | 
  TokenCheck AlexPosn          |
  TokenIf AlexPosn             |
  TokenThen AlexPosn           |
  TokenElse AlexPosn           |
  TokenLeft AlexPosn           |
  TokenRight AlexPosn          |
  TokenSeq AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn      
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenForward (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDigit  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCheck  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLeft (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

}