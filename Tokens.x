{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]
--$newLine = [\n]

tokens :-
  "--".*        ; 
  --$newLine       {\p -> \s -> TokenNewLine p}
  $white+         ;
  varSize        {\p -> \s -> TokenVarSize p} --new
  while          {\p ->  \s -> TokenWhile p} --new
  notEmpty       {\p -> \s -> TokenNotEmpty p} --new
  empty          {\p -> \s -> TokenEmpty p}
  streams        {\p -> \s -> TokenStreams p} --new
  take           {\p -> \s -> TokenTake p} --new
  drop           {\p -> \s -> TokenDrop p} --new
  print          {\p -> \s -> TokenPrint p} --new
  vars           {\p -> \s -> TokenVars p} --new
  length         {\p -> \s -> TokenLength p}
  true           {\p -> \s -> TokenTrue p}
  false          {\p -> \s -> TokenFalse p}
  \(             {\p -> \s -> TokenLParen p}
  \)             {\p -> \s -> TokenRParen p}
  \[             {\p -> \s -> TokenLSquare p}  
  \]             {\p -> \s -> TokenRSquare p} 
  \{             {\p -> \s -> TokenLCurly p}
  \}             {\p -> \s -> TokenRCurly p}
  \.             {\p -> \s -> TokenDot p} 
  \;             {\p -> \s -> TokenSeq p}
  "&&"           {\p -> \s -> TokenAnd p}
  "||"           {\p -> \s -> TokenOr p} 
  \!             {\p -> \s -> TokenNot p}
  "/="           {\p -> \s -> TokenDivEq p} 
  "*="           {\p -> \s -> TokenTimesEq p} 
  "-="           {\p -> \s -> TokenSubEq p} 
  "+="           {\p -> \s -> TokenPlusEq p} 
  "++"           {\p -> \s -> TokenInc p}
  "--"           {\p -> \s -> TokenDec p}
  \-             {\p -> \s -> TokenMinus p}
  \+             {\p -> \s -> TokenPlus p}
  \*             {\p -> \s -> TokenTimes p}
  \/             {\p -> \s -> TokenDiv p}
  \=             {\p -> \s -> TokenEq p}
  \>             {\p -> \s -> TokenGt p}
  \<             {\p -> \s -> TokenLt p}
  if             {\p -> \s -> TokenIf p}
  then           {\p -> \s -> TokenThen p}
  else           {\p -> \s -> TokenElse p}
  continue       {\p -> \s -> TokenContinue p}
  end            {\p -> \s -> TokenEnd p}
  for            {\p -> \s -> TokenFor p}
  $digit+        {\p -> \s -> TokenInt p (read s)}
  $alpha+        {\p -> \s -> TokenString p s} 

{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- The token type: 
data Token = 

  --TokenNewLine AlexPosn        |
  TokenVarSize AlexPosn        |
  TokenWhile AlexPosn          |
  TokenNotEmpty AlexPosn       |
  TokenEmpty AlexPosn          |
  TokenStreams AlexPosn        |
  TokenTake AlexPosn           |
  TokenDrop AlexPosn           |
  TokenPrint AlexPosn          |
  TokenVars AlexPosn           |
  TokenLength AlexPosn         |
  TokenTrue AlexPosn           |
  TokenFalse AlexPosn          |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
  TokenLSquare AlexPosn        |
  TokenRSquare AlexPosn        |
  TokenLCurly AlexPosn         |
  TokenRCurly AlexPosn         |
  TokenDot AlexPosn            |
  TokenColon AlexPosn          |
  TokenSeq AlexPosn            |
  TokenAnd AlexPosn            |
  TokenOr AlexPosn             |
  TokenNot AlexPosn            |
  TokenDivEq AlexPosn          |
  TokenTimesEq AlexPosn        | 
  TokenSubEq  AlexPosn         | 
  TokenPlusEq AlexPosn         |
  TokenInc AlexPosn            |
  TokenDec AlexPosn            |
  TokenMinus AlexPosn          | 
  TokenPlus AlexPosn           |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |
  TokenEq AlexPosn             | 
  TokenGt AlexPosn             |
  TokenLt AlexPosn             |  
  TokenIf AlexPosn             |
  TokenThen AlexPosn           |
  TokenElse AlexPosn           |
  TokenContinue AlexPosn       |
  TokenEnd AlexPosn            |
  TokenFor AlexPosn            |
  TokenInt AlexPosn Int        |
  TokenString AlexPosn String  

  deriving (Eq,Show) 

tokenPosn :: Token -> String
--tokenPosn (TokenNewLine  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVarSize  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNotEmpty  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEmpty  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStreams  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTake  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDrop  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVars  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquare  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDivEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimesEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlusEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInc (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDec (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenContinue (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenString (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}