{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,237) ([0,0,34032,2,0,10112,20,32,0,0,1,0,0,8,0,0,256,0,0,512,0,0,4096,0,0,0,0,0,0,0,3230,0,8192,0,0,0,0,2528,2053,16384,1024,16432,0,8194,384,2,16,3073,16,128,24584,128,1024,64,3,0,0,0,0,0,0,2049,32776,1728,16392,64,13828,0,0,32768,0,0,0,8,0,0,64,1,0,0,8,0,0,4096,0,0,2048,0,0,0,50112,7,32768,384,0,0,4098,16,3457,32784,128,27656,128,1024,64,4099,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,12,0,0,34560,1,32768,0,16388,768,16,0,0,0,782,0,1024,0,0,0,50048,0,0,7168,6,0,57344,48,0,0,0,0,128,1024,64,1027,8192,512,8216,0,4097,192,1,32776,1536,8,64,12292,0,0,32768,0,0,0,8196,34560,1,0,0,0,8,8196,32,6914,32,257,55312,0,0,0,2,0,0,0,0,0,0,61444,496,0,24608,0,0,2048,0,0,0,32768,0,0,0,4,0,1,32808,1536,8,320,12292,4096,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,128,0,6256,0,2048,16384,1024,48,7168,6,0,2,16,3073,16,128,24584,128,1024,64,3,0,10112,20,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,1,0,0,4,0,0,32,0,0,0,14,0,0,112,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,8192,0,0,0,0,10112,20,8,0,0,288,0,0,32768,195,0,0,1564,0,0,12512,0,0,34560,1,32768,0,0,0,8,0,0,0,0,0,0,0,28,0,9,0,0,0,33024,0,0,2048,0,16,0,0,128,0,0,0,0,32768,8192,0,0,0,1,0,0,0,0,0,128,0,0,1024,0,0,0,1,0,0,1,0,0,8,0,0,0,0,0,0,0,0,0,0,20224,40,0,0,0,0,0,0,4608,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","ArgList","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","','","';'","'&&'","'||'","'!'","'*'","'/'","'%'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","'--'","length","empty","notEmpty","print","printAll","streams","while","take","drop","if","then","else","true","false","end","int","string","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (37) = happyShift action_3
action_0 (38) = happyShift action_4
action_0 (39) = happyShift action_5
action_0 (40) = happyShift action_6
action_0 (43) = happyShift action_7
action_0 (48) = happyShift action_8
action_0 (50) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (37) = happyShift action_3
action_1 (38) = happyShift action_4
action_1 (39) = happyShift action_5
action_1 (40) = happyShift action_6
action_1 (43) = happyShift action_7
action_1 (48) = happyShift action_8
action_1 (50) = happyShift action_9
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_11
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_23
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyShift action_22
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_21
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_20
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_19
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_16

action_9 (23) = happyShift action_12
action_9 (24) = happyShift action_13
action_9 (25) = happyShift action_14
action_9 (26) = happyShift action_15
action_9 (29) = happyShift action_16
action_9 (32) = happyShift action_17
action_9 (33) = happyShift action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (16) = happyShift action_11
action_10 (51) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (37) = happyShift action_3
action_11 (38) = happyShift action_4
action_11 (39) = happyShift action_5
action_11 (40) = happyShift action_6
action_11 (43) = happyShift action_7
action_11 (48) = happyShift action_8
action_11 (50) = happyShift action_9
action_11 (4) = happyGoto action_47
action_11 _ = happyReduce_2

action_12 (8) = happyShift action_40
action_12 (27) = happyShift action_32
action_12 (39) = happyShift action_43
action_12 (49) = happyShift action_36
action_12 (50) = happyShift action_37
action_12 (6) = happyGoto action_46
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_40
action_13 (27) = happyShift action_32
action_13 (39) = happyShift action_43
action_13 (49) = happyShift action_36
action_13 (50) = happyShift action_37
action_13 (6) = happyGoto action_45
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_40
action_14 (27) = happyShift action_32
action_14 (39) = happyShift action_43
action_14 (49) = happyShift action_36
action_14 (50) = happyShift action_37
action_14 (6) = happyGoto action_44
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_40
action_15 (27) = happyShift action_32
action_15 (39) = happyShift action_43
action_15 (49) = happyShift action_36
action_15 (50) = happyShift action_37
action_15 (6) = happyGoto action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_40
action_16 (27) = happyShift action_32
action_16 (39) = happyShift action_41
action_16 (49) = happyShift action_36
action_16 (50) = happyShift action_37
action_16 (6) = happyGoto action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_5

action_18 _ = happyReduce_6

action_19 (8) = happyShift action_30
action_19 (19) = happyShift action_31
action_19 (27) = happyShift action_32
action_19 (39) = happyShift action_33
action_19 (46) = happyShift action_34
action_19 (47) = happyShift action_35
action_19 (49) = happyShift action_36
action_19 (50) = happyShift action_37
action_19 (6) = happyGoto action_28
action_19 (7) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_30
action_20 (19) = happyShift action_31
action_20 (27) = happyShift action_32
action_20 (39) = happyShift action_33
action_20 (46) = happyShift action_34
action_20 (47) = happyShift action_35
action_20 (49) = happyShift action_36
action_20 (50) = happyShift action_37
action_20 (6) = happyGoto action_28
action_20 (7) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (49) = happyShift action_27
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (50) = happyShift action_26
action_22 (5) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (50) = happyShift action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_72
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_71
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_70
action_26 _ = happyReduce_18

action_27 (11) = happyShift action_69
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (19) = happyShift action_65
action_28 (20) = happyShift action_48
action_28 (21) = happyShift action_49
action_28 (22) = happyShift action_50
action_28 (27) = happyShift action_51
action_28 (28) = happyShift action_52
action_28 (29) = happyShift action_66
action_28 (30) = happyShift action_67
action_28 (31) = happyShift action_68
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (9) = happyShift action_64
action_29 (17) = happyShift action_57
action_29 (18) = happyShift action_58
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (8) = happyShift action_30
action_30 (19) = happyShift action_31
action_30 (27) = happyShift action_32
action_30 (39) = happyShift action_33
action_30 (46) = happyShift action_34
action_30 (47) = happyShift action_35
action_30 (49) = happyShift action_36
action_30 (50) = happyShift action_37
action_30 (6) = happyGoto action_62
action_30 (7) = happyGoto action_63
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (8) = happyShift action_30
action_31 (19) = happyShift action_31
action_31 (27) = happyShift action_32
action_31 (39) = happyShift action_33
action_31 (46) = happyShift action_34
action_31 (47) = happyShift action_35
action_31 (49) = happyShift action_36
action_31 (50) = happyShift action_37
action_31 (6) = happyGoto action_28
action_31 (7) = happyGoto action_61
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (8) = happyShift action_40
action_32 (27) = happyShift action_32
action_32 (39) = happyShift action_43
action_32 (49) = happyShift action_36
action_32 (50) = happyShift action_37
action_32 (6) = happyGoto action_60
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_59
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_33

action_35 _ = happyReduce_34

action_36 _ = happyReduce_26

action_37 _ = happyReduce_27

action_38 (9) = happyShift action_56
action_38 (17) = happyShift action_57
action_38 (18) = happyShift action_58
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_48
action_39 (21) = happyShift action_49
action_39 (22) = happyShift action_50
action_39 (27) = happyShift action_51
action_39 (28) = happyShift action_52
action_39 _ = happyReduce_8

action_40 (8) = happyShift action_40
action_40 (27) = happyShift action_32
action_40 (39) = happyShift action_43
action_40 (49) = happyShift action_36
action_40 (50) = happyShift action_37
action_40 (6) = happyGoto action_55
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_54
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (20) = happyShift action_48
action_42 (21) = happyShift action_49
action_42 (22) = happyShift action_50
action_42 (27) = happyShift action_51
action_42 (28) = happyShift action_52
action_42 _ = happyReduce_11

action_43 (10) = happyShift action_53
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_48
action_44 (21) = happyShift action_49
action_44 (22) = happyShift action_50
action_44 (27) = happyShift action_51
action_44 (28) = happyShift action_52
action_44 _ = happyReduce_12

action_45 (20) = happyShift action_48
action_45 (21) = happyShift action_49
action_45 (22) = happyShift action_50
action_45 (27) = happyShift action_51
action_45 (28) = happyShift action_52
action_45 _ = happyReduce_9

action_46 (20) = happyShift action_48
action_46 (21) = happyShift action_49
action_46 (22) = happyShift action_50
action_46 (27) = happyShift action_51
action_46 (28) = happyShift action_52
action_46 _ = happyReduce_10

action_47 _ = happyReduce_1

action_48 (8) = happyShift action_40
action_48 (27) = happyShift action_32
action_48 (39) = happyShift action_43
action_48 (49) = happyShift action_36
action_48 (50) = happyShift action_37
action_48 (6) = happyGoto action_94
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (8) = happyShift action_40
action_49 (27) = happyShift action_32
action_49 (39) = happyShift action_43
action_49 (49) = happyShift action_36
action_49 (50) = happyShift action_37
action_49 (6) = happyGoto action_93
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (8) = happyShift action_40
action_50 (27) = happyShift action_32
action_50 (39) = happyShift action_43
action_50 (49) = happyShift action_36
action_50 (50) = happyShift action_37
action_50 (6) = happyGoto action_92
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (8) = happyShift action_40
action_51 (27) = happyShift action_32
action_51 (39) = happyShift action_43
action_51 (49) = happyShift action_36
action_51 (50) = happyShift action_37
action_51 (6) = happyGoto action_91
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_40
action_52 (27) = happyShift action_32
action_52 (39) = happyShift action_43
action_52 (49) = happyShift action_36
action_52 (50) = happyShift action_37
action_52 (6) = happyGoto action_90
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (49) = happyShift action_89
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (49) = happyShift action_88
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (9) = happyShift action_83
action_55 (20) = happyShift action_48
action_55 (21) = happyShift action_49
action_55 (22) = happyShift action_50
action_55 (27) = happyShift action_51
action_55 (28) = happyShift action_52
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (44) = happyShift action_87
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (8) = happyShift action_30
action_57 (19) = happyShift action_31
action_57 (27) = happyShift action_32
action_57 (39) = happyShift action_33
action_57 (46) = happyShift action_34
action_57 (47) = happyShift action_35
action_57 (49) = happyShift action_36
action_57 (50) = happyShift action_37
action_57 (6) = happyGoto action_28
action_57 (7) = happyGoto action_86
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (8) = happyShift action_30
action_58 (19) = happyShift action_31
action_58 (27) = happyShift action_32
action_58 (39) = happyShift action_33
action_58 (46) = happyShift action_34
action_58 (47) = happyShift action_35
action_58 (49) = happyShift action_36
action_58 (50) = happyShift action_37
action_58 (6) = happyGoto action_28
action_58 (7) = happyGoto action_85
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (49) = happyShift action_84
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_25

action_61 _ = happyReduce_32

action_62 (9) = happyShift action_83
action_62 (19) = happyShift action_65
action_62 (20) = happyShift action_48
action_62 (21) = happyShift action_49
action_62 (22) = happyShift action_50
action_62 (27) = happyShift action_51
action_62 (28) = happyShift action_52
action_62 (29) = happyShift action_66
action_62 (30) = happyShift action_67
action_62 (31) = happyShift action_68
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (9) = happyShift action_82
action_63 (17) = happyShift action_57
action_63 (18) = happyShift action_58
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (12) = happyShift action_81
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (29) = happyShift action_80
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (29) = happyShift action_79
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (8) = happyShift action_40
action_67 (27) = happyShift action_32
action_67 (29) = happyShift action_78
action_67 (39) = happyShift action_43
action_67 (49) = happyShift action_36
action_67 (50) = happyShift action_37
action_67 (6) = happyGoto action_77
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (8) = happyShift action_40
action_68 (27) = happyShift action_32
action_68 (29) = happyShift action_76
action_68 (39) = happyShift action_43
action_68 (49) = happyShift action_36
action_68 (50) = happyShift action_37
action_68 (6) = happyGoto action_75
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_74
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (50) = happyShift action_26
action_70 (5) = happyGoto action_73
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_14

action_72 _ = happyReduce_13

action_73 _ = happyReduce_17

action_74 (42) = happyShift action_104
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (20) = happyShift action_48
action_75 (21) = happyShift action_49
action_75 (22) = happyShift action_50
action_75 (27) = happyShift action_51
action_75 (28) = happyShift action_52
action_75 _ = happyReduce_36

action_76 (8) = happyShift action_40
action_76 (27) = happyShift action_32
action_76 (39) = happyShift action_43
action_76 (49) = happyShift action_36
action_76 (50) = happyShift action_37
action_76 (6) = happyGoto action_103
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (20) = happyShift action_48
action_77 (21) = happyShift action_49
action_77 (22) = happyShift action_50
action_77 (27) = happyShift action_51
action_77 (28) = happyShift action_52
action_77 _ = happyReduce_35

action_78 (8) = happyShift action_40
action_78 (27) = happyShift action_32
action_78 (39) = happyShift action_43
action_78 (49) = happyShift action_36
action_78 (50) = happyShift action_37
action_78 (6) = happyGoto action_102
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (8) = happyShift action_40
action_79 (27) = happyShift action_32
action_79 (39) = happyShift action_43
action_79 (49) = happyShift action_36
action_79 (50) = happyShift action_37
action_79 (6) = happyGoto action_101
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (8) = happyShift action_40
action_80 (27) = happyShift action_32
action_80 (39) = happyShift action_43
action_80 (49) = happyShift action_36
action_80 (50) = happyShift action_37
action_80 (6) = happyGoto action_100
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (37) = happyShift action_3
action_81 (38) = happyShift action_4
action_81 (39) = happyShift action_5
action_81 (40) = happyShift action_6
action_81 (43) = happyShift action_7
action_81 (48) = happyShift action_8
action_81 (50) = happyShift action_9
action_81 (4) = happyGoto action_99
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_29

action_83 _ = happyReduce_19

action_84 (11) = happyShift action_98
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_31

action_86 _ = happyReduce_30

action_87 (12) = happyShift action_97
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (11) = happyShift action_96
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (11) = happyShift action_95
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (20) = happyShift action_48
action_90 (21) = happyShift action_49
action_90 (22) = happyShift action_50
action_90 _ = happyReduce_22

action_91 (20) = happyShift action_48
action_91 (21) = happyShift action_49
action_91 (22) = happyShift action_50
action_91 _ = happyReduce_23

action_92 _ = happyReduce_24

action_93 _ = happyReduce_21

action_94 _ = happyReduce_20

action_95 (14) = happyShift action_110
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (14) = happyShift action_109
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (37) = happyShift action_3
action_97 (38) = happyShift action_4
action_97 (39) = happyShift action_5
action_97 (40) = happyShift action_6
action_97 (43) = happyShift action_7
action_97 (48) = happyShift action_8
action_97 (50) = happyShift action_9
action_97 (4) = happyGoto action_108
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (14) = happyShift action_107
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (13) = happyShift action_106
action_99 (16) = happyShift action_11
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (20) = happyShift action_48
action_100 (21) = happyShift action_49
action_100 (22) = happyShift action_50
action_100 (27) = happyShift action_51
action_100 (28) = happyShift action_52
action_100 _ = happyReduce_40

action_101 (20) = happyShift action_48
action_101 (21) = happyShift action_49
action_101 (22) = happyShift action_50
action_101 (27) = happyShift action_51
action_101 (28) = happyShift action_52
action_101 _ = happyReduce_39

action_102 (20) = happyShift action_48
action_102 (21) = happyShift action_49
action_102 (22) = happyShift action_50
action_102 (27) = happyShift action_51
action_102 (28) = happyShift action_52
action_102 _ = happyReduce_37

action_103 (20) = happyShift action_48
action_103 (21) = happyShift action_49
action_103 (22) = happyShift action_50
action_103 (27) = happyShift action_51
action_103 (28) = happyShift action_52
action_103 _ = happyReduce_38

action_104 (8) = happyShift action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (9) = happyShift action_116
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_3

action_107 (34) = happyShift action_111
action_107 (35) = happyShift action_114
action_107 (36) = happyShift action_115
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (13) = happyShift action_113
action_108 (16) = happyShift action_11
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (34) = happyShift action_111
action_109 (41) = happyShift action_112
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (34) = happyShift action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (8) = happyShift action_121
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (8) = happyShift action_120
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (45) = happyShift action_119
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (8) = happyShift action_118
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (8) = happyShift action_117
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_15

action_117 (9) = happyShift action_126
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (9) = happyShift action_125
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (12) = happyShift action_124
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (9) = happyShift action_123
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (9) = happyShift action_122
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_28

action_123 _ = happyReduce_7

action_124 (37) = happyShift action_3
action_124 (38) = happyShift action_4
action_124 (39) = happyShift action_5
action_124 (40) = happyShift action_6
action_124 (43) = happyShift action_7
action_124 (48) = happyShift action_8
action_124 (50) = happyShift action_9
action_124 (4) = happyGoto action_127
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_42

action_126 _ = happyReduce_41

action_127 (13) = happyShift action_128
action_127 (16) = happyShift action_11
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_4

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
		 (Single happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 7 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 12 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfEl happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 _
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (IncVar happy_var_1
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 _
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (DecVar happy_var_1
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 10 4 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TakeFrom happy_var_5 happy_var_1
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (SetVar happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (TimesEq happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (DivEq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (AddEq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (SubEq happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 4 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintVar happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintAll happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 8 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
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

happyReduce_16 = happySpecReduce_1  4 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn4
		 (EndProgram
	)

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (ListNode happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (EndNode happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Add happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Neg happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (DataInt happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (GetVar happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happyReduce 8 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GetLength happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  7 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  7 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (And happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  7 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Or happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  7 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Not happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  7 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn7
		 (DataBool True
	)

happyReduce_34 = happySpecReduce_1  7 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn7
		 (DataBool False
	)

happyReduce_35 = happySpecReduce_3  7 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  7 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 7 happyReduction_37
happyReduction_37 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 4 7 happyReduction_38
happyReduction_38 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 7 happyReduction_39
happyReduction_39 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 7 happyReduction_40
happyReduction_40 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 8 7 happyReduction_41
happyReduction_41 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (StreamNotEmpty happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 8 7 happyReduction_42
happyReduction_42 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (StreamEmpty happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLParen _ -> cont 8;
	TokenRParen _ -> cont 9;
	TokenLSquare _ -> cont 10;
	TokenRSquare _ -> cont 11;
	TokenLCurly _ -> cont 12;
	TokenRCurly _ -> cont 13;
	TokenDot _ -> cont 14;
	TokenComma _ -> cont 15;
	TokenSeq _ -> cont 16;
	TokenAnd _ -> cont 17;
	TokenOr _ -> cont 18;
	TokenNot _ -> cont 19;
	TokenTimes _ -> cont 20;
	TokenDiv _ -> cont 21;
	TokenMod _ -> cont 22;
	TokenDivEq _ -> cont 23;
	TokenTimesEq _ -> cont 24;
	TokenSubEq _ -> cont 25;
	TokenPlusEq _ -> cont 26;
	TokenMinus _ -> cont 27;
	TokenPlus _ -> cont 28;
	TokenEq _ -> cont 29;
	TokenGt _ -> cont 30;
	TokenLt _ -> cont 31;
	TokenInc _ -> cont 32;
	TokenDec _ -> cont 33;
	TokenLength _ -> cont 34;
	TokenEmpty _ -> cont 35;
	TokenNotEmpty _ -> cont 36;
	TokenPrint _ -> cont 37;
	TokenPrintAll _ -> cont 38;
	TokenStreams _ -> cont 39;
	TokenWhile _ -> cont 40;
	TokenTake _ -> cont 41;
	TokenDrop _ -> cont 42;
	TokenIf _ -> cont 43;
	TokenThen _ -> cont 44;
	TokenElse _ -> cont 45;
	TokenTrue _ -> cont 46;
	TokenFalse _ -> cont 47;
	TokenEnd _ -> cont 48;
	TokenInt _ happy_dollar_dollar -> cont 49;
	TokenString _ happy_dollar_dollar -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
         | Single Exp
         | While BExp Exp
         | IfEl BExp Exp Exp
         | IncVar String
         | DecVar String
         | TakeFrom Int String
         | SetVar String IntExp
         | TimesEq String IntExp
         | DivEq String IntExp
         | AddEq String IntExp
         | SubEq String IntExp
         | PrintVar String
         | PrintAll ArgList
         | DropFrom Int
         | EndProgram
         deriving (Show, Read)

data ArgList = ListNode String ArgList
             | EndNode String
             deriving (Show, Read)

data IntExp = Mul IntExp IntExp
         | Div IntExp IntExp
         | Add IntExp IntExp
         | Sub IntExp IntExp 
         | Mod IntExp IntExp
         | Neg IntExp
         | DataInt Int
         | GetVar String
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
