{ 
module Grammar where 
import Tokens 
}

%name parse 
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
    '{'     { TokenLCurly _ }
    '}'     { TokenRCurly _ }
    '.'     { TokenDot _ }
    ':'     { TokenColon _ }
    ';'     { TokenSeq _ }
    '&&'    { TokenAnd _ }
    '||'    { TokenOr _ }
    '!'     { TokenNot _ }
    '*'     { TokenTimes _ }
    '/'     { TokenDiv _ }
    '/='    { TokenDivEq _ }
    '*='    { TokenTimesEq _ }
    '-='    { TokenSubEq _ }
    '+='    { TokenPlusEq _ }
    '-'     { TokenMinus _ }
    '+'     { TokenPlus _ }
    '='     { TokenEq _ }
    '>'     { TokenGt _ }
    '<'     { TokenLt _ }
    '++'    { TokenAppend _ }
    length  { TokenLength _ }
    empty   { TokenEmpty _ }
    notEmpty { TokenNotEmpty _ }
    print   { TokenPrint _ }
    varSize { TokenVarSize _ }
    vars    { TokenVars _ }
    streams { TokenStreams _ }
    while   { TokenWhile _ }
    list    { TokenList _ }
    take    { TokenTake _ }
    drop    { TokenDrop _ }
    if      { TokenIf _ } 
    else    { TokenElse _ } 
    true    { TokenTrue _ }
    false   { TokenFalse _ }
    continue    { TokenContinue _ }
    end     { TokenEnd _ }
    int     { TokenInt _ $$ } 
    string  { TokenString _ $$}

%left ';'
%left '&&' '||'
%left '!'
%left '+' '-'
%left '*' '/'
%% 


Exp : end {EndProgram}
     | while '(' BExp ')' '{' Exp '}' {While $3 $6}
     | varSize '=' int {VarSize $3}
     | vars '['int']' '=' IntExp {SetVal $3 $6}
     | vars '['int']' '*=' IntExp {TimesEq $3 $6}
     | vars '['int']' '/=' IntExp {DivEq $3 $6}
     | vars '['int']' '+=' IntExp {AddEq $3 $6}
     | vars '['int']' '-=' IntExp {SubEq $3 $6} 
     | vars '['int']' '.' print '('')' {PrintVar $3}
     | streams '['int']' '.' drop '('')' {DropFrom $3}
     | Exp ';' Exp {Seq $1 $3}
     | Exp ';' {Single $1}
    

--This will always evaluate to an int
IntExp : int {DataInt $1}
     | '(' IntExp ')' {$2}
     | IntExp '*' IntExp {Mul $1 $3}
     | IntExp '/' IntExp {Div $1 $3}
     | IntExp '+' IntExp {Add $1 $3}
     | IntExp '-' IntExp {Sub $1 $3}
     | '-' IntExp {Neg $2}
     | vars '['int']' {GetVal $3}
     | streams '['int']' '.' take '('')' {TakeFrom $3}
     | streams '['int']' '.' length '('')' {GetLength $3}


--This will always evaluate to a boolean
BExp : end {EndProgram}
     |'(' BExp ')' {$2}
     | BExp '&&' BExp {And $1 $3}
     | BExp '||' BExp {Or $1 $3}
     | '!' BExp {Not $2}
     | true {DataBool True}
     | false {DataBool False}
     | IntExp '>' IntExp {GThan $1 $3}
     | IntExp '<' IntExp {LThan $1 $3}
     | IntExp '>''=' IntExp {GThanEQ $1 $4}
     | IntExp '<''=' IntExp {LThanEQ $1 $4}
     | IntExp '=''=' IntExp {Equal $1 $4}
     | IntExp '!''=' IntExp {NEqual $1 $4}
     | streams '['int']''.' notEmpty '('')' {StreamNotEmpty $3}
     | streams '['int']''.' empty '('')' {StreamEmpty $3}

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))



data Exp = Seq Exp Exp
         | Single Exp
         | VarSize Int
         | IncVal Int
         | While BExp Exp
         | SetVal Int IntExp
         | TimesEq Int IntExp
         | DivEq Int IntExp
         | AddEq Int IntExp
         | SubEq Int IntExp
         | PrintVar Int
         | DropFrom Int
         | EndProgram
         deriving (Show, Read)

data IntExp = Mul IntExp IntExp
         | Div IntExp IntExp
         | Add IntExp IntExp
         | Sub IntExp IntExp 
         | Neg IntExp
         | DataInt Int
         | GetVal Int
         | TakeFrom Int
         | GetLength Int
            deriving (Show, Read)

data BExp = And BExp BExp
         | Or BExp BExp
         | Not BExp
         | DataBool Bool
         | GThan IntExp IntExp
         | LThan IntExp IntExp
         | GThanEQ IntExp IntExp
         | LThanEQ IntExp IntExp
         | Equal IntExp IntExp
         | NEqual IntExp IntExp
         | StreamEmpty Int
         | StreamNotEmpty Int
          deriving (Show, Read)

} 