{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]
$newLine = [\n]

tokens :-
  "--".*        ; 
  $newLine       {\p -> \s -> TokenNewLine p}
  \$             {\p -> \s -> TokenDollar p} 
  "!#"           {\p -> \s -> TokenEndTag p}
  \#             {\p -> \s -> TokenTag p}
  \(             {\p -> \s -> TokenLParen p}
  \)             {\p -> \s -> TokenRParen p}
  \[             {\p -> \s -> TokenLSquare p}  
  \]             {\p -> \s -> TokenRSquare p}  
  \:             {\p -> \s -> TokenColon p} 
  "++"           {\p -> \s -> TokenAppend p}
  list           {\p -> \s -> TokenList p}   
  "&&"           {\p -> \s -> TokenAnd p}
  "||"           {\p -> \s -> TokenOr p} 
  \!             {\p -> \s -> TokenNot p}
  "/="           {\p -> \s -> TokenDivEq p} 
  "*="           {\p -> \s -> TokenTimesEq p} 
  "-="           {\p -> \s -> TokenSubEq p} 
  "+="           {\p -> \s -> TokenPlusEq p} 
  \-             {\p -> \s -> TokenMinus p}
  \+             {\p -> \s -> TokenPlus p}
  \*             {\p -> \s -> TokenTimes p}
  \=             {\p -> \s -> TokenEq p}
  \>             {\p -> \s -> TokenGt p}
  \<             {\p -> \s -> TokenLt p}
  if             {\p -> \s -> TokenIf p}
  then           {\p -> \s -> TokenThen p}
  else           {\p -> \s -> TokenElse p}
  continue       {\p -> \s -> TokenContinue p}
  end            {\p -> \s -> TokenEnd p}
  $digit+        {\p -> \s -> TokenInt p (read s)}
  $alpha+        {\p -> \s -> TokenString p s} 

{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- The token type: 
data Token = 

  TokenNewLine AlexPosn        |
  TokenDollar AlexPosn         |
  TokenEndTag AlexPosn         |
  TokenTag AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
  TokenLSquare AlexPosn        |
  TokenRSquare AlexPosn        |
  TokenColon AlexPosn          |
  TokenAppend AlexPosn         |
  TokenList AlexPosn           |
  TokenAnd AlexPosn            |
  TokenOr AlexPosn             |
  TokenNot AlexPosn            |
  TokenDivEq AlexPosn          |
  TokenTimesEq AlexPosn        | 
  TokenSubEq  AlexPosn         | 
  TokenPlusEq AlexPosn         |
  TokenMinus AlexPosn          | 
  TokenPlus AlexPosn           |
  TokenTimes AlexPosn          |
  TokenEq AlexPosn             | 
  TokenGt AlexPosn             |
  TokenLt AlexPosn             |  
  TokenIf AlexPosn             |
  TokenThen AlexPosn           |    
  TokenElse AlexPosn           |
  TokenContinue AlexPosn       |
  TokenEnd AlexPosn            |
  TokenInt AlexPosn Int        |
  TokenString AlexPosn String  

  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenNewLine  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDollar (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEndTag (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTag (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquare  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAppend (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenList (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDivEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimesEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlusEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenContinue (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenString (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}