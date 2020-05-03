{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,285) ([0,0,25148,1,0,35056,5,32,0,32768,0,0,0,8,0,0,8,0,0,32,0,0,128,0,0,0,0,0,0,0,0,0,58880,0,0,0,0,0,512,0,0,0,61440,1416,0,128,0,0,512,0,0,2560,0,0,12288,0,8192,8192,140,32792,33792,560,102,0,15360,354,16392,8968,1632,0,0,2048,128,12416,24578,0,0,25148,1,0,0,16384,0,0,0,63552,1,0,2,2242,384,8,8968,1536,32,0,0,128,0,0,2048,0,0,0,0,0,0,0,0,0,4,0,0,61440,63,0,12304,0,0,32,35873,6528,128,12420,26114,2048,0,0,0,0,0,0,0,0,0,64,0,0,512,0,0,12304,0,0,0,126,0,0,0,0,512,49664,32776,1,0,0,8192,8192,140,32792,32768,560,96,2,2242,384,32768,31,0,0,126,0,0,504,0,0,2016,0,2048,2048,35,8198,8192,140,32792,32768,560,96,2,2242,384,8,8968,1536,32,35872,6144,2048,0,0,512,49680,38920,2049,2112,24611,8198,8448,32908,25,0,36608,88,0,0,128,0,0,0,64,1023,0,256,3,0,8192,0,0,0,8192,0,0,32768,0,32768,32768,562,96,2,2250,384,512,0,0,0,0,2048,128,12416,24578,512,49664,32776,1,0,0,16384,32256,0,32768,32768,560,96,0,0,0,0,0,0,0,0,0,16384,504,0,0,2017,0,16384,0,0,0,0,2048,0,63488,1,0,2,2242,384,32768,31,0,32,35872,6144,128,12416,24578,512,49664,32776,1,0,35056,5,0,0,0,4,0,0,0,0,0,14336,0,0,0,0,0,0,0,0,0,0,25148,1,1920,0,0,7680,0,0,0,0,0,0,1,0,0,4,0,0,16,0,4096,0,0,0,0,25148,1,2,0,0,4,0,0,63488,1,0,57344,7,0,32768,31,0,0,126,0,128,0,0,32768,0,0,2048,2048,35,8198,8192,140,24,63489,1,0,57348,7,0,0,1024,5,0,0,2048,0,0,0,0,0,323,4096,0,0,0,0,16384,0,8,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,61440,1416,0,49152,5667,4096,0,0,16384,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","OuterExp","Exp","ExpList","ArgList","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","','","';'","'&&'","'||'","'!'","'*'","'/'","'%'","'^'","'-'","'+'","'='","'>'","'<'","maxOf","minOf","length","empty","print","streams","while","for","take","drop","peek","if","else","true","false","end","nothing","int","string","%eof"]
        bit_start = st * 50
        bit_end = (st + 1) * 50
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..49]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (35) = happyShift action_3
action_0 (36) = happyShift action_4
action_0 (37) = happyShift action_5
action_0 (38) = happyShift action_6
action_0 (42) = happyShift action_7
action_0 (46) = happyShift action_8
action_0 (47) = happyShift action_9
action_0 (49) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 (5) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (35) = happyShift action_3
action_1 (36) = happyShift action_4
action_1 (37) = happyShift action_5
action_1 (38) = happyShift action_6
action_1 (42) = happyShift action_7
action_1 (46) = happyShift action_8
action_1 (47) = happyShift action_9
action_1 (49) = happyShift action_10
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_24
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (10) = happyShift action_23
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_22
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_21
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (10) = happyShift action_20
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (10) = happyShift action_19
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_16

action_9 _ = happyReduce_15

action_10 (22) = happyShift action_14
action_10 (23) = happyShift action_15
action_10 (26) = happyShift action_16
action_10 (27) = happyShift action_17
action_10 (28) = happyShift action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (50) = happyAccept
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (18) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (35) = happyShift action_3
action_13 (36) = happyShift action_4
action_13 (37) = happyShift action_5
action_13 (38) = happyShift action_6
action_13 (42) = happyShift action_7
action_13 (46) = happyShift action_8
action_13 (47) = happyShift action_9
action_13 (49) = happyShift action_10
action_13 (4) = happyGoto action_25
action_13 (5) = happyGoto action_12
action_13 _ = happyReduce_2

action_14 (28) = happyShift action_52
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_51
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_49
action_16 (28) = happyShift action_50
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (27) = happyShift action_47
action_17 (28) = happyShift action_48
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_28
action_18 (26) = happyShift action_29
action_18 (31) = happyShift action_30
action_18 (32) = happyShift action_31
action_18 (36) = happyShift action_32
action_18 (48) = happyShift action_33
action_18 (49) = happyShift action_34
action_18 (8) = happyGoto action_46
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_38
action_19 (21) = happyShift action_39
action_19 (26) = happyShift action_29
action_19 (31) = happyShift action_30
action_19 (32) = happyShift action_31
action_19 (36) = happyShift action_40
action_19 (44) = happyShift action_41
action_19 (45) = happyShift action_42
action_19 (48) = happyShift action_33
action_19 (49) = happyShift action_34
action_19 (8) = happyGoto action_36
action_19 (9) = happyGoto action_45
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (35) = happyShift action_3
action_20 (36) = happyShift action_4
action_20 (37) = happyShift action_5
action_20 (38) = happyShift action_6
action_20 (42) = happyShift action_7
action_20 (46) = happyShift action_8
action_20 (47) = happyShift action_9
action_20 (49) = happyShift action_10
action_20 (5) = happyGoto action_43
action_20 (6) = happyGoto action_44
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyShift action_38
action_21 (21) = happyShift action_39
action_21 (26) = happyShift action_29
action_21 (31) = happyShift action_30
action_21 (32) = happyShift action_31
action_21 (36) = happyShift action_40
action_21 (44) = happyShift action_41
action_21 (45) = happyShift action_42
action_21 (48) = happyShift action_33
action_21 (49) = happyShift action_34
action_21 (8) = happyGoto action_36
action_21 (9) = happyGoto action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (48) = happyShift action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_28
action_23 (26) = happyShift action_29
action_23 (31) = happyShift action_30
action_23 (32) = happyShift action_31
action_23 (36) = happyShift action_32
action_23 (48) = happyShift action_33
action_23 (49) = happyShift action_34
action_23 (7) = happyGoto action_26
action_23 (8) = happyGoto action_27
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (35) = happyShift action_3
action_24 (36) = happyShift action_4
action_24 (37) = happyShift action_5
action_24 (38) = happyShift action_6
action_24 (42) = happyShift action_7
action_24 (46) = happyShift action_8
action_24 (47) = happyShift action_9
action_24 (49) = happyShift action_10
action_24 (4) = happyGoto action_25
action_24 (5) = happyGoto action_12
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_1

action_26 (11) = happyShift action_84
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (17) = happyShift action_83
action_27 (22) = happyShift action_57
action_27 (23) = happyShift action_58
action_27 (24) = happyShift action_59
action_27 (25) = happyShift action_60
action_27 (26) = happyShift action_61
action_27 (27) = happyShift action_62
action_27 _ = happyReduce_20

action_28 (10) = happyShift action_28
action_28 (26) = happyShift action_29
action_28 (31) = happyShift action_30
action_28 (32) = happyShift action_31
action_28 (36) = happyShift action_32
action_28 (48) = happyShift action_33
action_28 (49) = happyShift action_34
action_28 (8) = happyGoto action_82
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_28
action_29 (26) = happyShift action_29
action_29 (31) = happyShift action_30
action_29 (32) = happyShift action_31
action_29 (36) = happyShift action_32
action_29 (48) = happyShift action_33
action_29 (49) = happyShift action_34
action_29 (8) = happyGoto action_81
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_80
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_79
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_78
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_31

action_34 _ = happyReduce_32

action_35 (13) = happyShift action_77
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (21) = happyShift action_73
action_36 (22) = happyShift action_57
action_36 (23) = happyShift action_58
action_36 (24) = happyShift action_59
action_36 (25) = happyShift action_60
action_36 (26) = happyShift action_61
action_36 (27) = happyShift action_62
action_36 (28) = happyShift action_74
action_36 (29) = happyShift action_75
action_36 (30) = happyShift action_76
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_72
action_37 (19) = happyShift action_64
action_37 (20) = happyShift action_65
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_38
action_38 (21) = happyShift action_39
action_38 (26) = happyShift action_29
action_38 (31) = happyShift action_30
action_38 (32) = happyShift action_31
action_38 (36) = happyShift action_40
action_38 (44) = happyShift action_41
action_38 (45) = happyShift action_42
action_38 (48) = happyShift action_33
action_38 (49) = happyShift action_34
action_38 (8) = happyGoto action_70
action_38 (9) = happyGoto action_71
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_38
action_39 (21) = happyShift action_39
action_39 (26) = happyShift action_29
action_39 (31) = happyShift action_30
action_39 (32) = happyShift action_31
action_39 (36) = happyShift action_40
action_39 (44) = happyShift action_41
action_39 (45) = happyShift action_42
action_39 (48) = happyShift action_33
action_39 (49) = happyShift action_34
action_39 (8) = happyGoto action_36
action_39 (9) = happyGoto action_69
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_68
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_40

action_42 _ = happyReduce_41

action_43 (17) = happyShift action_67
action_43 _ = happyReduce_18

action_44 (18) = happyShift action_66
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (11) = happyShift action_63
action_45 (19) = happyShift action_64
action_45 (20) = happyShift action_65
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (22) = happyShift action_57
action_46 (23) = happyShift action_58
action_46 (24) = happyShift action_59
action_46 (25) = happyShift action_60
action_46 (26) = happyShift action_61
action_46 (27) = happyShift action_62
action_46 _ = happyReduce_8

action_47 _ = happyReduce_6

action_48 (10) = happyShift action_28
action_48 (26) = happyShift action_29
action_48 (31) = happyShift action_30
action_48 (32) = happyShift action_31
action_48 (36) = happyShift action_32
action_48 (48) = happyShift action_33
action_48 (49) = happyShift action_34
action_48 (8) = happyGoto action_56
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_7

action_50 (10) = happyShift action_28
action_50 (26) = happyShift action_29
action_50 (31) = happyShift action_30
action_50 (32) = happyShift action_31
action_50 (36) = happyShift action_32
action_50 (48) = happyShift action_33
action_50 (49) = happyShift action_34
action_50 (8) = happyGoto action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (10) = happyShift action_28
action_51 (26) = happyShift action_29
action_51 (31) = happyShift action_30
action_51 (32) = happyShift action_31
action_51 (36) = happyShift action_32
action_51 (48) = happyShift action_33
action_51 (49) = happyShift action_34
action_51 (8) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_28
action_52 (26) = happyShift action_29
action_52 (31) = happyShift action_30
action_52 (32) = happyShift action_31
action_52 (36) = happyShift action_32
action_52 (48) = happyShift action_33
action_52 (49) = happyShift action_34
action_52 (8) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (22) = happyShift action_57
action_53 (23) = happyShift action_58
action_53 (24) = happyShift action_59
action_53 (25) = happyShift action_60
action_53 (26) = happyShift action_61
action_53 (27) = happyShift action_62
action_53 _ = happyReduce_9

action_54 (22) = happyShift action_57
action_54 (23) = happyShift action_58
action_54 (24) = happyShift action_59
action_54 (25) = happyShift action_60
action_54 (26) = happyShift action_61
action_54 (27) = happyShift action_62
action_54 _ = happyReduce_10

action_55 (22) = happyShift action_57
action_55 (23) = happyShift action_58
action_55 (24) = happyShift action_59
action_55 (25) = happyShift action_60
action_55 (26) = happyShift action_61
action_55 (27) = happyShift action_62
action_55 _ = happyReduce_12

action_56 (22) = happyShift action_57
action_56 (23) = happyShift action_58
action_56 (24) = happyShift action_59
action_56 (25) = happyShift action_60
action_56 (26) = happyShift action_61
action_56 (27) = happyShift action_62
action_56 _ = happyReduce_11

action_57 (10) = happyShift action_28
action_57 (26) = happyShift action_29
action_57 (31) = happyShift action_30
action_57 (32) = happyShift action_31
action_57 (36) = happyShift action_32
action_57 (48) = happyShift action_33
action_57 (49) = happyShift action_34
action_57 (8) = happyGoto action_110
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_28
action_58 (26) = happyShift action_29
action_58 (31) = happyShift action_30
action_58 (32) = happyShift action_31
action_58 (36) = happyShift action_32
action_58 (48) = happyShift action_33
action_58 (49) = happyShift action_34
action_58 (8) = happyGoto action_109
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (10) = happyShift action_28
action_59 (26) = happyShift action_29
action_59 (31) = happyShift action_30
action_59 (32) = happyShift action_31
action_59 (36) = happyShift action_32
action_59 (48) = happyShift action_33
action_59 (49) = happyShift action_34
action_59 (8) = happyGoto action_108
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (10) = happyShift action_28
action_60 (26) = happyShift action_29
action_60 (31) = happyShift action_30
action_60 (32) = happyShift action_31
action_60 (36) = happyShift action_32
action_60 (48) = happyShift action_33
action_60 (49) = happyShift action_34
action_60 (8) = happyGoto action_107
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (10) = happyShift action_28
action_61 (26) = happyShift action_29
action_61 (31) = happyShift action_30
action_61 (32) = happyShift action_31
action_61 (36) = happyShift action_32
action_61 (48) = happyShift action_33
action_61 (49) = happyShift action_34
action_61 (8) = happyGoto action_106
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (10) = happyShift action_28
action_62 (26) = happyShift action_29
action_62 (31) = happyShift action_30
action_62 (32) = happyShift action_31
action_62 (36) = happyShift action_32
action_62 (48) = happyShift action_33
action_62 (49) = happyShift action_34
action_62 (8) = happyGoto action_105
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_104
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_38
action_64 (21) = happyShift action_39
action_64 (26) = happyShift action_29
action_64 (31) = happyShift action_30
action_64 (32) = happyShift action_31
action_64 (36) = happyShift action_40
action_64 (44) = happyShift action_41
action_64 (45) = happyShift action_42
action_64 (48) = happyShift action_33
action_64 (49) = happyShift action_34
action_64 (8) = happyGoto action_36
action_64 (9) = happyGoto action_103
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (10) = happyShift action_38
action_65 (21) = happyShift action_39
action_65 (26) = happyShift action_29
action_65 (31) = happyShift action_30
action_65 (32) = happyShift action_31
action_65 (36) = happyShift action_40
action_65 (44) = happyShift action_41
action_65 (45) = happyShift action_42
action_65 (48) = happyShift action_33
action_65 (49) = happyShift action_34
action_65 (8) = happyGoto action_36
action_65 (9) = happyGoto action_102
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_38
action_66 (21) = happyShift action_39
action_66 (26) = happyShift action_29
action_66 (31) = happyShift action_30
action_66 (32) = happyShift action_31
action_66 (36) = happyShift action_40
action_66 (44) = happyShift action_41
action_66 (45) = happyShift action_42
action_66 (48) = happyShift action_33
action_66 (49) = happyShift action_34
action_66 (8) = happyGoto action_36
action_66 (9) = happyGoto action_101
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (35) = happyShift action_3
action_67 (36) = happyShift action_4
action_67 (37) = happyShift action_5
action_67 (38) = happyShift action_6
action_67 (42) = happyShift action_7
action_67 (46) = happyShift action_8
action_67 (47) = happyShift action_9
action_67 (49) = happyShift action_10
action_67 (5) = happyGoto action_43
action_67 (6) = happyGoto action_100
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (48) = happyShift action_99
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_39

action_70 (11) = happyShift action_86
action_70 (21) = happyShift action_73
action_70 (22) = happyShift action_57
action_70 (23) = happyShift action_58
action_70 (24) = happyShift action_59
action_70 (25) = happyShift action_60
action_70 (26) = happyShift action_61
action_70 (27) = happyShift action_62
action_70 (28) = happyShift action_74
action_70 (29) = happyShift action_75
action_70 (30) = happyShift action_76
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (11) = happyShift action_98
action_71 (19) = happyShift action_64
action_71 (20) = happyShift action_65
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_97
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (28) = happyShift action_96
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (28) = happyShift action_95
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (10) = happyShift action_28
action_75 (26) = happyShift action_29
action_75 (28) = happyShift action_94
action_75 (31) = happyShift action_30
action_75 (32) = happyShift action_31
action_75 (36) = happyShift action_32
action_75 (48) = happyShift action_33
action_75 (49) = happyShift action_34
action_75 (8) = happyGoto action_93
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (10) = happyShift action_28
action_76 (26) = happyShift action_29
action_76 (28) = happyShift action_92
action_76 (31) = happyShift action_30
action_76 (32) = happyShift action_31
action_76 (36) = happyShift action_32
action_76 (48) = happyShift action_33
action_76 (49) = happyShift action_34
action_76 (8) = happyGoto action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (16) = happyShift action_90
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (48) = happyShift action_89
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (10) = happyShift action_28
action_79 (26) = happyShift action_29
action_79 (31) = happyShift action_30
action_79 (32) = happyShift action_31
action_79 (36) = happyShift action_32
action_79 (48) = happyShift action_33
action_79 (49) = happyShift action_34
action_79 (8) = happyGoto action_88
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (10) = happyShift action_28
action_80 (26) = happyShift action_29
action_80 (31) = happyShift action_30
action_80 (32) = happyShift action_31
action_80 (36) = happyShift action_32
action_80 (48) = happyShift action_33
action_80 (49) = happyShift action_34
action_80 (8) = happyGoto action_87
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_30

action_82 (11) = happyShift action_86
action_82 (22) = happyShift action_57
action_82 (23) = happyShift action_58
action_82 (24) = happyShift action_59
action_82 (25) = happyShift action_60
action_82 (26) = happyShift action_61
action_82 (27) = happyShift action_62
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (10) = happyShift action_28
action_83 (26) = happyShift action_29
action_83 (31) = happyShift action_30
action_83 (32) = happyShift action_31
action_83 (36) = happyShift action_32
action_83 (48) = happyShift action_33
action_83 (49) = happyShift action_34
action_83 (7) = happyGoto action_85
action_83 (8) = happyGoto action_27
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_13

action_85 _ = happyReduce_19

action_86 _ = happyReduce_21

action_87 (17) = happyShift action_122
action_87 (22) = happyShift action_57
action_87 (23) = happyShift action_58
action_87 (24) = happyShift action_59
action_87 (25) = happyShift action_60
action_87 (26) = happyShift action_61
action_87 (27) = happyShift action_62
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (17) = happyShift action_121
action_88 (22) = happyShift action_57
action_88 (23) = happyShift action_58
action_88 (24) = happyShift action_59
action_88 (25) = happyShift action_60
action_88 (26) = happyShift action_61
action_88 (27) = happyShift action_62
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (13) = happyShift action_120
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (40) = happyShift action_119
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (22) = happyShift action_57
action_91 (23) = happyShift action_58
action_91 (24) = happyShift action_59
action_91 (25) = happyShift action_60
action_91 (26) = happyShift action_61
action_91 (27) = happyShift action_62
action_91 _ = happyReduce_43

action_92 (10) = happyShift action_28
action_92 (26) = happyShift action_29
action_92 (31) = happyShift action_30
action_92 (32) = happyShift action_31
action_92 (36) = happyShift action_32
action_92 (48) = happyShift action_33
action_92 (49) = happyShift action_34
action_92 (8) = happyGoto action_118
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (22) = happyShift action_57
action_93 (23) = happyShift action_58
action_93 (24) = happyShift action_59
action_93 (25) = happyShift action_60
action_93 (26) = happyShift action_61
action_93 (27) = happyShift action_62
action_93 _ = happyReduce_42

action_94 (10) = happyShift action_28
action_94 (26) = happyShift action_29
action_94 (31) = happyShift action_30
action_94 (32) = happyShift action_31
action_94 (36) = happyShift action_32
action_94 (48) = happyShift action_33
action_94 (49) = happyShift action_34
action_94 (8) = happyGoto action_117
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (10) = happyShift action_28
action_95 (26) = happyShift action_29
action_95 (31) = happyShift action_30
action_95 (32) = happyShift action_31
action_95 (36) = happyShift action_32
action_95 (48) = happyShift action_33
action_95 (49) = happyShift action_34
action_95 (8) = happyGoto action_116
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (10) = happyShift action_28
action_96 (26) = happyShift action_29
action_96 (31) = happyShift action_30
action_96 (32) = happyShift action_31
action_96 (36) = happyShift action_32
action_96 (48) = happyShift action_33
action_96 (49) = happyShift action_34
action_96 (8) = happyGoto action_115
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (35) = happyShift action_3
action_97 (36) = happyShift action_4
action_97 (37) = happyShift action_5
action_97 (38) = happyShift action_6
action_97 (42) = happyShift action_7
action_97 (46) = happyShift action_8
action_97 (47) = happyShift action_9
action_97 (49) = happyShift action_10
action_97 (4) = happyGoto action_114
action_97 (5) = happyGoto action_12
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_36

action_99 (13) = happyShift action_113
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_17

action_101 (18) = happyShift action_112
action_101 (19) = happyShift action_64
action_101 (20) = happyShift action_65
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_38

action_103 _ = happyReduce_37

action_104 (35) = happyShift action_3
action_104 (36) = happyShift action_4
action_104 (37) = happyShift action_5
action_104 (38) = happyShift action_6
action_104 (42) = happyShift action_7
action_104 (46) = happyShift action_8
action_104 (47) = happyShift action_9
action_104 (49) = happyShift action_10
action_104 (4) = happyGoto action_111
action_104 (5) = happyGoto action_12
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (22) = happyShift action_57
action_105 (23) = happyShift action_58
action_105 (24) = happyShift action_59
action_105 (25) = happyShift action_60
action_105 _ = happyReduce_24

action_106 (22) = happyShift action_57
action_106 (23) = happyShift action_58
action_106 (24) = happyShift action_59
action_106 (25) = happyShift action_60
action_106 _ = happyReduce_25

action_107 _ = happyReduce_27

action_108 (25) = happyShift action_60
action_108 _ = happyReduce_26

action_109 (25) = happyShift action_60
action_109 _ = happyReduce_23

action_110 (25) = happyShift action_60
action_110 _ = happyReduce_22

action_111 (15) = happyShift action_130
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (35) = happyShift action_3
action_112 (36) = happyShift action_4
action_112 (37) = happyShift action_5
action_112 (38) = happyShift action_6
action_112 (42) = happyShift action_7
action_112 (46) = happyShift action_8
action_112 (47) = happyShift action_9
action_112 (49) = happyShift action_10
action_112 (5) = happyGoto action_43
action_112 (6) = happyGoto action_129
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (16) = happyShift action_128
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (15) = happyShift action_127
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (22) = happyShift action_57
action_115 (23) = happyShift action_58
action_115 (24) = happyShift action_59
action_115 (25) = happyShift action_60
action_115 (26) = happyShift action_61
action_115 (27) = happyShift action_62
action_115 _ = happyReduce_47

action_116 (22) = happyShift action_57
action_116 (23) = happyShift action_58
action_116 (24) = happyShift action_59
action_116 (25) = happyShift action_60
action_116 (26) = happyShift action_61
action_116 (27) = happyShift action_62
action_116 _ = happyReduce_46

action_117 (22) = happyShift action_57
action_117 (23) = happyShift action_58
action_117 (24) = happyShift action_59
action_117 (25) = happyShift action_60
action_117 (26) = happyShift action_61
action_117 (27) = happyShift action_62
action_117 _ = happyReduce_44

action_118 (22) = happyShift action_57
action_118 (23) = happyShift action_58
action_118 (24) = happyShift action_59
action_118 (25) = happyShift action_60
action_118 (26) = happyShift action_61
action_118 (27) = happyShift action_62
action_118 _ = happyReduce_45

action_119 (10) = happyShift action_126
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (16) = happyShift action_125
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (10) = happyShift action_28
action_121 (26) = happyShift action_29
action_121 (31) = happyShift action_30
action_121 (32) = happyShift action_31
action_121 (36) = happyShift action_32
action_121 (48) = happyShift action_33
action_121 (49) = happyShift action_34
action_121 (8) = happyGoto action_124
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (10) = happyShift action_28
action_122 (26) = happyShift action_29
action_122 (31) = happyShift action_30
action_122 (32) = happyShift action_31
action_122 (36) = happyShift action_32
action_122 (48) = happyShift action_33
action_122 (49) = happyShift action_34
action_122 (8) = happyGoto action_123
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (11) = happyShift action_139
action_123 (22) = happyShift action_57
action_123 (23) = happyShift action_58
action_123 (24) = happyShift action_59
action_123 (25) = happyShift action_60
action_123 (26) = happyShift action_61
action_123 (27) = happyShift action_62
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (11) = happyShift action_138
action_124 (22) = happyShift action_57
action_124 (23) = happyShift action_58
action_124 (24) = happyShift action_59
action_124 (25) = happyShift action_60
action_124 (26) = happyShift action_61
action_124 (27) = happyShift action_62
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (33) = happyShift action_133
action_125 (39) = happyShift action_135
action_125 (41) = happyShift action_136
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (48) = happyShift action_137
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_4

action_128 (33) = happyShift action_133
action_128 (34) = happyShift action_134
action_128 (39) = happyShift action_135
action_128 (41) = happyShift action_136
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (11) = happyShift action_132
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (43) = happyShift action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (14) = happyShift action_142
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (14) = happyShift action_141
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_34

action_134 _ = happyReduce_48

action_135 _ = happyReduce_33

action_136 _ = happyReduce_35

action_137 (11) = happyShift action_140
action_137 _ = happyFail (happyExpListPerState 137)

action_138 _ = happyReduce_29

action_139 _ = happyReduce_28

action_140 _ = happyReduce_14

action_141 (35) = happyShift action_3
action_141 (36) = happyShift action_4
action_141 (37) = happyShift action_5
action_141 (38) = happyShift action_6
action_141 (42) = happyShift action_7
action_141 (46) = happyShift action_8
action_141 (47) = happyShift action_9
action_141 (49) = happyShift action_10
action_141 (4) = happyGoto action_144
action_141 (5) = happyGoto action_12
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (35) = happyShift action_3
action_142 (36) = happyShift action_4
action_142 (37) = happyShift action_5
action_142 (38) = happyShift action_6
action_142 (42) = happyShift action_7
action_142 (46) = happyShift action_8
action_142 (47) = happyShift action_9
action_142 (49) = happyShift action_10
action_142 (4) = happyGoto action_143
action_142 (5) = happyGoto action_12
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (15) = happyShift action_146
action_143 _ = happyFail (happyExpListPerState 143)

action_144 (15) = happyShift action_145
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_3

action_146 _ = happyReduce_5

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
		 (happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 11 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (For happy_var_3 happy_var_5 happy_var_7 happy_var_10
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 11 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfEl happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 _
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (IncVar happy_var_1
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 _
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (DecVar happy_var_1
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (SetVar happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 5 happyReduction_9
happyReduction_9 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TimesEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 5 happyReduction_10
happyReduction_10 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DivEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 5 happyReduction_11
happyReduction_11 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AddEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 4 5 happyReduction_12
happyReduction_12 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (SubEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 5 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PrintAll happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 9 5 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_8)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DropFrom happy_var_3 happy_var_8
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn5
		 (DataNothing
	)

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (EndProgram
	)

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ExpListNode happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ExpEndNode happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (ArgListNode happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (ArgEndNode happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Div happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 6 8 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Max happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 6 8 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Min happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_2  8 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Neg happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  8 happyReduction_31
happyReduction_31 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (DataInt happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  8 happyReduction_32
happyReduction_32 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn8
		 (GetVar happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 8 happyReduction_33
happyReduction_33 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (TakeFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 8 happyReduction_34
happyReduction_34 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (GetLength happy_var_3
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 6 8 happyReduction_35
happyReduction_35 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PeekFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  9 happyReduction_39
happyReduction_39 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Not happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  9 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn9
		 (DataBool True
	)

happyReduce_41 = happySpecReduce_1  9 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn9
		 (DataBool False
	)

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  9 happyReduction_43
happyReduction_43 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyReduce 4 9 happyReduction_44
happyReduction_44 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 4 9 happyReduction_45
happyReduction_45 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 4 9 happyReduction_46
happyReduction_46 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_47 = happyReduce 4 9 happyReduction_47
happyReduction_47 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_48 = happyReduce 6 9 happyReduction_48
happyReduction_48 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (StreamEmpty happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 50 50 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLParen _ -> cont 10;
	TokenRParen _ -> cont 11;
	TokenLSquare _ -> cont 12;
	TokenRSquare _ -> cont 13;
	TokenLCurly _ -> cont 14;
	TokenRCurly _ -> cont 15;
	TokenDot _ -> cont 16;
	TokenComma _ -> cont 17;
	TokenSeq _ -> cont 18;
	TokenAnd _ -> cont 19;
	TokenOr _ -> cont 20;
	TokenNot _ -> cont 21;
	TokenTimes _ -> cont 22;
	TokenDiv _ -> cont 23;
	TokenMod _ -> cont 24;
	TokenExp _ -> cont 25;
	TokenMinus _ -> cont 26;
	TokenPlus _ -> cont 27;
	TokenEq _ -> cont 28;
	TokenGt _ -> cont 29;
	TokenLt _ -> cont 30;
	TokenMaxOf _ -> cont 31;
	TokenMinOf _ -> cont 32;
	TokenLength _ -> cont 33;
	TokenEmpty _ -> cont 34;
	TokenPrint _ -> cont 35;
	TokenStreams _ -> cont 36;
	TokenWhile _ -> cont 37;
	TokenFor _ -> cont 38;
	TokenTake _ -> cont 39;
	TokenDrop _ -> cont 40;
	TokenPeek _ -> cont 41;
	TokenIf _ -> cont 42;
	TokenElse _ -> cont 43;
	TokenTrue _ -> cont 44;
	TokenFalse _ -> cont 45;
	TokenEnd _ -> cont 46;
	TokenNothing _ -> cont 47;
	TokenInt _ happy_dollar_dollar -> cont 48;
	TokenString _ happy_dollar_dollar -> cont 49;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 50 tk tks = happyError' (tks, explist)
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
