{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,175) ([0,0,2400,1,0,38400,16,512,0,0,0,512,0,2048,0,0,8192,0,0,0,2,0,0,0,0,0,0,2,0,0,0,38400,16,4096,49160,608,0,129,9740,0,0,0,2,0,0,32,512,0,0,256,0,0,0,63600,0,16384,192,0,0,4096,49160,608,0,128,8204,2048,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,16384,192,0,0,0,0,0,512,0,0,0,2064,24768,2,33024,3072,38,0,0,512,0,0,8192,0,0,0,32768,0,0,0,0,0,0,512,0,0,0,8192,0,0,32768,3072,32,0,49160,512,0,128,8204,0,2048,192,2,0,2,0,0,49192,512,0,640,8204,32768,8192,0,0,0,0,0,0,4096,0,0,128,8204,0,6240,0,0,32768,3072,32,24576,24,0,0,128,8204,0,2048,192,2,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,3072,32,0,24576,265,0,0,8192,4096,0,0,0,1,0,0,0,0,0,0,0,0,0,0,2400,1,36,0,0,128,0,0,0,0,0,4096,0,0,0,36,0,0,24576,24,0,0,390,0,0,6240,0,0,34304,1,0,24576,24,0,32,0,0,1024,0,0,0,0,0,0,128,0,0,0,57344,64,0,0,4096,0,2,0,0,2,0,0,32,0,0,512,0,0,8192,0,0,0,0,512,4,0,0,0,1024,0,0,16384,0,0,0,4,0,0,64,0,0,0,0,2400,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","IntExp","BExp","'$'","'!#'","'#'","'('","')'","'['","']'","'{'","'}'","'.'","':'","';'","'&&'","'||'","'!'","'*'","'/'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","length","empty","notEmpty","print","varSize","vars","streams","while","list","take","if","else","true","false","continue","end","int","string","%eof"]
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
action_0 (41) = happyShift action_5
action_0 (44) = happyShift action_6
action_0 (49) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_3
action_1 (39) = happyShift action_4
action_1 (41) = happyShift action_5
action_1 (44) = happyShift action_6
action_1 (49) = happyShift action_7
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_9
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (30) = happyShift action_13
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_11
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (10) = happyShift action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_8

action_8 (18) = happyShift action_9
action_8 (52) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (38) = happyShift action_3
action_9 (39) = happyShift action_4
action_9 (41) = happyShift action_5
action_9 (44) = happyShift action_6
action_9 (49) = happyShift action_7
action_9 (4) = happyGoto action_26
action_9 _ = happyReduce_2

action_10 (21) = happyShift action_18
action_10 (28) = happyShift action_19
action_10 (39) = happyShift action_20
action_10 (40) = happyShift action_21
action_10 (46) = happyShift action_22
action_10 (47) = happyShift action_23
action_10 (50) = happyShift action_24
action_10 (5) = happyGoto action_16
action_10 (6) = happyGoto action_25
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_18
action_11 (28) = happyShift action_19
action_11 (39) = happyShift action_20
action_11 (40) = happyShift action_21
action_11 (46) = happyShift action_22
action_11 (47) = happyShift action_23
action_11 (50) = happyShift action_24
action_11 (5) = happyGoto action_16
action_11 (6) = happyGoto action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (50) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (50) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (18) = happyShift action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (21) = happyShift action_36
action_16 (22) = happyShift action_37
action_16 (23) = happyShift action_38
action_16 (28) = happyShift action_39
action_16 (29) = happyShift action_40
action_16 (30) = happyShift action_41
action_16 (31) = happyShift action_42
action_16 (32) = happyShift action_43
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_35
action_17 (19) = happyShift action_28
action_17 (20) = happyShift action_29
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (21) = happyShift action_18
action_18 (28) = happyShift action_19
action_18 (39) = happyShift action_20
action_18 (40) = happyShift action_21
action_18 (46) = happyShift action_22
action_18 (47) = happyShift action_23
action_18 (50) = happyShift action_24
action_18 (5) = happyGoto action_16
action_18 (6) = happyGoto action_34
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_19
action_19 (39) = happyShift action_20
action_19 (40) = happyShift action_33
action_19 (50) = happyShift action_24
action_19 (5) = happyGoto action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_18

action_23 _ = happyReduce_19

action_24 _ = happyReduce_17

action_25 (11) = happyShift action_27
action_25 (19) = happyShift action_28
action_25 (20) = happyShift action_29
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (18) = happyShift action_9
action_26 _ = happyReduce_1

action_27 (14) = happyShift action_64
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (21) = happyShift action_18
action_28 (28) = happyShift action_19
action_28 (39) = happyShift action_20
action_28 (40) = happyShift action_21
action_28 (46) = happyShift action_22
action_28 (47) = happyShift action_23
action_28 (50) = happyShift action_24
action_28 (5) = happyGoto action_16
action_28 (6) = happyGoto action_63
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (21) = happyShift action_18
action_29 (28) = happyShift action_19
action_29 (39) = happyShift action_20
action_29 (40) = happyShift action_21
action_29 (46) = happyShift action_22
action_29 (47) = happyShift action_23
action_29 (50) = happyShift action_24
action_29 (5) = happyGoto action_16
action_29 (6) = happyGoto action_62
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (50) = happyShift action_61
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (50) = happyShift action_60
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (22) = happyShift action_37
action_32 (23) = happyShift action_38
action_32 (28) = happyShift action_39
action_32 (29) = happyShift action_40
action_32 _ = happyReduce_13

action_33 (12) = happyShift action_59
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (19) = happyShift action_28
action_34 (20) = happyShift action_29
action_34 _ = happyReduce_22

action_35 (14) = happyShift action_58
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (30) = happyShift action_57
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_19
action_37 (39) = happyShift action_20
action_37 (40) = happyShift action_33
action_37 (50) = happyShift action_24
action_37 (5) = happyGoto action_56
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (28) = happyShift action_19
action_38 (39) = happyShift action_20
action_38 (40) = happyShift action_33
action_38 (50) = happyShift action_24
action_38 (5) = happyGoto action_55
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_19
action_39 (39) = happyShift action_20
action_39 (40) = happyShift action_33
action_39 (50) = happyShift action_24
action_39 (5) = happyGoto action_54
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (28) = happyShift action_19
action_40 (39) = happyShift action_20
action_40 (40) = happyShift action_33
action_40 (50) = happyShift action_24
action_40 (5) = happyGoto action_53
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (30) = happyShift action_52
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (28) = happyShift action_19
action_42 (30) = happyShift action_51
action_42 (39) = happyShift action_20
action_42 (40) = happyShift action_33
action_42 (50) = happyShift action_24
action_42 (5) = happyGoto action_50
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (28) = happyShift action_19
action_43 (30) = happyShift action_49
action_43 (39) = happyShift action_20
action_43 (40) = happyShift action_33
action_43 (50) = happyShift action_24
action_43 (5) = happyGoto action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_46
action_44 (30) = happyShift action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_3

action_46 (37) = happyShift action_75
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (28) = happyShift action_19
action_47 (39) = happyShift action_20
action_47 (40) = happyShift action_33
action_47 (50) = happyShift action_24
action_47 (5) = happyGoto action_74
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (22) = happyShift action_37
action_48 (23) = happyShift action_38
action_48 (28) = happyShift action_39
action_48 (29) = happyShift action_40
action_48 _ = happyReduce_23

action_49 (28) = happyShift action_19
action_49 (39) = happyShift action_20
action_49 (40) = happyShift action_33
action_49 (50) = happyShift action_24
action_49 (5) = happyGoto action_73
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_37
action_50 (23) = happyShift action_38
action_50 (28) = happyShift action_39
action_50 (29) = happyShift action_40
action_50 _ = happyReduce_24

action_51 (28) = happyShift action_19
action_51 (39) = happyShift action_20
action_51 (40) = happyShift action_33
action_51 (50) = happyShift action_24
action_51 (5) = happyGoto action_72
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (28) = happyShift action_19
action_52 (39) = happyShift action_20
action_52 (40) = happyShift action_33
action_52 (50) = happyShift action_24
action_52 (5) = happyGoto action_71
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (22) = happyShift action_37
action_53 (23) = happyShift action_38
action_53 (28) = happyShift action_39
action_53 (29) = happyShift action_40
action_53 _ = happyReduce_11

action_54 (22) = happyShift action_37
action_54 (23) = happyShift action_38
action_54 (28) = happyShift action_39
action_54 (29) = happyShift action_40
action_54 _ = happyReduce_12

action_55 (22) = happyShift action_37
action_55 (23) = happyShift action_38
action_55 (28) = happyShift action_39
action_55 (29) = happyShift action_40
action_55 _ = happyReduce_10

action_56 (22) = happyShift action_37
action_56 (23) = happyShift action_38
action_56 (28) = happyShift action_39
action_56 (29) = happyShift action_40
action_56 _ = happyReduce_9

action_57 (28) = happyShift action_19
action_57 (39) = happyShift action_20
action_57 (40) = happyShift action_33
action_57 (50) = happyShift action_24
action_57 (5) = happyGoto action_70
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (38) = happyShift action_3
action_58 (39) = happyShift action_4
action_58 (41) = happyShift action_5
action_58 (44) = happyShift action_6
action_58 (49) = happyShift action_7
action_58 (4) = happyGoto action_69
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (50) = happyShift action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (13) = happyShift action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (13) = happyShift action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (19) = happyShift action_28
action_62 (20) = happyShift action_29
action_62 _ = happyReduce_21

action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_29
action_63 _ = happyReduce_20

action_64 (38) = happyShift action_3
action_64 (39) = happyShift action_4
action_64 (41) = happyShift action_5
action_64 (44) = happyShift action_6
action_64 (49) = happyShift action_7
action_64 (4) = happyGoto action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (15) = happyShift action_80
action_65 (18) = happyShift action_9
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (16) = happyShift action_79
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_15

action_68 (13) = happyShift action_78
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (15) = happyShift action_77
action_69 (18) = happyShift action_9
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (22) = happyShift action_37
action_70 (23) = happyShift action_38
action_70 (28) = happyShift action_39
action_70 (29) = happyShift action_40
action_70 _ = happyReduce_28

action_71 (22) = happyShift action_37
action_71 (23) = happyShift action_38
action_71 (28) = happyShift action_39
action_71 (29) = happyShift action_40
action_71 _ = happyReduce_27

action_72 (22) = happyShift action_37
action_72 (23) = happyShift action_38
action_72 (28) = happyShift action_39
action_72 (29) = happyShift action_40
action_72 _ = happyReduce_26

action_73 (22) = happyShift action_37
action_73 (23) = happyShift action_38
action_73 (28) = happyShift action_39
action_73 (29) = happyShift action_40
action_73 _ = happyReduce_25

action_74 (22) = happyShift action_37
action_74 (23) = happyShift action_38
action_74 (28) = happyShift action_39
action_74 (29) = happyShift action_40
action_74 _ = happyReduce_6

action_75 (10) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (11) = happyShift action_87
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_4

action_78 (16) = happyShift action_86
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (34) = happyShift action_82
action_79 (35) = happyShift action_83
action_79 (36) = happyShift action_84
action_79 (43) = happyShift action_85
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (45) = happyShift action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (14) = happyShift action_92
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (10) = happyShift action_91
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (10) = happyShift action_90
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (10) = happyShift action_89
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (10) = happyShift action_88
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (34) = happyShift action_82
action_86 (43) = happyShift action_85
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_7

action_88 (11) = happyShift action_97
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (11) = happyShift action_96
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (11) = happyShift action_95
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (11) = happyShift action_94
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (38) = happyShift action_3
action_92 (39) = happyShift action_4
action_92 (41) = happyShift action_5
action_92 (44) = happyShift action_6
action_92 (49) = happyShift action_7
action_92 (4) = happyGoto action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (15) = happyShift action_98
action_93 (18) = happyShift action_9
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_16

action_95 _ = happyReduce_30

action_96 _ = happyReduce_29

action_97 _ = happyReduce_14

action_98 _ = happyReduce_5

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EndExp happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (VarSize happy_var_3
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 11 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Cond happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (SetVal happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 8 4 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintVar happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn4
		 (EndProgram
	)

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Neg happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 8 5 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TakeFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 5 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetIndex happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 5 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (StreamLength happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (DataInt happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn6
		 (DataBool True
	)

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn6
		 (DataBool False
	)

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 6 happyReduction_25
happyReduction_25 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LTEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 6 happyReduction_26
happyReduction_26 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GTEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 6 happyReduction_27
happyReduction_27 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Eq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 6 happyReduction_28
happyReduction_28 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 8 6 happyReduction_29
happyReduction_29 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamNotEmpty happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 8 6 happyReduction_30
happyReduction_30 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamEmpty happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenDollar _ -> cont 7;
	TokenEndTag _ -> cont 8;
	TokenTag _ -> cont 9;
	TokenLParen _ -> cont 10;
	TokenRParen _ -> cont 11;
	TokenLSquare _ -> cont 12;
	TokenRSquare _ -> cont 13;
	TokenLCurly _ -> cont 14;
	TokenRCurly _ -> cont 15;
	TokenDot _ -> cont 16;
	TokenColon _ -> cont 17;
	TokenSeq _ -> cont 18;
	TokenAnd _ -> cont 19;
	TokenOr _ -> cont 20;
	TokenNot _ -> cont 21;
	TokenTimes _ -> cont 22;
	TokenDiv _ -> cont 23;
	TokenDivEq _ -> cont 24;
	TokenTimesEq _ -> cont 25;
	TokenSubEq _ -> cont 26;
	TokenPlusEq _ -> cont 27;
	TokenMinus _ -> cont 28;
	TokenPlus _ -> cont 29;
	TokenEq _ -> cont 30;
	TokenGt _ -> cont 31;
	TokenLt _ -> cont 32;
	TokenAppend _ -> cont 33;
	TokenLength _ -> cont 34;
	TokenEmpty _ -> cont 35;
	TokenNotEmpty _ -> cont 36;
	TokenPrint _ -> cont 37;
	TokenVarSize _ -> cont 38;
	TokenVars _ -> cont 39;
	TokenStreams _ -> cont 40;
	TokenWhile _ -> cont 41;
	TokenList _ -> cont 42;
	TokenTake _ -> cont 43;
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
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
