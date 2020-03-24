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
happyExpList = Happy_Data_Array.listArray (0,175) ([0,0,480,2,0,15360,64,2048,0,0,0,4096,0,32768,0,0,0,16,0,0,128,0,0,0,0,0,0,512,0,0,0,0,16444,0,8256,768,19,0,0,512,0,0,16384,0,0,0,8,0,0,0,128,0,0,4096,0,0,0,3584,31,0,12304,0,0,0,1032,24672,2,32768,3072,64,16,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,16384,0,0,0,0,2,0,0,0,0,0,8192,0,0,0,512,6145,152,16384,32,4867,0,4096,0,0,32768,3072,64,0,32784,2049,0,512,48,1,16384,1536,32,0,32,0,0,1280,32792,0,40960,768,16,64,0,0,2048,632,0,0,0,32,0,0,12290,256,0,64,8198,0,2048,192,4,0,6145,128,0,32,4099,0,0,1024,0,34304,1,0,0,32784,2049,0,1560,0,0,16384,1536,32,0,49160,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,384,8,0,0,0,0,0,0,0,0,480,2,0,0,128,64,0,0,2048,0,0,0,8,0,0,0,0,0,1024,0,0,0,18,0,0,24576,24,0,0,780,0,0,24960,0,0,12288,12,0,32,0,0,0,12480,0,0,6144,6,0,0,195,0,0,6240,0,0,3072,3,0,8,0,0,512,0,0,16384,0,0,0,0,0,0,8192,0,0,0,0,8304,0,2,0,0,64,0,0,2048,0,0,0,1,0,0,0,8192,64,0,0,0,0,0,0,0,32,0,0,1024,0,0,32768,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","IntExp","BExp","'$'","'!#'","'#'","'('","')'","'['","']'","'{'","'}'","'.'","':'","';'","'&&'","'||'","'!'","'*'","'/'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","length","empty","notEmpty","print","varSize","vars","streams","while","list","take","drop","if","else","true","false","continue","end","int","string","%eof"]
        bit_start = st * 53
        bit_end = (st + 1) * 53
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..52]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (38) = happyShift action_3
action_0 (39) = happyShift action_4
action_0 (40) = happyShift action_5
action_0 (41) = happyShift action_6
action_0 (50) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_3
action_1 (39) = happyShift action_4
action_1 (40) = happyShift action_5
action_1 (41) = happyShift action_6
action_1 (50) = happyShift action_7
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_9
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (30) = happyShift action_13
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_12
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (12) = happyShift action_11
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (10) = happyShift action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_12

action_8 (18) = happyShift action_9
action_8 (53) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (38) = happyShift action_3
action_9 (39) = happyShift action_4
action_9 (40) = happyShift action_5
action_9 (41) = happyShift action_6
action_9 (50) = happyShift action_7
action_9 (4) = happyGoto action_26
action_9 _ = happyReduce_2

action_10 (21) = happyShift action_19
action_10 (28) = happyShift action_20
action_10 (39) = happyShift action_21
action_10 (40) = happyShift action_22
action_10 (47) = happyShift action_23
action_10 (48) = happyShift action_24
action_10 (51) = happyShift action_25
action_10 (5) = happyGoto action_17
action_10 (6) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (51) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (51) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (51) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_3

action_15 (13) = happyShift action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_43
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (21) = happyShift action_35
action_17 (22) = happyShift action_36
action_17 (23) = happyShift action_37
action_17 (28) = happyShift action_38
action_17 (29) = happyShift action_39
action_17 (30) = happyShift action_40
action_17 (31) = happyShift action_41
action_17 (32) = happyShift action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_32
action_18 (19) = happyShift action_33
action_18 (20) = happyShift action_34
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (21) = happyShift action_19
action_19 (28) = happyShift action_20
action_19 (39) = happyShift action_21
action_19 (40) = happyShift action_22
action_19 (47) = happyShift action_23
action_19 (48) = happyShift action_24
action_19 (51) = happyShift action_25
action_19 (5) = happyGoto action_17
action_19 (6) = happyGoto action_31
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (28) = happyShift action_20
action_20 (39) = happyShift action_21
action_20 (40) = happyShift action_30
action_20 (51) = happyShift action_25
action_20 (5) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_25

action_24 _ = happyReduce_26

action_25 _ = happyReduce_18

action_26 (18) = happyShift action_9
action_26 _ = happyReduce_1

action_27 (51) = happyShift action_67
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (51) = happyShift action_66
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (22) = happyShift action_36
action_29 (23) = happyShift action_37
action_29 (28) = happyShift action_38
action_29 (29) = happyShift action_39
action_29 _ = happyReduce_17

action_30 (12) = happyShift action_65
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (19) = happyShift action_33
action_31 (20) = happyShift action_34
action_31 _ = happyReduce_24

action_32 (14) = happyShift action_64
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (21) = happyShift action_19
action_33 (28) = happyShift action_20
action_33 (39) = happyShift action_21
action_33 (40) = happyShift action_22
action_33 (47) = happyShift action_23
action_33 (48) = happyShift action_24
action_33 (51) = happyShift action_25
action_33 (5) = happyGoto action_17
action_33 (6) = happyGoto action_63
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (21) = happyShift action_19
action_34 (28) = happyShift action_20
action_34 (39) = happyShift action_21
action_34 (40) = happyShift action_22
action_34 (47) = happyShift action_23
action_34 (48) = happyShift action_24
action_34 (51) = happyShift action_25
action_34 (5) = happyGoto action_17
action_34 (6) = happyGoto action_62
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (30) = happyShift action_61
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (28) = happyShift action_20
action_36 (39) = happyShift action_21
action_36 (40) = happyShift action_30
action_36 (51) = happyShift action_25
action_36 (5) = happyGoto action_60
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_20
action_37 (39) = happyShift action_21
action_37 (40) = happyShift action_30
action_37 (51) = happyShift action_25
action_37 (5) = happyGoto action_59
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (28) = happyShift action_20
action_38 (39) = happyShift action_21
action_38 (40) = happyShift action_30
action_38 (51) = happyShift action_25
action_38 (5) = happyGoto action_58
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_20
action_39 (39) = happyShift action_21
action_39 (40) = happyShift action_30
action_39 (51) = happyShift action_25
action_39 (5) = happyGoto action_57
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (30) = happyShift action_56
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (28) = happyShift action_20
action_41 (30) = happyShift action_55
action_41 (39) = happyShift action_21
action_41 (40) = happyShift action_30
action_41 (51) = happyShift action_25
action_41 (5) = happyGoto action_54
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (28) = happyShift action_20
action_42 (30) = happyShift action_53
action_42 (39) = happyShift action_21
action_42 (40) = happyShift action_30
action_42 (51) = happyShift action_25
action_42 (5) = happyGoto action_52
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (16) = happyShift action_51
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_45
action_44 (24) = happyShift action_46
action_44 (25) = happyShift action_47
action_44 (26) = happyShift action_48
action_44 (27) = happyShift action_49
action_44 (30) = happyShift action_50
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (37) = happyShift action_82
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (28) = happyShift action_20
action_46 (39) = happyShift action_21
action_46 (40) = happyShift action_30
action_46 (51) = happyShift action_25
action_46 (5) = happyGoto action_81
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (28) = happyShift action_20
action_47 (39) = happyShift action_21
action_47 (40) = happyShift action_30
action_47 (51) = happyShift action_25
action_47 (5) = happyGoto action_80
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (28) = happyShift action_20
action_48 (39) = happyShift action_21
action_48 (40) = happyShift action_30
action_48 (51) = happyShift action_25
action_48 (5) = happyGoto action_79
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (28) = happyShift action_20
action_49 (39) = happyShift action_21
action_49 (40) = happyShift action_30
action_49 (51) = happyShift action_25
action_49 (5) = happyGoto action_78
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (28) = happyShift action_20
action_50 (39) = happyShift action_21
action_50 (40) = happyShift action_30
action_50 (51) = happyShift action_25
action_50 (5) = happyGoto action_77
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (44) = happyShift action_76
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (22) = happyShift action_36
action_52 (23) = happyShift action_37
action_52 (28) = happyShift action_38
action_52 (29) = happyShift action_39
action_52 _ = happyReduce_28

action_53 (28) = happyShift action_20
action_53 (39) = happyShift action_21
action_53 (40) = happyShift action_30
action_53 (51) = happyShift action_25
action_53 (5) = happyGoto action_75
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (22) = happyShift action_36
action_54 (23) = happyShift action_37
action_54 (28) = happyShift action_38
action_54 (29) = happyShift action_39
action_54 _ = happyReduce_27

action_55 (28) = happyShift action_20
action_55 (39) = happyShift action_21
action_55 (40) = happyShift action_30
action_55 (51) = happyShift action_25
action_55 (5) = happyGoto action_74
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_20
action_56 (39) = happyShift action_21
action_56 (40) = happyShift action_30
action_56 (51) = happyShift action_25
action_56 (5) = happyGoto action_73
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (22) = happyShift action_36
action_57 (23) = happyShift action_37
action_57 (28) = happyShift action_38
action_57 (29) = happyShift action_39
action_57 _ = happyReduce_15

action_58 (22) = happyShift action_36
action_58 (23) = happyShift action_37
action_58 (28) = happyShift action_38
action_58 (29) = happyShift action_39
action_58 _ = happyReduce_16

action_59 (22) = happyShift action_36
action_59 (23) = happyShift action_37
action_59 (28) = happyShift action_38
action_59 (29) = happyShift action_39
action_59 _ = happyReduce_14

action_60 (22) = happyShift action_36
action_60 (23) = happyShift action_37
action_60 (28) = happyShift action_38
action_60 (29) = happyShift action_39
action_60 _ = happyReduce_13

action_61 (28) = happyShift action_20
action_61 (39) = happyShift action_21
action_61 (40) = happyShift action_30
action_61 (51) = happyShift action_25
action_61 (5) = happyGoto action_72
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (19) = happyShift action_33
action_62 (20) = happyShift action_34
action_62 _ = happyReduce_23

action_63 (19) = happyShift action_33
action_63 (20) = happyShift action_34
action_63 _ = happyReduce_22

action_64 (38) = happyShift action_3
action_64 (39) = happyShift action_4
action_64 (40) = happyShift action_5
action_64 (41) = happyShift action_6
action_64 (50) = happyShift action_7
action_64 (4) = happyGoto action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (51) = happyShift action_70
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (13) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (13) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (16) = happyShift action_87
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_19

action_70 (13) = happyShift action_86
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (15) = happyShift action_85
action_71 (18) = happyShift action_9
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_36
action_72 (23) = happyShift action_37
action_72 (28) = happyShift action_38
action_72 (29) = happyShift action_39
action_72 _ = happyReduce_32

action_73 (22) = happyShift action_36
action_73 (23) = happyShift action_37
action_73 (28) = happyShift action_38
action_73 (29) = happyShift action_39
action_73 _ = happyReduce_31

action_74 (22) = happyShift action_36
action_74 (23) = happyShift action_37
action_74 (28) = happyShift action_38
action_74 (29) = happyShift action_39
action_74 _ = happyReduce_29

action_75 (22) = happyShift action_36
action_75 (23) = happyShift action_37
action_75 (28) = happyShift action_38
action_75 (29) = happyShift action_39
action_75 _ = happyReduce_30

action_76 (10) = happyShift action_84
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (22) = happyShift action_36
action_77 (23) = happyShift action_37
action_77 (28) = happyShift action_38
action_77 (29) = happyShift action_39
action_77 _ = happyReduce_5

action_78 (22) = happyShift action_36
action_78 (23) = happyShift action_37
action_78 (28) = happyShift action_38
action_78 (29) = happyShift action_39
action_78 _ = happyReduce_8

action_79 (22) = happyShift action_36
action_79 (23) = happyShift action_37
action_79 (28) = happyShift action_38
action_79 (29) = happyShift action_39
action_79 _ = happyReduce_9

action_80 (22) = happyShift action_36
action_80 (23) = happyShift action_37
action_80 (28) = happyShift action_38
action_80 (29) = happyShift action_39
action_80 _ = happyReduce_6

action_81 (22) = happyShift action_36
action_81 (23) = happyShift action_37
action_81 (28) = happyShift action_38
action_81 (29) = happyShift action_39
action_81 _ = happyReduce_7

action_82 (10) = happyShift action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (11) = happyShift action_94
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (11) = happyShift action_93
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_4

action_86 (16) = happyShift action_92
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (34) = happyShift action_88
action_87 (35) = happyShift action_89
action_87 (36) = happyShift action_90
action_87 (43) = happyShift action_91
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (10) = happyShift action_98
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (10) = happyShift action_97
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (10) = happyShift action_96
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (10) = happyShift action_95
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (34) = happyShift action_88
action_92 (43) = happyShift action_91
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_11

action_94 _ = happyReduce_10

action_95 (11) = happyShift action_102
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (11) = happyShift action_101
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (11) = happyShift action_100
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (11) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_21

action_100 _ = happyReduce_34

action_101 _ = happyReduce_33

action_102 _ = happyReduce_20

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

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_3))
	_
	_
	 =  HappyAbsSyn4
		 (VarSize happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 7 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (SetVal happy_var_3 happy_var_6
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
		 (TimesEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 4 happyReduction_7
happyReduction_7 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (DivEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (AddEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 6 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (SubEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 8 4 happyReduction_10
happyReduction_10 (_ `HappyStk`
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

happyReduce_11 = happyReduce 8 4 happyReduction_11
happyReduction_11 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (DropFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn4
		 (EndProgram
	)

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Add happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Neg happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (DataInt happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 5 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetVal happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 8 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
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

happyReduce_21 = happyReduce 8 5 happyReduction_21
happyReduction_21 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetLength happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  6 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn6
		 (DataBool True
	)

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn6
		 (DataBool False
	)

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 6 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 6 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 6 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 6 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 8 6 happyReduction_33
happyReduction_33 (_ `HappyStk`
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

happyReduce_34 = happyReduce 8 6 happyReduction_34
happyReduction_34 (_ `HappyStk`
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
	action 53 53 notHappyAtAll (HappyState action) sts stk []

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
	TokenDrop _ -> cont 44;
	TokenIf _ -> cont 45;
	TokenElse _ -> cont 46;
	TokenTrue _ -> cont 47;
	TokenFalse _ -> cont 48;
	TokenContinue _ -> cont 49;
	TokenEnd _ -> cont 50;
	TokenInt _ happy_dollar_dollar -> cont 51;
	TokenString _ happy_dollar_dollar -> cont 52;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 53 tk tks = happyError' (tks, explist)
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

data Exp = Seq Exp Exp
         | EndExp Exp
         | VarSize Int
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
