{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,77) ([0,0,224,1,0,3584,16,256,0,0,64,0,0,1024,0,0,4096,0,0,0,0,0,0,0,0,0,0,1,0,0,0,3584,16,0,0,512,0,0,8192,0,0,0,2,0,3584,16,0,0,0,128,0,0,2048,0,0,8192,0,0,0,16,0,0,1024,0,0,16384,0,0,0,0,128,0,0,0,4,0,0,4110,8192,0,0,4096,0,0,0,1,0,0,32,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp2","Exp","'$'","'!#'","'#'","'('","')'","'['","']'","'{'","'}'","'.'","':'","';'","'&&'","'||'","'!'","'*'","'/'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","length","empty","notEmpty","print","varSize","vars","streams","while","list","take","drop","if","else","true","false","continue","end","int","string","%eof"]
        bit_start = st * 52
        bit_end = (st + 1) * 52
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..51]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (38) = happyShift action_3
action_0 (39) = happyShift action_4
action_0 (40) = happyShift action_5
action_0 (49) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_3
action_1 (39) = happyShift action_4
action_1 (40) = happyShift action_5
action_1 (49) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (17) = happyShift action_13
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_12
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (11) = happyShift action_11
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (9) = happyShift action_10
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_3

action_7 (52) = happyAccept
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (17) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (38) = happyShift action_3
action_9 (39) = happyShift action_4
action_9 (40) = happyShift action_5
action_9 (49) = happyShift action_6
action_9 (4) = happyGoto action_14
action_9 (5) = happyGoto action_8
action_9 _ = happyReduce_2

action_10 (50) = happyShift action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (50) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (50) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (38) = happyShift action_3
action_13 (39) = happyShift action_4
action_13 (40) = happyShift action_5
action_13 (49) = happyShift action_6
action_13 (4) = happyGoto action_14
action_13 (5) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_1

action_15 (12) = happyShift action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (10) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (15) = happyShift action_22
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (36) = happyShift action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (43) = happyShift action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (38) = happyShift action_3
action_23 (39) = happyShift action_4
action_23 (40) = happyShift action_5
action_23 (49) = happyShift action_6
action_23 (4) = happyGoto action_24
action_23 (5) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (14) = happyShift action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_30
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_4

action_30 _ = happyReduce_6

action_31 _ = happyReduce_5

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (EndExp happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn5
		 (EndProgram
	)

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 8 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PrintVar happy_var_3
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 8 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DropFrom happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenDollar _ -> cont 6;
	TokenEndTag _ -> cont 7;
	TokenTag _ -> cont 8;
	TokenLParen _ -> cont 9;
	TokenRParen _ -> cont 10;
	TokenLSquare _ -> cont 11;
	TokenRSquare _ -> cont 12;
	TokenLCurly _ -> cont 13;
	TokenRCurly _ -> cont 14;
	TokenDot _ -> cont 15;
	TokenColon _ -> cont 16;
	TokenSeq _ -> cont 17;
	TokenAnd _ -> cont 18;
	TokenOr _ -> cont 19;
	TokenNot _ -> cont 20;
	TokenTimes _ -> cont 21;
	TokenDiv _ -> cont 22;
	TokenDivEq _ -> cont 23;
	TokenTimesEq _ -> cont 24;
	TokenSubEq _ -> cont 25;
	TokenPlusEq _ -> cont 26;
	TokenMinus _ -> cont 27;
	TokenPlus _ -> cont 28;
	TokenEq _ -> cont 29;
	TokenGt _ -> cont 30;
	TokenLt _ -> cont 31;
	TokenAppend _ -> cont 32;
	TokenLength _ -> cont 33;
	TokenEmpty _ -> cont 34;
	TokenNotEmpty _ -> cont 35;
	TokenPrint _ -> cont 36;
	TokenVarSize _ -> cont 37;
	TokenVars _ -> cont 38;
	TokenStreams _ -> cont 39;
	TokenWhile _ -> cont 40;
	TokenList _ -> cont 41;
	TokenTake _ -> cont 42;
	TokenDrop _ -> cont 43;
	TokenIf _ -> cont 44;
	TokenElse _ -> cont 45;
	TokenTrue _ -> cont 46;
	TokenFalse _ -> cont 47;
	TokenContinue _ -> cont 48;
	TokenEnd _ -> cont 49;
	TokenInt _ happy_dollar_dollar -> cont 50;
	TokenString _ happy_dollar_dollar -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp2 = Seq Exp Exp | EndExp Exp

data Exp = While BExp Exp
         | VarSize Int
         | SetVal Int IntExp
         | TimesEq Int IntExp
         | DivEq Int IntExp
         | AddEq Int IntExp
         | SubEq Int IntExp
         | PrintVar Int
         | DropFrom Int
         | EndProgram
         deriving Show

--data IntExp = Mul IntExp IntExp
  --          | Div IntExp IntExp
    --        | Add IntExp IntExp
      --      | Sub IntExp IntExp 
        --    | Neg IntExp
          --  | DataInt Int
            --| GetVal Int
            --| TakeFrom Int
            --| GetLength Int
 --           deriving Show

--data BExp = And BExp BExp
   --       | Or BExp BExp
     --     | Not BExp
       --   | DataBool Bool
         -- | GThan IntExp IntExp
   --       | LThan IntExp IntExp
     --     | GThanEQ IntExp IntExp
       --   | LThanEQ IntExp IntExp
         -- | Equal IntExp IntExp
       --   | NEqual IntExp IntExp
         -- | StreamEmpty Int
          --| StreamNotEmpty Int
          --deriving Show
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc1900_0/ghc_2.h" #-}


























































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
