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
    if      { TokenIf _ } 
    else    { TokenElse _ } 
    true    { TokenTrue _ }
    false   { TokenFalse _ }
    continue    { TokenContinue _ }
    end     { TokenEnd _ }
    int     { TokenInt _ $$ } 
    string  { TokenString _ $$}

%% 

Exp : Exp ';' Exp {Seq $1 $3} --2 expressions after each other
    | Exp ';' {EndExp $1} --last expression in some code block
    | varSize '=' int ';' {VarSize $3} --number of variables required
    | while '(' BExp ')' '{' Exp '}' {While $2 $3} --while loop
    | if '(' BExp ')' '{' Exp '}' else '{' Exp '}' {Cond $2 $4 $6} --conditional expression
    | vars '['int']' '=' IntExp {SetVal $3 $6} --set the val of an index
    | vars '['int']' '.' print '('')' {PrintVar $3} --print the val of an index
    | end {EndProgram}

--Always evaluates to an int 
IntExp : IntExp '*' IntExp {Mul $1 $3}
      | IntExp '/' IntExp {Div $1 $3}
      | IntExp '+' IntExp {Plus $1 $3}
      | IntExp '-' IntExp {Sub $1 $3}
      | '-' IntExp {Neg $2}
      | streams '['int']' '.' take '('')' {TakeFrom $3}
      | vars '['int']' {GetIndex $3}
      | streams '['int ']' '.' length '(' ')' {StreamLength $3}
      | int {DataInt $1}

--Always evaluates to a boolean
BExp : true {DataBool True}
     | false {DataBool False}
     | BExp '&&' BExp {And $1 $3}
     | BExp '||' BExp {Or $1 $3}
     | '!' BExp {Not $2}
     | IntExp '<' IntExp {LThan $1 $3}
     | IntExp '>' IntExp {GThan $1 $3}
     | IntExp '<''=' IntExp {LTEQ $1 $4}
     | IntExp '>''=' IntExp {GTEQ $1 $4}
     | IntExp '=''=' IntExp {Eq $1 $4}
     | IntExp '!''=' IntExp {NEq $1 $4}
     | streams '[' int ']' '.' notEmpty '('')' {StreamNotEmpty $3}
     | streams '[' int ']' '.' empty '('')' {StreamEmpty $3}

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp = Seq Exp Exp
         | EndExp Exp
         | VarSize Int
         | While BExp Exp
         | Cond BExp Exp Exp
         | SetVal Int IntExp
         | PrintVar Int
         | EndProgram

data IntExp = Mul IntExp IntExp
            | Div IntExp IntExp
            | Plus IntExp IntExp
            | Sub IntExp IntExp
            | Neg IntExp
            | TakeFrom Int
            | GetIndex Int
            | StreamLength Int
            | DataInt Int

data BExp = DataBool Bool
          | And BExp BExp
          | Or BExp BExp
          | Not BExp
          | LThan IntExp IntExp
          | GThan IntExp IntExp
          | LTEQ IntExp IntExp
          | GTEQ IntExp IntExp
          | Eq IntExp IntExp
          | NEq IntExp IntExp
          | StreamNotEmpty Int
          | StreamEmpty Int

} 