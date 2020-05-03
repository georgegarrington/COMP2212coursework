{ 
module Grammar where 
import Tokens 
}

%name parse 
%tokentype { Token } 
%error { parseError }
%token 
    
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 
    '['     { TokenLSquare _ } 
    ']'     { TokenRSquare _ } 
    '{'     { TokenLCurly _ }
    '}'     { TokenRCurly _ }
    '.'     { TokenDot _ }
    ','     { TokenComma _ }
    ';'     { TokenSeq _ }
    '&&'    { TokenAnd _ }
    '||'    { TokenOr _ }
    '!'     { TokenNot _ }
    '*'     { TokenTimes _ }
    '/'     { TokenDiv _ }
    '%'     { TokenMod _ }
    '^'     { TokenExp _ }
    '-'     { TokenMinus _ }
    '+'     { TokenPlus _ }
    '='     { TokenEq _ }
    '>'     { TokenGt _ }
    '<'     { TokenLt _ }
    maxOf   { TokenMaxOf _ }
    minOf   { TokenMinOf _ }
    length  { TokenLength _ }
    empty   { TokenEmpty _ }
    print   { TokenPrint _ }
    streams { TokenStreams _ }
    while   { TokenWhile _ }
    for     { TokenFor _ }
    take    { TokenTake _ }
    drop    { TokenDrop _ }
    peek    { TokenPeek _ }
    if      { TokenIf _ } 
    else    { TokenElse _ } 
    true    { TokenTrue _ }
    false   { TokenFalse _ }
    end     { TokenEnd _ }
    nothing { TokenNothing _ }
    int     { TokenInt _ $$ } 
    string  { TokenString _ $$ }

%left '&&' '||'
%left '!'
%left '+' '-'
%left '*' '/' '%'
%left '^'
%left ';'
%left NEG
%left BRAC
%% 

OuterExp : Exp ';' OuterExp {Seq $1 $3}
        | Exp ';' {$1}

Exp : for '(' ExpList ';' BExp ';' ExpList ')' '{'OuterExp'}' {For $3 $5 $7 $10}
     | while '('BExp')' '{'OuterExp'}' {While $3 $6}
     | if '('BExp')' '{'OuterExp'}' else '{'OuterExp'}' {IfEl $3 $6 $10}
     | string '+''+' {IncVar $1}
     | string '-''-' {DecVar $1}
     | string '=' IntExp {SetVar $1 $3}
     | string '*''=' IntExp {TimesEq $1 $4}
     | string '/''=' IntExp {DivEq $1 $4}
     | string '+''=' IntExp {AddEq $1 $4}
     | string '-''=' IntExp {SubEq $1 $4} 
     | print '(' ArgList ')' {PrintAll $3}
     | streams '['int']''.'drop '('int')' {DropFrom $3 $8}
     | nothing {DataNothing}
     | end {EndProgram}
    
ExpList : Exp ',' ExpList {ExpListNode $1 $3}
    | Exp {ExpEndNode $1}

ArgList : IntExp ',' ArgList {ArgListNode $1 $3}
        | IntExp {ArgEndNode $1}

--This will always evaluate to an int, it is an int "type"
IntExp : '(' IntExp ')' %prec BRAC {$2}
    | IntExp '*' IntExp {Mul $1 $3}
    | IntExp '/' IntExp {Div $1 $3}
    | IntExp '+' IntExp {Add $1 $3}
    | IntExp '-' IntExp {Sub $1 $3}
    | IntExp '%' IntExp {Mod $1 $3}
    | IntExp '^' IntExp {Expo $1 $3}
    | maxOf '('IntExp','IntExp')' {Max $3 $5}
    | minOf '('IntExp','IntExp')' {Min $3 $5}
    | '-' IntExp %prec NEG {Neg $2}
    | int {DataInt $1}
    | string {GetVar $1}
    | streams '['int']' '.' take {TakeFrom $3}
    | streams '['int']' '.' length {GetLength $3}
    | streams '['int']' '.' peek {PeekFrom $3}

--This will always evaluate to a boolean, it is a boolean "type"
BExp : '(' BExp ')' %prec BRAC {$2}
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
    | streams '['int']''.' empty {StreamEmpty $3}

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp = Seq Exp Exp
         | For ExpList BExp ExpList Exp
         | While BExp Exp
         | IfEl BExp Exp Exp
         | IncVar String
         | DecVar String
         | SetVar String IntExp
         | TimesEq String IntExp
         | DivEq String IntExp
         | AddEq String IntExp
         | SubEq String IntExp
         | PrintAll ArgList
         | DropFrom Int Int
         | DataNothing
         | EndProgram
         deriving (Show, Read)

--A list of expressions seperated by commas, used for increment and intialisation steps in a for loop
data ExpList = ExpListNode Exp ExpList    
            | ExpEndNode Exp
            deriving (Show, Read)

--A list of int expressions used by the printAll method
data ArgList = ArgListNode IntExp ArgList
             | ArgEndNode IntExp
             deriving (Show, Read)

data IntExp = Mul IntExp IntExp
         | Div IntExp IntExp
         | Add IntExp IntExp
         | Sub IntExp IntExp 
         | Expo IntExp IntExp
         | Mod IntExp IntExp
         | Max IntExp IntExp
         | Min IntExp IntExp
         | Neg IntExp
         | DataInt Int
         | GetVar String
         | TakeFrom Int
         | GetLength Int
         | PeekFrom Int
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
          deriving (Show, Read)

} 