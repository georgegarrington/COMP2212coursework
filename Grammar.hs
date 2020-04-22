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
happyExpList = Happy_Data_Array.listArray (0,285) ([0,0,5088,11,0,31744,354,512,0,0,64,0,0,2048,0,0,0,4,0,0,32,0,0,1024,0,0,32768,0,0,0,0,0,0,0,0,0,0,57344,401,0,2048,0,0,0,0,10176,8214,0,8194,768,4,64,24580,128,2048,128,4108,0,4097,384,2,32,12290,0,0,0,0,0,0,0,2049,16,6529,0,0,50424,1026,16416,1024,102,0,0,1024,0,0,0,1,0,0,32800,0,0,0,16,0,0,32768,0,0,0,1,0,0,57344,2017,0,256,3,0,4096,128,4097,408,4098,32,13058,64,1024,64,8198,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,1024,12,0,0,7168,14,0,8,128,49160,1024,0,0,0,3584,7,0,16,0,0,0,7224,0,0,34560,3,0,57344,112,0,0,0,0,2048,32768,2048,192,1,16,6145,32,512,32,1027,16384,1024,32864,0,32776,3072,16,256,32784,1,0,0,16,0,0,512,32784,451,0,4096,0,0,8192,256,8194,816,8196,64,26116,128,2052,54240,15,0,0,128,0,0,0,0,0,0,4096,50112,15,0,1538,0,0,512,0,0,0,0,1,0,0,32,0,16,1280,32784,513,40960,512,48,16,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,34560,3,0,2,32,12290,0,3612,0,2048,32768,2048,192,1,16,6145,32,512,32,3,0,40704,88,0,0,0,0,0,0,4096,0,0,0,448,0,0,32,0,0,0,1920,6,0,0,0,0,0,0,0,0,0,5088,32779,0,0,0,16,0,0,0,540,0,0,17280,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,32768,0,0,0,72,0,0,0,0,16384,0,0,10176,22,8,0,0,1152,0,0,0,7224,0,0,34560,3,0,57344,112,0,0,3612,0,2048,0,0,0,2,0,0,0,0,0,0,0,224,0,129,0,0,128,0,0,0,0,32768,0,0,512,2,0,16384,0,256,0,0,8192,0,0,0,64,0,0,8192,0,0,0,1,0,0,2,0,0,64,0,0,0,0,0,0,2,0,0,64,0,0,0,0,40704,88,0,7168,8,0,0,25212,1025,0,0,32768,0,0,0,0,0,0,0,0,0,0,36,0,0,1152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","ArgList","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","','","';'","'&&'","'||'","'!'","'*'","'/'","'%'","'/='","'*='","'-='","'+='","'^'","'-'","'+'","'='","'>'","'<'","'++'","'--'","length","empty","notEmpty","print","printAll","streams","while","for","take","drop","if","else","true","false","end","nothing","int","string","%eof"]
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
action_0 (42) = happyShift action_7
action_0 (45) = happyShift action_8
action_0 (49) = happyShift action_9
action_0 (50) = happyShift action_10
action_0 (52) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (38) = happyShift action_3
action_1 (39) = happyShift action_4
action_1 (40) = happyShift action_5
action_1 (41) = happyShift action_6
action_1 (42) = happyShift action_7
action_1 (45) = happyShift action_8
action_1 (49) = happyShift action_9
action_1 (50) = happyShift action_10
action_1 (52) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_13
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_26
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyShift action_25
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_24
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_18

action_10 _ = happyReduce_17

action_11 (23) = happyShift action_14
action_11 (24) = happyShift action_15
action_11 (25) = happyShift action_16
action_11 (26) = happyShift action_17
action_11 (30) = happyShift action_18
action_11 (33) = happyShift action_19
action_11 (34) = happyShift action_20
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (16) = happyShift action_13
action_12 (53) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (38) = happyShift action_3
action_13 (39) = happyShift action_4
action_13 (40) = happyShift action_5
action_13 (41) = happyShift action_6
action_13 (42) = happyShift action_7
action_13 (45) = happyShift action_8
action_13 (49) = happyShift action_9
action_13 (50) = happyShift action_10
action_13 (52) = happyShift action_11
action_13 (4) = happyGoto action_51
action_13 _ = happyReduce_2

action_14 (8) = happyShift action_44
action_14 (28) = happyShift action_35
action_14 (40) = happyShift action_47
action_14 (51) = happyShift action_39
action_14 (52) = happyShift action_40
action_14 (6) = happyGoto action_50
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_44
action_15 (28) = happyShift action_35
action_15 (40) = happyShift action_47
action_15 (51) = happyShift action_39
action_15 (52) = happyShift action_40
action_15 (6) = happyGoto action_49
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_44
action_16 (28) = happyShift action_35
action_16 (40) = happyShift action_47
action_16 (51) = happyShift action_39
action_16 (52) = happyShift action_40
action_16 (6) = happyGoto action_48
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_44
action_17 (28) = happyShift action_35
action_17 (40) = happyShift action_47
action_17 (51) = happyShift action_39
action_17 (52) = happyShift action_40
action_17 (6) = happyGoto action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_44
action_18 (28) = happyShift action_35
action_18 (40) = happyShift action_45
action_18 (51) = happyShift action_39
action_18 (52) = happyShift action_40
action_18 (6) = happyGoto action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_6

action_20 _ = happyReduce_7

action_21 (8) = happyShift action_33
action_21 (19) = happyShift action_34
action_21 (28) = happyShift action_35
action_21 (40) = happyShift action_36
action_21 (47) = happyShift action_37
action_21 (48) = happyShift action_38
action_21 (51) = happyShift action_39
action_21 (52) = happyShift action_40
action_21 (6) = happyGoto action_31
action_21 (7) = happyGoto action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (38) = happyShift action_3
action_22 (39) = happyShift action_4
action_22 (40) = happyShift action_5
action_22 (41) = happyShift action_6
action_22 (42) = happyShift action_7
action_22 (45) = happyShift action_8
action_22 (49) = happyShift action_9
action_22 (50) = happyShift action_10
action_22 (52) = happyShift action_11
action_22 (4) = happyGoto action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_33
action_23 (19) = happyShift action_34
action_23 (28) = happyShift action_35
action_23 (40) = happyShift action_36
action_23 (47) = happyShift action_37
action_23 (48) = happyShift action_38
action_23 (51) = happyShift action_39
action_23 (52) = happyShift action_40
action_23 (6) = happyGoto action_31
action_23 (7) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (51) = happyShift action_30
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (52) = happyShift action_29
action_25 (5) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (52) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_78
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (9) = happyShift action_77
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (15) = happyShift action_76
action_29 _ = happyReduce_20

action_30 (11) = happyShift action_75
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (19) = happyShift action_71
action_31 (20) = happyShift action_52
action_31 (21) = happyShift action_53
action_31 (22) = happyShift action_54
action_31 (27) = happyShift action_55
action_31 (28) = happyShift action_56
action_31 (29) = happyShift action_57
action_31 (30) = happyShift action_72
action_31 (31) = happyShift action_73
action_31 (32) = happyShift action_74
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_70
action_32 (17) = happyShift action_62
action_32 (18) = happyShift action_63
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_33
action_33 (19) = happyShift action_34
action_33 (28) = happyShift action_35
action_33 (40) = happyShift action_36
action_33 (47) = happyShift action_37
action_33 (48) = happyShift action_38
action_33 (51) = happyShift action_39
action_33 (52) = happyShift action_40
action_33 (6) = happyGoto action_68
action_33 (7) = happyGoto action_69
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_33
action_34 (19) = happyShift action_34
action_34 (28) = happyShift action_35
action_34 (40) = happyShift action_36
action_34 (47) = happyShift action_37
action_34 (48) = happyShift action_38
action_34 (51) = happyShift action_39
action_34 (52) = happyShift action_40
action_34 (6) = happyGoto action_31
action_34 (7) = happyGoto action_67
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (8) = happyShift action_44
action_35 (28) = happyShift action_35
action_35 (40) = happyShift action_47
action_35 (51) = happyShift action_39
action_35 (52) = happyShift action_40
action_35 (6) = happyGoto action_66
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_65
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_36

action_38 _ = happyReduce_37

action_39 _ = happyReduce_29

action_40 _ = happyReduce_30

action_41 (16) = happyShift action_64
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (9) = happyShift action_61
action_42 (17) = happyShift action_62
action_42 (18) = happyShift action_63
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (20) = happyShift action_52
action_43 (21) = happyShift action_53
action_43 (22) = happyShift action_54
action_43 (27) = happyShift action_55
action_43 (28) = happyShift action_56
action_43 (29) = happyShift action_57
action_43 _ = happyReduce_9

action_44 (8) = happyShift action_44
action_44 (28) = happyShift action_35
action_44 (40) = happyShift action_47
action_44 (51) = happyShift action_39
action_44 (52) = happyShift action_40
action_44 (6) = happyGoto action_60
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (10) = happyShift action_59
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_52
action_46 (21) = happyShift action_53
action_46 (22) = happyShift action_54
action_46 (27) = happyShift action_55
action_46 (28) = happyShift action_56
action_46 (29) = happyShift action_57
action_46 _ = happyReduce_12

action_47 (10) = happyShift action_58
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (20) = happyShift action_52
action_48 (21) = happyShift action_53
action_48 (22) = happyShift action_54
action_48 (27) = happyShift action_55
action_48 (28) = happyShift action_56
action_48 (29) = happyShift action_57
action_48 _ = happyReduce_13

action_49 (20) = happyShift action_52
action_49 (21) = happyShift action_53
action_49 (22) = happyShift action_54
action_49 (27) = happyShift action_55
action_49 (28) = happyShift action_56
action_49 (29) = happyShift action_57
action_49 _ = happyReduce_10

action_50 (20) = happyShift action_52
action_50 (21) = happyShift action_53
action_50 (22) = happyShift action_54
action_50 (27) = happyShift action_55
action_50 (28) = happyShift action_56
action_50 (29) = happyShift action_57
action_50 _ = happyReduce_11

action_51 _ = happyReduce_1

action_52 (8) = happyShift action_44
action_52 (28) = happyShift action_35
action_52 (40) = happyShift action_47
action_52 (51) = happyShift action_39
action_52 (52) = happyShift action_40
action_52 (6) = happyGoto action_104
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_44
action_53 (28) = happyShift action_35
action_53 (40) = happyShift action_47
action_53 (51) = happyShift action_39
action_53 (52) = happyShift action_40
action_53 (6) = happyGoto action_103
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (8) = happyShift action_44
action_54 (28) = happyShift action_35
action_54 (40) = happyShift action_47
action_54 (51) = happyShift action_39
action_54 (52) = happyShift action_40
action_54 (6) = happyGoto action_102
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (8) = happyShift action_44
action_55 (28) = happyShift action_35
action_55 (40) = happyShift action_47
action_55 (51) = happyShift action_39
action_55 (52) = happyShift action_40
action_55 (6) = happyGoto action_101
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_44
action_56 (28) = happyShift action_35
action_56 (40) = happyShift action_47
action_56 (51) = happyShift action_39
action_56 (52) = happyShift action_40
action_56 (6) = happyGoto action_100
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (8) = happyShift action_44
action_57 (28) = happyShift action_35
action_57 (40) = happyShift action_47
action_57 (51) = happyShift action_39
action_57 (52) = happyShift action_40
action_57 (6) = happyGoto action_99
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (51) = happyShift action_98
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (51) = happyShift action_97
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (9) = happyShift action_89
action_60 (20) = happyShift action_52
action_60 (21) = happyShift action_53
action_60 (22) = happyShift action_54
action_60 (27) = happyShift action_55
action_60 (28) = happyShift action_56
action_60 (29) = happyShift action_57
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (12) = happyShift action_96
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (8) = happyShift action_33
action_62 (19) = happyShift action_34
action_62 (28) = happyShift action_35
action_62 (40) = happyShift action_36
action_62 (47) = happyShift action_37
action_62 (48) = happyShift action_38
action_62 (51) = happyShift action_39
action_62 (52) = happyShift action_40
action_62 (6) = happyGoto action_31
action_62 (7) = happyGoto action_95
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (8) = happyShift action_33
action_63 (19) = happyShift action_34
action_63 (28) = happyShift action_35
action_63 (40) = happyShift action_36
action_63 (47) = happyShift action_37
action_63 (48) = happyShift action_38
action_63 (51) = happyShift action_39
action_63 (52) = happyShift action_40
action_63 (6) = happyGoto action_31
action_63 (7) = happyGoto action_94
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (8) = happyShift action_33
action_64 (19) = happyShift action_34
action_64 (28) = happyShift action_35
action_64 (38) = happyShift action_3
action_64 (39) = happyShift action_4
action_64 (40) = happyShift action_92
action_64 (41) = happyShift action_6
action_64 (42) = happyShift action_7
action_64 (45) = happyShift action_8
action_64 (47) = happyShift action_37
action_64 (48) = happyShift action_38
action_64 (49) = happyShift action_9
action_64 (50) = happyShift action_10
action_64 (51) = happyShift action_39
action_64 (52) = happyShift action_93
action_64 (4) = happyGoto action_51
action_64 (6) = happyGoto action_31
action_64 (7) = happyGoto action_91
action_64 _ = happyReduce_2

action_65 (51) = happyShift action_90
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_28

action_67 _ = happyReduce_35

action_68 (9) = happyShift action_89
action_68 (19) = happyShift action_71
action_68 (20) = happyShift action_52
action_68 (21) = happyShift action_53
action_68 (22) = happyShift action_54
action_68 (27) = happyShift action_55
action_68 (28) = happyShift action_56
action_68 (29) = happyShift action_57
action_68 (30) = happyShift action_72
action_68 (31) = happyShift action_73
action_68 (32) = happyShift action_74
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (9) = happyShift action_88
action_69 (17) = happyShift action_62
action_69 (18) = happyShift action_63
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (12) = happyShift action_87
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (30) = happyShift action_86
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (30) = happyShift action_85
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (8) = happyShift action_44
action_73 (28) = happyShift action_35
action_73 (30) = happyShift action_84
action_73 (40) = happyShift action_47
action_73 (51) = happyShift action_39
action_73 (52) = happyShift action_40
action_73 (6) = happyGoto action_83
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (8) = happyShift action_44
action_74 (28) = happyShift action_35
action_74 (30) = happyShift action_82
action_74 (40) = happyShift action_47
action_74 (51) = happyShift action_39
action_74 (52) = happyShift action_40
action_74 (6) = happyGoto action_81
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (14) = happyShift action_80
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (52) = happyShift action_29
action_76 (5) = happyGoto action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_15

action_78 _ = happyReduce_14

action_79 _ = happyReduce_19

action_80 (44) = happyShift action_116
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (20) = happyShift action_52
action_81 (21) = happyShift action_53
action_81 (22) = happyShift action_54
action_81 (27) = happyShift action_55
action_81 (28) = happyShift action_56
action_81 (29) = happyShift action_57
action_81 _ = happyReduce_39

action_82 (8) = happyShift action_44
action_82 (28) = happyShift action_35
action_82 (40) = happyShift action_47
action_82 (51) = happyShift action_39
action_82 (52) = happyShift action_40
action_82 (6) = happyGoto action_115
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (20) = happyShift action_52
action_83 (21) = happyShift action_53
action_83 (22) = happyShift action_54
action_83 (27) = happyShift action_55
action_83 (28) = happyShift action_56
action_83 (29) = happyShift action_57
action_83 _ = happyReduce_38

action_84 (8) = happyShift action_44
action_84 (28) = happyShift action_35
action_84 (40) = happyShift action_47
action_84 (51) = happyShift action_39
action_84 (52) = happyShift action_40
action_84 (6) = happyGoto action_114
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (8) = happyShift action_44
action_85 (28) = happyShift action_35
action_85 (40) = happyShift action_47
action_85 (51) = happyShift action_39
action_85 (52) = happyShift action_40
action_85 (6) = happyGoto action_113
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (8) = happyShift action_44
action_86 (28) = happyShift action_35
action_86 (40) = happyShift action_47
action_86 (51) = happyShift action_39
action_86 (52) = happyShift action_40
action_86 (6) = happyGoto action_112
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (38) = happyShift action_3
action_87 (39) = happyShift action_4
action_87 (40) = happyShift action_5
action_87 (41) = happyShift action_6
action_87 (42) = happyShift action_7
action_87 (45) = happyShift action_8
action_87 (49) = happyShift action_9
action_87 (50) = happyShift action_10
action_87 (52) = happyShift action_11
action_87 (4) = happyGoto action_111
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_32

action_89 _ = happyReduce_21

action_90 (11) = happyShift action_110
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (16) = happyShift action_109
action_91 (17) = happyShift action_62
action_91 (18) = happyShift action_63
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (10) = happyShift action_108
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (23) = happyShift action_14
action_93 (24) = happyShift action_15
action_93 (25) = happyShift action_16
action_93 (26) = happyShift action_17
action_93 (30) = happyShift action_18
action_93 (33) = happyShift action_19
action_93 (34) = happyShift action_20
action_93 _ = happyReduce_30

action_94 _ = happyReduce_34

action_95 _ = happyReduce_33

action_96 (38) = happyShift action_3
action_96 (39) = happyShift action_4
action_96 (40) = happyShift action_5
action_96 (41) = happyShift action_6
action_96 (42) = happyShift action_7
action_96 (45) = happyShift action_8
action_96 (49) = happyShift action_9
action_96 (50) = happyShift action_10
action_96 (52) = happyShift action_11
action_96 (4) = happyGoto action_107
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (11) = happyShift action_106
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (11) = happyShift action_105
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (20) = happyShift action_52
action_99 (21) = happyShift action_53
action_99 (22) = happyShift action_54
action_99 (27) = happyShift action_55
action_99 _ = happyReduce_24

action_100 (20) = happyShift action_52
action_100 (21) = happyShift action_53
action_100 (22) = happyShift action_54
action_100 (27) = happyShift action_55
action_100 _ = happyReduce_25

action_101 _ = happyReduce_27

action_102 _ = happyReduce_26

action_103 _ = happyReduce_23

action_104 _ = happyReduce_22

action_105 (14) = happyShift action_124
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (14) = happyShift action_123
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (13) = happyShift action_122
action_107 (16) = happyShift action_13
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (51) = happyShift action_121
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (38) = happyShift action_3
action_109 (39) = happyShift action_4
action_109 (40) = happyShift action_5
action_109 (41) = happyShift action_6
action_109 (42) = happyShift action_7
action_109 (45) = happyShift action_8
action_109 (49) = happyShift action_9
action_109 (50) = happyShift action_10
action_109 (52) = happyShift action_11
action_109 (4) = happyGoto action_120
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (14) = happyShift action_119
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (13) = happyShift action_118
action_111 (16) = happyShift action_13
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (20) = happyShift action_52
action_112 (21) = happyShift action_53
action_112 (22) = happyShift action_54
action_112 (27) = happyShift action_55
action_112 (28) = happyShift action_56
action_112 (29) = happyShift action_57
action_112 _ = happyReduce_43

action_113 (20) = happyShift action_52
action_113 (21) = happyShift action_53
action_113 (22) = happyShift action_54
action_113 (27) = happyShift action_55
action_113 (28) = happyShift action_56
action_113 (29) = happyShift action_57
action_113 _ = happyReduce_42

action_114 (20) = happyShift action_52
action_114 (21) = happyShift action_53
action_114 (22) = happyShift action_54
action_114 (27) = happyShift action_55
action_114 (28) = happyShift action_56
action_114 (29) = happyShift action_57
action_114 _ = happyReduce_40

action_115 (20) = happyShift action_52
action_115 (21) = happyShift action_53
action_115 (22) = happyShift action_54
action_115 (27) = happyShift action_55
action_115 (28) = happyShift action_56
action_115 (29) = happyShift action_57
action_115 _ = happyReduce_41

action_116 (8) = happyShift action_117
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (9) = happyShift action_132
action_117 _ = happyFail (happyExpListPerState 117)

action_118 _ = happyReduce_4

action_119 (35) = happyShift action_125
action_119 (36) = happyShift action_130
action_119 (37) = happyShift action_131
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (9) = happyShift action_129
action_120 (16) = happyShift action_13
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (11) = happyShift action_128
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (46) = happyShift action_127
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (35) = happyShift action_125
action_123 (43) = happyShift action_126
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (35) = happyShift action_125
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (8) = happyShift action_139
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (8) = happyShift action_138
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (12) = happyShift action_137
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (14) = happyShift action_136
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (12) = happyShift action_135
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (8) = happyShift action_134
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (8) = happyShift action_133
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_16

action_133 (9) = happyShift action_145
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (9) = happyShift action_144
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (38) = happyShift action_3
action_135 (39) = happyShift action_4
action_135 (40) = happyShift action_5
action_135 (41) = happyShift action_6
action_135 (42) = happyShift action_7
action_135 (45) = happyShift action_8
action_135 (49) = happyShift action_9
action_135 (50) = happyShift action_10
action_135 (52) = happyShift action_11
action_135 (4) = happyGoto action_143
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (35) = happyShift action_125
action_136 (36) = happyShift action_130
action_136 (37) = happyShift action_131
action_136 (44) = happyShift action_116
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (38) = happyShift action_3
action_137 (39) = happyShift action_4
action_137 (40) = happyShift action_5
action_137 (41) = happyShift action_6
action_137 (42) = happyShift action_7
action_137 (45) = happyShift action_8
action_137 (49) = happyShift action_9
action_137 (50) = happyShift action_10
action_137 (52) = happyShift action_11
action_137 (4) = happyGoto action_142
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (9) = happyShift action_141
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (9) = happyShift action_140
action_139 _ = happyFail (happyExpListPerState 139)

action_140 _ = happyReduce_31

action_141 _ = happyReduce_8

action_142 (13) = happyShift action_147
action_142 (16) = happyShift action_13
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (13) = happyShift action_146
action_143 (16) = happyShift action_13
action_143 _ = happyFail (happyExpListPerState 143)

action_144 _ = happyReduce_45

action_145 _ = happyReduce_44

action_146 _ = happyReduce_3

action_147 _ = happyReduce_5

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
		 (happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 11 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (For happy_var_3 happy_var_5 happy_var_7 happy_var_10
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
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

happyReduce_5 = happyReduce 11 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfEl happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 _
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (IncVar happy_var_1
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 _
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (DecVar happy_var_1
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 10 4 happyReduction_8
happyReduction_8 (_ `HappyStk`
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

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (SetVar happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (TimesEq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (DivEq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (AddEq happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn4
		 (SubEq happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 4 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyTerminal (TokenString _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintVar happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintAll happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
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

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn4
		 (DataNothing
	)

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn4
		 (EndProgram
	)

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (ListNode happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (EndNode happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Add happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Neg happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  6 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (DataInt happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (GetVar happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happyReduce 8 6 happyReduction_31
happyReduction_31 (_ `HappyStk`
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

happyReduce_32 = happySpecReduce_3  7 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  7 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (And happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  7 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Or happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  7 happyReduction_35
happyReduction_35 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Not happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  7 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn7
		 (DataBool True
	)

happyReduce_37 = happySpecReduce_1  7 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn7
		 (DataBool False
	)

happyReduce_38 = happySpecReduce_3  7 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  7 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happyReduce 4 7 happyReduction_40
happyReduction_40 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 7 happyReduction_41
happyReduction_41 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 7 happyReduction_42
happyReduction_42 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 7 happyReduction_43
happyReduction_43 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 8 7 happyReduction_44
happyReduction_44 (_ `HappyStk`
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

happyReduce_45 = happyReduce 8 7 happyReduction_45
happyReduction_45 (_ `HappyStk`
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
	action 53 53 notHappyAtAll (HappyState action) sts stk []

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
	TokenExp _ -> cont 27;
	TokenMinus _ -> cont 28;
	TokenPlus _ -> cont 29;
	TokenEq _ -> cont 30;
	TokenGt _ -> cont 31;
	TokenLt _ -> cont 32;
	TokenInc _ -> cont 33;
	TokenDec _ -> cont 34;
	TokenLength _ -> cont 35;
	TokenEmpty _ -> cont 36;
	TokenNotEmpty _ -> cont 37;
	TokenPrint _ -> cont 38;
	TokenPrintAll _ -> cont 39;
	TokenStreams _ -> cont 40;
	TokenWhile _ -> cont 41;
	TokenFor _ -> cont 42;
	TokenTake _ -> cont 43;
	TokenDrop _ -> cont 44;
	TokenIf _ -> cont 45;
	TokenElse _ -> cont 46;
	TokenTrue _ -> cont 47;
	TokenFalse _ -> cont 48;
	TokenEnd _ -> cont 49;
	TokenNothing _ -> cont 50;
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
         | Single Exp
         | For Exp BExp Exp Exp
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
         | DataNothing
         | EndProgram
         deriving (Show, Read)

data ArgList = ListNode String ArgList
             | EndNode String
             deriving (Show, Read)

data IntExp = Mul IntExp IntExp
         | Div IntExp IntExp
         | Add IntExp IntExp
         | Sub IntExp IntExp 
         | Expo IntExp IntExp
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
