{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { MDLToken } 
%error { parseError }
%token 
    Forward { TokenForward _ } 
    Rotate  { TokenRotate _ } 
    digit   { TokenDigit _ $$ } 
    int     { TokenInt _ $$ } 
    Check   { TokenCheck _ } 
    If      { TokenIf _ } 
    Then    { TokenThen _ } 
    Else    { TokenElse _ } 
    L       { TokenLeft  _  }
    R       { TokenRight _ } 
    ';'     { TokenSeq _ }
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 

%right Then
%right Else 
%right ';' 
%left 'Forward'
%left 'Rotate'
%% 
Exp : Forward int               { Forward $2 } 
    | Forward digit             { Forward $2 }
    | Rotate Dir                { Rotate $2 } 
    | Check digit               { Check $2 } 
    | If Exp Then Exp Else Exp  { Cond $2 $4 $6 } 
    | Exp ';' Exp               { Seq $1 $3 } 
    | '(' Exp ')'                   { $2 }

Dir : L         { LDir } 
    | R         { RDir } 

{ 
parseError :: [MDLToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))
data Dir = LDir | RDir deriving Show
data Exp = Forward Int
         | Rotate Dir 
         | Check Int
         | Cond Exp Exp Exp
         | Seq Exp Exp 
         deriving Show 

} 