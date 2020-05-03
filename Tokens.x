{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
$alpha = [a-zA-Z]

tokens :-

  $white+         ;
  "//".*          ; 
  while          {\p -> \s -> TokenWhile p}
  for            {\p -> \s -> TokenFor p }
  empty          {\p -> \s -> TokenEmpty p}
  streams        {\p -> \s -> TokenStreams p} 
  take           {\p -> \s -> TokenTake p} 
  drop           {\p -> \s -> TokenDrop p} 
  peek           {\p -> \s -> TokenPeek p} 
  print          {\p -> \s -> TokenPrint p} 
  printAll       {\p -> \s -> TokenPrintAll p}
  length         {\p -> \s -> TokenLength p}
  true           {\p -> \s -> TokenTrue p}
  false          {\p -> \s -> TokenFalse p}
  nothing        {\p -> \s -> TokenNothing p}
  maxOf          {\p -> \s -> TokenMaxOf p}
  minOf          {\p -> \s -> TokenMinOf p}
  \(             {\p -> \s -> TokenLParen p}
  \)             {\p -> \s -> TokenRParen p}
  \[             {\p -> \s -> TokenLSquare p}  
  \]             {\p -> \s -> TokenRSquare p} 
  \{             {\p -> \s -> TokenLCurly p}
  \}             {\p -> \s -> TokenRCurly p}
  \.             {\p -> \s -> TokenDot p} 
  \,             {\p -> \s -> TokenComma p} 
  \;             {\p -> \s -> TokenSeq p}
  "&&"           {\p -> \s -> TokenAnd p}
  "||"           {\p -> \s -> TokenOr p} 
  \!             {\p -> \s -> TokenNot p}
  \^             {\p -> \s -> TokenExp p}
  \-             {\p -> \s -> TokenMinus p}
  \+             {\p -> \s -> TokenPlus p}
  \*             {\p -> \s -> TokenTimes p}
  \/             {\p -> \s -> TokenDiv p}
  \%             {\p -> \s -> TokenMod p}
  \=             {\p -> \s -> TokenEq p}
  \>             {\p -> \s -> TokenGt p}
  \<             {\p -> \s -> TokenLt p}
  \"             {\p -> \s -> TokenQuote p}
  if             {\p -> \s -> TokenIf p}
  else           {\p -> \s -> TokenElse p}
  end            {\p -> \s -> TokenEnd p}
  $digit+        {\p -> \s -> TokenInt p (read s)}
  $alpha [$alpha $digit \_ \’]*   {\p -> \s -> TokenString p s}

{ 

data Token = 

  TokenWhile AlexPosn          |
  TokenFor AlexPosn            |
  TokenEmpty AlexPosn          |
  TokenStreams AlexPosn        |
  TokenTake AlexPosn           |
  TokenDrop AlexPosn           |
  TokenPeek AlexPosn           |
  TokenPrint AlexPosn          |
  TokenPrintAll AlexPosn       |
  TokenLength AlexPosn         |
  TokenTrue AlexPosn           |
  TokenFalse AlexPosn          |
  TokenNothing AlexPosn        |
  TokenMaxOf AlexPosn          |
  TokenMinOf AlexPosn          |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
  TokenLSquare AlexPosn        |
  TokenRSquare AlexPosn        |
  TokenLCurly AlexPosn         |
  TokenRCurly AlexPosn         |
  TokenDot AlexPosn            |
  TokenComma AlexPosn          |
  TokenColon AlexPosn          |
  TokenSeq AlexPosn            |
  TokenAnd AlexPosn            |
  TokenOr AlexPosn             |
  TokenNot AlexPosn            |
  TokenExp AlexPosn            |
  TokenMinus AlexPosn          | 
  TokenPlus AlexPosn           |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |
  TokenMod AlexPosn            |
  TokenEq AlexPosn             | 
  TokenGt AlexPosn             |
  TokenLt AlexPosn             |  
  TokenQuote AlexPosn          | --Not within our grammar, purely added so could use quotes in comments :)
  TokenIf AlexPosn             |
  TokenElse AlexPosn           |
  TokenEnd AlexPosn            |
  TokenInt AlexPosn Int        |
  TokenString AlexPosn String  
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenWhile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFor  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEmpty  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStreams  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTake  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDrop  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPeek  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNothing  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMaxOf  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinOf  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquare  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquare (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenExp (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMod (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenQuote (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenString (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}