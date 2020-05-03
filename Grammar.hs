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
happyExpList = Happy_Data_Array.listArray (0,240) ([0,0,22671,0,0,22671,0,2,0,512,0,0,2048,0,0,512,0,0,512,0,0,512,0,0,0,0,0,0,0,0,0,3680,0,0,0,0,0,2,0,0,0,22671,0,2048,0,0,2048,0,0,2560,0,0,3072,0,512,512,24578,512,528,26114,0,0,22671,512,528,26114,0,0,8192,512,512,24578,0,0,22671,0,0,0,1024,0,0,0,2017,0,512,512,24578,512,512,24578,2048,0,0,0,0,0,0,0,0,4096,0,0,0,16368,0,1024,12,0,512,528,26114,512,528,26114,2048,0,0,0,0,0,0,0,0,0,1,0,0,2,0,1024,12,0,0,2016,0,0,0,0,512,512,24578,0,0,0,512,512,24578,512,512,24578,512,512,24578,0,2016,0,0,2016,0,0,2016,0,0,2016,0,512,512,24578,512,512,24578,512,512,24578,512,512,24578,512,512,24578,512,512,24578,8192,0,0,512,528,26114,512,528,26114,512,528,26114,0,0,22671,0,0,8192,0,0,0,1024,16368,0,1024,12,0,8192,0,0,0,2048,0,0,2048,0,512,2560,24578,512,2560,24578,32768,0,0,0,0,8192,0,0,0,1024,2016,0,512,512,24578,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,32,0,2016,0,512,512,24578,0,2016,0,512,512,24578,512,512,24578,512,512,24578,0,0,22671,0,0,0,4096,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,22671,0,480,0,0,480,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,22671,32768,0,0,16384,0,0,0,2016,0,0,2016,0,0,2016,0,0,2016,0,512,0,0,32768,0,0,0,16384,80,0,0,8192,0,0,0,0,49152,80,1024,0,0,0,0,256,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,22671,0,0,22671,16384,0,0,16384,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","OuterExp","Exp","ExpList","ArgList","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","','","';'","'&&'","'||'","'!'","'*'","'/'","'%'","'^'","'-'","'+'","'='","'>'","'<'","length","empty","print","streams","while","for","take","drop","peek","if","else","true","false","end","nothing","int","string","%eof"]
        bit_start = st * 48
        bit_end = (st + 1) * 48
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..47]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (33) = happyShift action_3
action_0 (34) = happyShift action_4
action_0 (35) = happyShift action_5
action_0 (36) = happyShift action_6
action_0 (40) = happyShift action_7
action_0 (44) = happyShift action_8
action_0 (45) = happyShift action_9
action_0 (47) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 (5) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (33) = happyShift action_3
action_1 (34) = happyShift action_4
action_1 (35) = happyShift action_5
action_1 (36) = happyShift action_6
action_1 (40) = happyShift action_7
action_1 (44) = happyShift action_8
action_1 (45) = happyShift action_9
action_1 (47) = happyShift action_10
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

action_11 (48) = happyAccept
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (18) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (33) = happyShift action_3
action_13 (34) = happyShift action_4
action_13 (35) = happyShift action_5
action_13 (36) = happyShift action_6
action_13 (40) = happyShift action_7
action_13 (44) = happyShift action_8
action_13 (45) = happyShift action_9
action_13 (47) = happyShift action_10
action_13 (4) = happyGoto action_25
action_13 (5) = happyGoto action_12
action_13 _ = happyReduce_2

action_14 (28) = happyShift action_50
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_49
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_47
action_16 (28) = happyShift action_48
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (27) = happyShift action_45
action_17 (28) = happyShift action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_28
action_18 (26) = happyShift action_29
action_18 (34) = happyShift action_30
action_18 (46) = happyShift action_31
action_18 (47) = happyShift action_32
action_18 (8) = happyGoto action_44
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_36
action_19 (21) = happyShift action_37
action_19 (26) = happyShift action_29
action_19 (34) = happyShift action_38
action_19 (42) = happyShift action_39
action_19 (43) = happyShift action_40
action_19 (46) = happyShift action_31
action_19 (47) = happyShift action_32
action_19 (8) = happyGoto action_34
action_19 (9) = happyGoto action_43
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (33) = happyShift action_3
action_20 (34) = happyShift action_4
action_20 (35) = happyShift action_5
action_20 (36) = happyShift action_6
action_20 (40) = happyShift action_7
action_20 (44) = happyShift action_8
action_20 (45) = happyShift action_9
action_20 (47) = happyShift action_10
action_20 (5) = happyGoto action_41
action_20 (6) = happyGoto action_42
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyShift action_36
action_21 (21) = happyShift action_37
action_21 (26) = happyShift action_29
action_21 (34) = happyShift action_38
action_21 (42) = happyShift action_39
action_21 (43) = happyShift action_40
action_21 (46) = happyShift action_31
action_21 (47) = happyShift action_32
action_21 (8) = happyGoto action_34
action_21 (9) = happyGoto action_35
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (46) = happyShift action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_28
action_23 (26) = happyShift action_29
action_23 (34) = happyShift action_30
action_23 (46) = happyShift action_31
action_23 (47) = happyShift action_32
action_23 (7) = happyGoto action_26
action_23 (8) = happyGoto action_27
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (33) = happyShift action_3
action_24 (34) = happyShift action_4
action_24 (35) = happyShift action_5
action_24 (36) = happyShift action_6
action_24 (40) = happyShift action_7
action_24 (44) = happyShift action_8
action_24 (45) = happyShift action_9
action_24 (47) = happyShift action_10
action_24 (4) = happyGoto action_25
action_24 (5) = happyGoto action_12
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_1

action_26 (11) = happyShift action_80
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (17) = happyShift action_79
action_27 (22) = happyShift action_55
action_27 (23) = happyShift action_56
action_27 (24) = happyShift action_57
action_27 (25) = happyShift action_58
action_27 (26) = happyShift action_59
action_27 (27) = happyShift action_60
action_27 _ = happyReduce_20

action_28 (10) = happyShift action_28
action_28 (26) = happyShift action_29
action_28 (34) = happyShift action_30
action_28 (46) = happyShift action_31
action_28 (47) = happyShift action_32
action_28 (8) = happyGoto action_78
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_28
action_29 (26) = happyShift action_29
action_29 (34) = happyShift action_30
action_29 (46) = happyShift action_31
action_29 (47) = happyShift action_32
action_29 (8) = happyGoto action_77
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_76
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_29

action_32 _ = happyReduce_30

action_33 (13) = happyShift action_75
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (21) = happyShift action_71
action_34 (22) = happyShift action_55
action_34 (23) = happyShift action_56
action_34 (24) = happyShift action_57
action_34 (25) = happyShift action_58
action_34 (26) = happyShift action_59
action_34 (27) = happyShift action_60
action_34 (28) = happyShift action_72
action_34 (29) = happyShift action_73
action_34 (30) = happyShift action_74
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_70
action_35 (19) = happyShift action_62
action_35 (20) = happyShift action_63
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_36
action_36 (21) = happyShift action_37
action_36 (26) = happyShift action_29
action_36 (34) = happyShift action_38
action_36 (42) = happyShift action_39
action_36 (43) = happyShift action_40
action_36 (46) = happyShift action_31
action_36 (47) = happyShift action_32
action_36 (8) = happyGoto action_68
action_36 (9) = happyGoto action_69
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (10) = happyShift action_36
action_37 (21) = happyShift action_37
action_37 (26) = happyShift action_29
action_37 (34) = happyShift action_38
action_37 (42) = happyShift action_39
action_37 (43) = happyShift action_40
action_37 (46) = happyShift action_31
action_37 (47) = happyShift action_32
action_37 (8) = happyGoto action_34
action_37 (9) = happyGoto action_67
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_66
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_38

action_40 _ = happyReduce_39

action_41 (17) = happyShift action_65
action_41 _ = happyReduce_18

action_42 (18) = happyShift action_64
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_61
action_43 (19) = happyShift action_62
action_43 (20) = happyShift action_63
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_55
action_44 (23) = happyShift action_56
action_44 (24) = happyShift action_57
action_44 (25) = happyShift action_58
action_44 (26) = happyShift action_59
action_44 (27) = happyShift action_60
action_44 _ = happyReduce_8

action_45 _ = happyReduce_6

action_46 (10) = happyShift action_28
action_46 (26) = happyShift action_29
action_46 (34) = happyShift action_30
action_46 (46) = happyShift action_31
action_46 (47) = happyShift action_32
action_46 (8) = happyGoto action_54
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_7

action_48 (10) = happyShift action_28
action_48 (26) = happyShift action_29
action_48 (34) = happyShift action_30
action_48 (46) = happyShift action_31
action_48 (47) = happyShift action_32
action_48 (8) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (10) = happyShift action_28
action_49 (26) = happyShift action_29
action_49 (34) = happyShift action_30
action_49 (46) = happyShift action_31
action_49 (47) = happyShift action_32
action_49 (8) = happyGoto action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (10) = happyShift action_28
action_50 (26) = happyShift action_29
action_50 (34) = happyShift action_30
action_50 (46) = happyShift action_31
action_50 (47) = happyShift action_32
action_50 (8) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_55
action_51 (23) = happyShift action_56
action_51 (24) = happyShift action_57
action_51 (25) = happyShift action_58
action_51 (26) = happyShift action_59
action_51 (27) = happyShift action_60
action_51 _ = happyReduce_9

action_52 (22) = happyShift action_55
action_52 (23) = happyShift action_56
action_52 (24) = happyShift action_57
action_52 (25) = happyShift action_58
action_52 (26) = happyShift action_59
action_52 (27) = happyShift action_60
action_52 _ = happyReduce_10

action_53 (22) = happyShift action_55
action_53 (23) = happyShift action_56
action_53 (24) = happyShift action_57
action_53 (25) = happyShift action_58
action_53 (26) = happyShift action_59
action_53 (27) = happyShift action_60
action_53 _ = happyReduce_12

action_54 (22) = happyShift action_55
action_54 (23) = happyShift action_56
action_54 (24) = happyShift action_57
action_54 (25) = happyShift action_58
action_54 (26) = happyShift action_59
action_54 (27) = happyShift action_60
action_54 _ = happyReduce_11

action_55 (10) = happyShift action_28
action_55 (26) = happyShift action_29
action_55 (34) = happyShift action_30
action_55 (46) = happyShift action_31
action_55 (47) = happyShift action_32
action_55 (8) = happyGoto action_104
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_28
action_56 (26) = happyShift action_29
action_56 (34) = happyShift action_30
action_56 (46) = happyShift action_31
action_56 (47) = happyShift action_32
action_56 (8) = happyGoto action_103
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (10) = happyShift action_28
action_57 (26) = happyShift action_29
action_57 (34) = happyShift action_30
action_57 (46) = happyShift action_31
action_57 (47) = happyShift action_32
action_57 (8) = happyGoto action_102
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_28
action_58 (26) = happyShift action_29
action_58 (34) = happyShift action_30
action_58 (46) = happyShift action_31
action_58 (47) = happyShift action_32
action_58 (8) = happyGoto action_101
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (10) = happyShift action_28
action_59 (26) = happyShift action_29
action_59 (34) = happyShift action_30
action_59 (46) = happyShift action_31
action_59 (47) = happyShift action_32
action_59 (8) = happyGoto action_100
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (10) = happyShift action_28
action_60 (26) = happyShift action_29
action_60 (34) = happyShift action_30
action_60 (46) = happyShift action_31
action_60 (47) = happyShift action_32
action_60 (8) = happyGoto action_99
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_98
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (10) = happyShift action_36
action_62 (21) = happyShift action_37
action_62 (26) = happyShift action_29
action_62 (34) = happyShift action_38
action_62 (42) = happyShift action_39
action_62 (43) = happyShift action_40
action_62 (46) = happyShift action_31
action_62 (47) = happyShift action_32
action_62 (8) = happyGoto action_34
action_62 (9) = happyGoto action_97
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_36
action_63 (21) = happyShift action_37
action_63 (26) = happyShift action_29
action_63 (34) = happyShift action_38
action_63 (42) = happyShift action_39
action_63 (43) = happyShift action_40
action_63 (46) = happyShift action_31
action_63 (47) = happyShift action_32
action_63 (8) = happyGoto action_34
action_63 (9) = happyGoto action_96
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_36
action_64 (21) = happyShift action_37
action_64 (26) = happyShift action_29
action_64 (34) = happyShift action_38
action_64 (42) = happyShift action_39
action_64 (43) = happyShift action_40
action_64 (46) = happyShift action_31
action_64 (47) = happyShift action_32
action_64 (8) = happyGoto action_34
action_64 (9) = happyGoto action_95
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (33) = happyShift action_3
action_65 (34) = happyShift action_4
action_65 (35) = happyShift action_5
action_65 (36) = happyShift action_6
action_65 (40) = happyShift action_7
action_65 (44) = happyShift action_8
action_65 (45) = happyShift action_9
action_65 (47) = happyShift action_10
action_65 (5) = happyGoto action_41
action_65 (6) = happyGoto action_94
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (46) = happyShift action_93
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_37

action_68 (11) = happyShift action_82
action_68 (21) = happyShift action_71
action_68 (22) = happyShift action_55
action_68 (23) = happyShift action_56
action_68 (24) = happyShift action_57
action_68 (25) = happyShift action_58
action_68 (26) = happyShift action_59
action_68 (27) = happyShift action_60
action_68 (28) = happyShift action_72
action_68 (29) = happyShift action_73
action_68 (30) = happyShift action_74
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (11) = happyShift action_92
action_69 (19) = happyShift action_62
action_69 (20) = happyShift action_63
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_91
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (28) = happyShift action_90
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (28) = happyShift action_89
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (10) = happyShift action_28
action_73 (26) = happyShift action_29
action_73 (28) = happyShift action_88
action_73 (34) = happyShift action_30
action_73 (46) = happyShift action_31
action_73 (47) = happyShift action_32
action_73 (8) = happyGoto action_87
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (10) = happyShift action_28
action_74 (26) = happyShift action_29
action_74 (28) = happyShift action_86
action_74 (34) = happyShift action_30
action_74 (46) = happyShift action_31
action_74 (47) = happyShift action_32
action_74 (8) = happyGoto action_85
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_84
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (46) = happyShift action_83
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_28

action_78 (11) = happyShift action_82
action_78 (22) = happyShift action_55
action_78 (23) = happyShift action_56
action_78 (24) = happyShift action_57
action_78 (25) = happyShift action_58
action_78 (26) = happyShift action_59
action_78 (27) = happyShift action_60
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (10) = happyShift action_28
action_79 (26) = happyShift action_29
action_79 (34) = happyShift action_30
action_79 (46) = happyShift action_31
action_79 (47) = happyShift action_32
action_79 (7) = happyGoto action_81
action_79 (8) = happyGoto action_27
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_13

action_81 _ = happyReduce_19

action_82 _ = happyReduce_21

action_83 (13) = happyShift action_114
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (38) = happyShift action_113
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (22) = happyShift action_55
action_85 (23) = happyShift action_56
action_85 (24) = happyShift action_57
action_85 (25) = happyShift action_58
action_85 (26) = happyShift action_59
action_85 (27) = happyShift action_60
action_85 _ = happyReduce_41

action_86 (10) = happyShift action_28
action_86 (26) = happyShift action_29
action_86 (34) = happyShift action_30
action_86 (46) = happyShift action_31
action_86 (47) = happyShift action_32
action_86 (8) = happyGoto action_112
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (22) = happyShift action_55
action_87 (23) = happyShift action_56
action_87 (24) = happyShift action_57
action_87 (25) = happyShift action_58
action_87 (26) = happyShift action_59
action_87 (27) = happyShift action_60
action_87 _ = happyReduce_40

action_88 (10) = happyShift action_28
action_88 (26) = happyShift action_29
action_88 (34) = happyShift action_30
action_88 (46) = happyShift action_31
action_88 (47) = happyShift action_32
action_88 (8) = happyGoto action_111
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (10) = happyShift action_28
action_89 (26) = happyShift action_29
action_89 (34) = happyShift action_30
action_89 (46) = happyShift action_31
action_89 (47) = happyShift action_32
action_89 (8) = happyGoto action_110
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (10) = happyShift action_28
action_90 (26) = happyShift action_29
action_90 (34) = happyShift action_30
action_90 (46) = happyShift action_31
action_90 (47) = happyShift action_32
action_90 (8) = happyGoto action_109
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (33) = happyShift action_3
action_91 (34) = happyShift action_4
action_91 (35) = happyShift action_5
action_91 (36) = happyShift action_6
action_91 (40) = happyShift action_7
action_91 (44) = happyShift action_8
action_91 (45) = happyShift action_9
action_91 (47) = happyShift action_10
action_91 (4) = happyGoto action_108
action_91 (5) = happyGoto action_12
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_34

action_93 (13) = happyShift action_107
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_17

action_95 (18) = happyShift action_106
action_95 (19) = happyShift action_62
action_95 (20) = happyShift action_63
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_36

action_97 _ = happyReduce_35

action_98 (33) = happyShift action_3
action_98 (34) = happyShift action_4
action_98 (35) = happyShift action_5
action_98 (36) = happyShift action_6
action_98 (40) = happyShift action_7
action_98 (44) = happyShift action_8
action_98 (45) = happyShift action_9
action_98 (47) = happyShift action_10
action_98 (4) = happyGoto action_105
action_98 (5) = happyGoto action_12
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (22) = happyShift action_55
action_99 (23) = happyShift action_56
action_99 (24) = happyShift action_57
action_99 (25) = happyShift action_58
action_99 _ = happyReduce_24

action_100 (22) = happyShift action_55
action_100 (23) = happyShift action_56
action_100 (24) = happyShift action_57
action_100 (25) = happyShift action_58
action_100 _ = happyReduce_25

action_101 _ = happyReduce_27

action_102 _ = happyReduce_26

action_103 _ = happyReduce_23

action_104 _ = happyReduce_22

action_105 (15) = happyShift action_120
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (33) = happyShift action_3
action_106 (34) = happyShift action_4
action_106 (35) = happyShift action_5
action_106 (36) = happyShift action_6
action_106 (40) = happyShift action_7
action_106 (44) = happyShift action_8
action_106 (45) = happyShift action_9
action_106 (47) = happyShift action_10
action_106 (5) = happyGoto action_41
action_106 (6) = happyGoto action_119
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (16) = happyShift action_118
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (15) = happyShift action_117
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (22) = happyShift action_55
action_109 (23) = happyShift action_56
action_109 (24) = happyShift action_57
action_109 (25) = happyShift action_58
action_109 (26) = happyShift action_59
action_109 (27) = happyShift action_60
action_109 _ = happyReduce_45

action_110 (22) = happyShift action_55
action_110 (23) = happyShift action_56
action_110 (24) = happyShift action_57
action_110 (25) = happyShift action_58
action_110 (26) = happyShift action_59
action_110 (27) = happyShift action_60
action_110 _ = happyReduce_44

action_111 (22) = happyShift action_55
action_111 (23) = happyShift action_56
action_111 (24) = happyShift action_57
action_111 (25) = happyShift action_58
action_111 (26) = happyShift action_59
action_111 (27) = happyShift action_60
action_111 _ = happyReduce_42

action_112 (22) = happyShift action_55
action_112 (23) = happyShift action_56
action_112 (24) = happyShift action_57
action_112 (25) = happyShift action_58
action_112 (26) = happyShift action_59
action_112 (27) = happyShift action_60
action_112 _ = happyReduce_43

action_113 (10) = happyShift action_116
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (16) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (31) = happyShift action_123
action_115 (37) = happyShift action_125
action_115 (39) = happyShift action_126
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (46) = happyShift action_127
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_4

action_118 (31) = happyShift action_123
action_118 (32) = happyShift action_124
action_118 (37) = happyShift action_125
action_118 (39) = happyShift action_126
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (11) = happyShift action_122
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (41) = happyShift action_121
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (14) = happyShift action_130
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (14) = happyShift action_129
action_122 _ = happyFail (happyExpListPerState 122)

action_123 _ = happyReduce_32

action_124 _ = happyReduce_46

action_125 _ = happyReduce_31

action_126 _ = happyReduce_33

action_127 (11) = happyShift action_128
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_14

action_129 (33) = happyShift action_3
action_129 (34) = happyShift action_4
action_129 (35) = happyShift action_5
action_129 (36) = happyShift action_6
action_129 (40) = happyShift action_7
action_129 (44) = happyShift action_8
action_129 (45) = happyShift action_9
action_129 (47) = happyShift action_10
action_129 (4) = happyGoto action_132
action_129 (5) = happyGoto action_12
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (33) = happyShift action_3
action_130 (34) = happyShift action_4
action_130 (35) = happyShift action_5
action_130 (36) = happyShift action_6
action_130 (40) = happyShift action_7
action_130 (44) = happyShift action_8
action_130 (45) = happyShift action_9
action_130 (47) = happyShift action_10
action_130 (4) = happyGoto action_131
action_130 (5) = happyGoto action_12
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (15) = happyShift action_134
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (15) = happyShift action_133
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_3

action_134 _ = happyReduce_5

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

happyReduce_28 = happySpecReduce_2  8 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Neg happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  8 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (DataInt happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  8 happyReduction_30
happyReduction_30 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn8
		 (GetVar happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happyReduce 6 8 happyReduction_31
happyReduction_31 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (TakeFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 8 happyReduction_32
happyReduction_32 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (GetLength happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 8 happyReduction_33
happyReduction_33 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PeekFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  9 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Not happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  9 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn9
		 (DataBool True
	)

happyReduce_39 = happySpecReduce_1  9 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn9
		 (DataBool False
	)

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 9 happyReduction_42
happyReduction_42 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 9 happyReduction_43
happyReduction_43 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 4 9 happyReduction_44
happyReduction_44 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 4 9 happyReduction_45
happyReduction_45 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 6 9 happyReduction_46
happyReduction_46 (_ `HappyStk`
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
	action 48 48 notHappyAtAll (HappyState action) sts stk []

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
	TokenLength _ -> cont 31;
	TokenEmpty _ -> cont 32;
	TokenPrint _ -> cont 33;
	TokenStreams _ -> cont 34;
	TokenWhile _ -> cont 35;
	TokenFor _ -> cont 36;
	TokenTake _ -> cont 37;
	TokenDrop _ -> cont 38;
	TokenPeek _ -> cont 39;
	TokenIf _ -> cont 40;
	TokenElse _ -> cont 41;
	TokenTrue _ -> cont 42;
	TokenFalse _ -> cont 43;
	TokenEnd _ -> cont 44;
	TokenNothing _ -> cont 45;
	TokenInt _ happy_dollar_dollar -> cont 46;
	TokenString _ happy_dollar_dollar -> cont 47;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 48 tk tks = happyError' (tks, explist)
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
