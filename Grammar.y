{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    
    '$'     { TokenDollar _ }
    '!#'    { TokenEndTag _ }
    '#'     { TokenTag _ }
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 
    '['     { TokenLSquare _ } 
    ']'     { TokenRSquare _ } 
    ':'     { TokenColon _ }
    '&&'    { TokenAnd _ }
    '||'    { TokenOr _ }
    '!'     { TokenNot _ }
    '/='    { TokenDivEq _ }
    '*='    { TokenTimesEq _ }
    '-='    { TokenTimSubEq _ }
    '+='    { TokenPlusEq _ }
    '-'     { TokenMinus _ }
    '+'     { TokenPlus _ }
    '='     { TokenEq _ }
    '>'     { TokenGt _ }
    '<'     { TokenLt _ }
    '++'    { TokenAppend _ }
    list    { TokenList _ }
    if      { TokenIf _ } 
    then    { TokenThen _ } 
    else    { TokenElse _ } 
    continue    { TokenContinue _ }
    end     { TokenEnd _ }
    int     { TokenInt _ $$ } 
    string  { TokenString _ $$}


    
%right Then
%right Else 
%% 

Exp : string ':' Type {Var $1 $3}
    | '#' string {Tag $2}
    
    |If Exp Then Exp Else Exp  { Cond $2 $4 $6 } 
    | '(' Exp ')'                   { $2 }

Type : '[' Type ']' {ListWithType $2}
    | List {TypeList}
    | Int {TypeInt}

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp = Cond Exp Exp Exp
        
         deriving Show 

} 