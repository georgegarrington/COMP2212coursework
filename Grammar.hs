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
happyExpList = Happy_Data_Array.listArray (0,276) ([0,0,2544,5,0,40704,80,128,0,0,8,0,0,128,0,0,8192,0,0,32768,0,0,0,8,0,0,128,0,0,0,0,0,0,49152,403,0,2048,0,0,0,0,2544,2053,16384,1024,32864,0,16388,1536,8,64,24580,128,1024,64,2054,16384,1024,96,0,0,0,0,0,0,128,1028,49216,6,0,40704,32848,1024,16388,1728,0,0,8192,0,0,0,4,0,0,64,1,0,0,16,0,0,16384,0,0,16384,0,0,0,15360,124,0,12304,0,0,128,1028,49216,2054,16448,1024,32876,0,16388,1536,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,4096,48,0,0,14336,12,0,8,64,24580,512,0,0,0,50048,0,0,2,0,0,32768,195,0,0,3128,0,0,50048,0,0,0,0,0,8,64,24580,128,1024,64,2054,16384,1024,32864,0,16388,1536,8,64,24580,0,0,0,2,0,0,32,14337,12,0,0,0,256,128,1028,49216,2054,16448,1024,32876,1024,61444,1993,0,0,8192,0,0,0,0,0,0,0,15361,124,0,12304,0,0,2048,0,0,0,0,1,0,0,16,0,8,320,24580,128,5120,64,6,2,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,4,32768,195,0,128,1024,64,6,50048,0,32768,0,16388,1536,8,64,24580,128,1024,64,6,0,40704,80,0,0,0,0,0,0,1024,0,0,0,56,0,0,2,0,0,0,6204,0,0,0,0,0,0,0,0,8,0,0,64,0,0,1024,0,0,0,896,0,0,14336,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,512,0,0,0,0,2544,5,0,0,32,0,61440,1289,512,0,0,36864,0,0,0,50048,0,0,14336,12,0,32768,195,0,0,3128,0,2048,0,0,0,1,0,0,0,0,0,0,0,14,4096,8,0,0,4,0,0,2304,0,0,0,0,514,0,0,32,32768,0,0,0,8,0,0,0,0,8192,0,2,0,0,8,0,0,8,0,0,128,0,0,0,0,0,0,1,0,0,16,0,0,0,0,2544,5,0,16608,0,8,0,0,16,0,0,256,0,0,0,0,0,0,0,0,0,0,0,20639,36864,0,0,0,0,0,0,0,0,0,0,0,0,36864,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","ArgList","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","','","';'","'&&'","'||'","'!'","'*'","'/'","'%'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","'--'","length","empty","notEmpty","print","printAll","streams","while","for","take","drop","if","then","else","true","false","end","int","string","%eof"]
        bit_start = st * 52
        bit_end = (st + 1) * 52
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..51]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (37) = happyShift action_3
action_0 (38) = happyShift action_4
action_0 (39) = happyShift action_5
action_0 (40) = happyShift action_6
action_0 (41) = happyShift action_7
action_0 (44) = happyShift action_8
action_0 (49) = happyShift action_9
action_0 (51) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (37) = happyShift action_3
action_1 (38) = happyShift action_4
action_1 (39) = happyShift action_5
action_1 (40) = happyShift action_6
action_1 (41) = happyShift action_7
action_1 (44) = happyShift action_8
action_1 (49) = happyShift action_9
action_1 (51) = happyShift action_10
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_12
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_25
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyShift action_24
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_23
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_22
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_21
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_20
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_17

action_10 (23) = happyShift action_13
action_10 (24) = happyShift action_14
action_10 (25) = happyShift action_15
action_10 (26) = happyShift action_16
action_10 (29) = happyShift action_17
action_10 (32) = happyShift action_18
action_10 (33) = happyShift action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_12
action_11 (52) = happyAccept
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (37) = happyShift action_3
action_12 (38) = happyShift action_4
action_12 (39) = happyShift action_5
action_12 (40) = happyShift action_6
action_12 (41) = happyShift action_7
action_12 (44) = happyShift action_8
action_12 (49) = happyShift action_9
action_12 (51) = happyShift action_10
action_12 (4) = happyGoto action_50
action_12 _ = happyReduce_2

action_13 (8) = happyShift action_43
action_13 (27) = happyShift action_34
action_13 (39) = happyShift action_46
action_13 (50) = happyShift action_38
action_13 (51) = happyShift action_39
action_13 (6) = happyGoto action_49
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_43
action_14 (27) = happyShift action_34
action_14 (39) = happyShift action_46
action_14 (50) = happyShift action_38
action_14 (51) = happyShift action_39
action_14 (6) = happyGoto action_48
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_43
action_15 (27) = happyShift action_34
action_15 (39) = happyShift action_46
action_15 (50) = happyShift action_38
action_15 (51) = happyShift action_39
action_15 (6) = happyGoto action_47
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_43
action_16 (27) = happyShift action_34
action_16 (39) = happyShift action_46
action_16 (50) = happyShift action_38
action_16 (51) = happyShift action_39
action_16 (6) = happyGoto action_45
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_43
action_17 (27) = happyShift action_34
action_17 (39) = happyShift action_44
action_17 (50) = happyShift action_38
action_17 (51) = happyShift action_39
action_17 (6) = happyGoto action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_6

action_19 _ = happyReduce_7

action_20 (8) = happyShift action_32
action_20 (19) = happyShift action_33
action_20 (27) = happyShift action_34
action_20 (39) = happyShift action_35
action_20 (47) = happyShift action_36
action_20 (48) = happyShift action_37
action_20 (50) = happyShift action_38
action_20 (51) = happyShift action_39
action_20 (6) = happyGoto action_30
action_20 (7) = happyGoto action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (37) = happyShift action_3
action_21 (38) = happyShift action_4
action_21 (39) = happyShift action_5
action_21 (40) = happyShift action_6
action_21 (41) = happyShift action_7
action_21 (44) = happyShift action_8
action_21 (49) = happyShift action_9
action_21 (51) = happyShift action_10
action_21 (4) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_32
action_22 (19) = happyShift action_33
action_22 (27) = happyShift action_34
action_22 (39) = happyShift action_35
action_22 (47) = happyShift action_36
action_22 (48) = happyShift action_37
action_22 (50) = happyShift action_38
action_22 (51) = happyShift action_39
action_22 (6) = happyGoto action_30
action_22 (7) = happyGoto action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (50) = happyShift action_29
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (51) = happyShift action_28
action_24 (5) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (51) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_76
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_75
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (15) = happyShift action_74
action_28 _ = happyReduce_19

action_29 (11) = happyShift action_73
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_69
action_30 (20) = happyShift action_51
action_30 (21) = happyShift action_52
action_30 (22) = happyShift action_53
action_30 (27) = happyShift action_54
action_30 (28) = happyShift action_55
action_30 (29) = happyShift action_70
action_30 (30) = happyShift action_71
action_30 (31) = happyShift action_72
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_68
action_31 (17) = happyShift action_60
action_31 (18) = happyShift action_61
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (8) = happyShift action_32
action_32 (19) = happyShift action_33
action_32 (27) = happyShift action_34
action_32 (39) = happyShift action_35
action_32 (47) = happyShift action_36
action_32 (48) = happyShift action_37
action_32 (50) = happyShift action_38
action_32 (51) = happyShift action_39
action_32 (6) = happyGoto action_66
action_32 (7) = happyGoto action_67
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_32
action_33 (19) = happyShift action_33
action_33 (27) = happyShift action_34
action_33 (39) = happyShift action_35
action_33 (47) = happyShift action_36
action_33 (48) = happyShift action_37
action_33 (50) = happyShift action_38
action_33 (51) = happyShift action_39
action_33 (6) = happyGoto action_30
action_33 (7) = happyGoto action_65
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_43
action_34 (27) = happyShift action_34
action_34 (39) = happyShift action_46
action_34 (50) = happyShift action_38
action_34 (51) = happyShift action_39
action_34 (6) = happyGoto action_64
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_63
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_34

action_37 _ = happyReduce_35

action_38 _ = happyReduce_27

action_39 _ = happyReduce_28

action_40 (16) = happyShift action_62
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (9) = happyShift action_59
action_41 (17) = happyShift action_60
action_41 (18) = happyShift action_61
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (20) = happyShift action_51
action_42 (21) = happyShift action_52
action_42 (22) = happyShift action_53
action_42 (27) = happyShift action_54
action_42 (28) = happyShift action_55
action_42 _ = happyReduce_9

action_43 (8) = happyShift action_43
action_43 (27) = happyShift action_34
action_43 (39) = happyShift action_46
action_43 (50) = happyShift action_38
action_43 (51) = happyShift action_39
action_43 (6) = happyGoto action_58
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_57
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (20) = happyShift action_51
action_45 (21) = happyShift action_52
action_45 (22) = happyShift action_53
action_45 (27) = happyShift action_54
action_45 (28) = happyShift action_55
action_45 _ = happyReduce_12

action_46 (10) = happyShift action_56
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_51
action_47 (21) = happyShift action_52
action_47 (22) = happyShift action_53
action_47 (27) = happyShift action_54
action_47 (28) = happyShift action_55
action_47 _ = happyReduce_13

action_48 (20) = happyShift action_51
action_48 (21) = happyShift action_52
action_48 (22) = happyShift action_53
action_48 (27) = happyShift action_54
action_48 (28) = happyShift action_55
action_48 _ = happyReduce_10

action_49 (20) = happyShift action_51
action_49 (21) = happyShift action_52
action_49 (22) = happyShift action_53
action_49 (27) = happyShift action_54
action_49 (28) = happyShift action_55
action_49 _ = happyReduce_11

action_50 _ = happyReduce_1

action_51 (8) = happyShift action_43
action_51 (27) = happyShift action_34
action_51 (39) = happyShift action_46
action_51 (50) = happyShift action_38
action_51 (51) = happyShift action_39
action_51 (6) = happyGoto action_101
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_43
action_52 (27) = happyShift action_34
action_52 (39) = happyShift action_46
action_52 (50) = happyShift action_38
action_52 (51) = happyShift action_39
action_52 (6) = happyGoto action_100
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_43
action_53 (27) = happyShift action_34
action_53 (39) = happyShift action_46
action_53 (50) = happyShift action_38
action_53 (51) = happyShift action_39
action_53 (6) = happyGoto action_99
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (8) = happyShift action_43
action_54 (27) = happyShift action_34
action_54 (39) = happyShift action_46
action_54 (50) = happyShift action_38
action_54 (51) = happyShift action_39
action_54 (6) = happyGoto action_98
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (8) = happyShift action_43
action_55 (27) = happyShift action_34
action_55 (39) = happyShift action_46
action_55 (50) = happyShift action_38
action_55 (51) = happyShift action_39
action_55 (6) = happyGoto action_97
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (50) = happyShift action_96
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (50) = happyShift action_95
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (9) = happyShift action_87
action_58 (20) = happyShift action_51
action_58 (21) = happyShift action_52
action_58 (22) = happyShift action_53
action_58 (27) = happyShift action_54
action_58 (28) = happyShift action_55
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (45) = happyShift action_94
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (8) = happyShift action_32
action_60 (19) = happyShift action_33
action_60 (27) = happyShift action_34
action_60 (39) = happyShift action_35
action_60 (47) = happyShift action_36
action_60 (48) = happyShift action_37
action_60 (50) = happyShift action_38
action_60 (51) = happyShift action_39
action_60 (6) = happyGoto action_30
action_60 (7) = happyGoto action_93
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (8) = happyShift action_32
action_61 (19) = happyShift action_33
action_61 (27) = happyShift action_34
action_61 (39) = happyShift action_35
action_61 (47) = happyShift action_36
action_61 (48) = happyShift action_37
action_61 (50) = happyShift action_38
action_61 (51) = happyShift action_39
action_61 (6) = happyGoto action_30
action_61 (7) = happyGoto action_92
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (8) = happyShift action_32
action_62 (19) = happyShift action_33
action_62 (27) = happyShift action_34
action_62 (37) = happyShift action_3
action_62 (38) = happyShift action_4
action_62 (39) = happyShift action_90
action_62 (40) = happyShift action_6
action_62 (41) = happyShift action_7
action_62 (44) = happyShift action_8
action_62 (47) = happyShift action_36
action_62 (48) = happyShift action_37
action_62 (49) = happyShift action_9
action_62 (50) = happyShift action_38
action_62 (51) = happyShift action_91
action_62 (4) = happyGoto action_50
action_62 (6) = happyGoto action_30
action_62 (7) = happyGoto action_89
action_62 _ = happyReduce_2

action_63 (50) = happyShift action_88
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_26

action_65 _ = happyReduce_33

action_66 (9) = happyShift action_87
action_66 (19) = happyShift action_69
action_66 (20) = happyShift action_51
action_66 (21) = happyShift action_52
action_66 (22) = happyShift action_53
action_66 (27) = happyShift action_54
action_66 (28) = happyShift action_55
action_66 (29) = happyShift action_70
action_66 (30) = happyShift action_71
action_66 (31) = happyShift action_72
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (9) = happyShift action_86
action_67 (17) = happyShift action_60
action_67 (18) = happyShift action_61
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (12) = happyShift action_85
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (29) = happyShift action_84
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (29) = happyShift action_83
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (8) = happyShift action_43
action_71 (27) = happyShift action_34
action_71 (29) = happyShift action_82
action_71 (39) = happyShift action_46
action_71 (50) = happyShift action_38
action_71 (51) = happyShift action_39
action_71 (6) = happyGoto action_81
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (8) = happyShift action_43
action_72 (27) = happyShift action_34
action_72 (29) = happyShift action_80
action_72 (39) = happyShift action_46
action_72 (50) = happyShift action_38
action_72 (51) = happyShift action_39
action_72 (6) = happyGoto action_79
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (14) = happyShift action_78
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (51) = happyShift action_28
action_74 (5) = happyGoto action_77
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_15

action_76 _ = happyReduce_14

action_77 _ = happyReduce_18

action_78 (43) = happyShift action_113
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (20) = happyShift action_51
action_79 (21) = happyShift action_52
action_79 (22) = happyShift action_53
action_79 (27) = happyShift action_54
action_79 (28) = happyShift action_55
action_79 _ = happyReduce_37

action_80 (8) = happyShift action_43
action_80 (27) = happyShift action_34
action_80 (39) = happyShift action_46
action_80 (50) = happyShift action_38
action_80 (51) = happyShift action_39
action_80 (6) = happyGoto action_112
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (20) = happyShift action_51
action_81 (21) = happyShift action_52
action_81 (22) = happyShift action_53
action_81 (27) = happyShift action_54
action_81 (28) = happyShift action_55
action_81 _ = happyReduce_36

action_82 (8) = happyShift action_43
action_82 (27) = happyShift action_34
action_82 (39) = happyShift action_46
action_82 (50) = happyShift action_38
action_82 (51) = happyShift action_39
action_82 (6) = happyGoto action_111
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (8) = happyShift action_43
action_83 (27) = happyShift action_34
action_83 (39) = happyShift action_46
action_83 (50) = happyShift action_38
action_83 (51) = happyShift action_39
action_83 (6) = happyGoto action_110
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (8) = happyShift action_43
action_84 (27) = happyShift action_34
action_84 (39) = happyShift action_46
action_84 (50) = happyShift action_38
action_84 (51) = happyShift action_39
action_84 (6) = happyGoto action_109
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (37) = happyShift action_3
action_85 (38) = happyShift action_4
action_85 (39) = happyShift action_5
action_85 (40) = happyShift action_6
action_85 (41) = happyShift action_7
action_85 (44) = happyShift action_8
action_85 (49) = happyShift action_9
action_85 (51) = happyShift action_10
action_85 (4) = happyGoto action_108
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_30

action_87 _ = happyReduce_20

action_88 (11) = happyShift action_107
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (16) = happyShift action_106
action_89 (17) = happyShift action_60
action_89 (18) = happyShift action_61
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (10) = happyShift action_105
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (23) = happyShift action_13
action_91 (24) = happyShift action_14
action_91 (25) = happyShift action_15
action_91 (26) = happyShift action_16
action_91 (29) = happyShift action_17
action_91 (32) = happyShift action_18
action_91 (33) = happyShift action_19
action_91 _ = happyReduce_28

action_92 _ = happyReduce_32

action_93 _ = happyReduce_31

action_94 (12) = happyShift action_104
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (11) = happyShift action_103
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (11) = happyShift action_102
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (20) = happyShift action_51
action_97 (21) = happyShift action_52
action_97 (22) = happyShift action_53
action_97 _ = happyReduce_23

action_98 (20) = happyShift action_51
action_98 (21) = happyShift action_52
action_98 (22) = happyShift action_53
action_98 _ = happyReduce_24

action_99 _ = happyReduce_25

action_100 _ = happyReduce_22

action_101 _ = happyReduce_21

action_102 (14) = happyShift action_121
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (14) = happyShift action_120
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (37) = happyShift action_3
action_104 (38) = happyShift action_4
action_104 (39) = happyShift action_5
action_104 (40) = happyShift action_6
action_104 (41) = happyShift action_7
action_104 (44) = happyShift action_8
action_104 (49) = happyShift action_9
action_104 (51) = happyShift action_10
action_104 (4) = happyGoto action_119
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (50) = happyShift action_118
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (37) = happyShift action_3
action_106 (38) = happyShift action_4
action_106 (39) = happyShift action_5
action_106 (40) = happyShift action_6
action_106 (41) = happyShift action_7
action_106 (44) = happyShift action_8
action_106 (49) = happyShift action_9
action_106 (51) = happyShift action_10
action_106 (4) = happyGoto action_117
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (14) = happyShift action_116
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (13) = happyShift action_115
action_108 (16) = happyShift action_12
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (20) = happyShift action_51
action_109 (21) = happyShift action_52
action_109 (22) = happyShift action_53
action_109 (27) = happyShift action_54
action_109 (28) = happyShift action_55
action_109 _ = happyReduce_41

action_110 (20) = happyShift action_51
action_110 (21) = happyShift action_52
action_110 (22) = happyShift action_53
action_110 (27) = happyShift action_54
action_110 (28) = happyShift action_55
action_110 _ = happyReduce_40

action_111 (20) = happyShift action_51
action_111 (21) = happyShift action_52
action_111 (22) = happyShift action_53
action_111 (27) = happyShift action_54
action_111 (28) = happyShift action_55
action_111 _ = happyReduce_38

action_112 (20) = happyShift action_51
action_112 (21) = happyShift action_52
action_112 (22) = happyShift action_53
action_112 (27) = happyShift action_54
action_112 (28) = happyShift action_55
action_112 _ = happyReduce_39

action_113 (8) = happyShift action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (9) = happyShift action_129
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_4

action_116 (34) = happyShift action_122
action_116 (35) = happyShift action_127
action_116 (36) = happyShift action_128
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (9) = happyShift action_126
action_117 (16) = happyShift action_12
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (11) = happyShift action_125
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (13) = happyShift action_124
action_119 (16) = happyShift action_12
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (34) = happyShift action_122
action_120 (42) = happyShift action_123
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (34) = happyShift action_122
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (8) = happyShift action_136
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (8) = happyShift action_135
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (46) = happyShift action_134
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (14) = happyShift action_133
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (12) = happyShift action_132
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (8) = happyShift action_131
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (8) = happyShift action_130
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_16

action_130 (9) = happyShift action_142
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (9) = happyShift action_141
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (37) = happyShift action_3
action_132 (38) = happyShift action_4
action_132 (39) = happyShift action_5
action_132 (40) = happyShift action_6
action_132 (41) = happyShift action_7
action_132 (44) = happyShift action_8
action_132 (49) = happyShift action_9
action_132 (51) = happyShift action_10
action_132 (4) = happyGoto action_140
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (34) = happyShift action_122
action_133 (35) = happyShift action_127
action_133 (36) = happyShift action_128
action_133 (43) = happyShift action_113
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (12) = happyShift action_139
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (9) = happyShift action_138
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (9) = happyShift action_137
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_29

action_138 _ = happyReduce_8

action_139 (37) = happyShift action_3
action_139 (38) = happyShift action_4
action_139 (39) = happyShift action_5
action_139 (40) = happyShift action_6
action_139 (41) = happyShift action_7
action_139 (44) = happyShift action_8
action_139 (49) = happyShift action_9
action_139 (51) = happyShift action_10
action_139 (4) = happyGoto action_144
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (13) = happyShift action_143
action_140 (16) = happyShift action_12
action_140 _ = happyFail (happyExpListPerState 140)

action_141 _ = happyReduce_43

action_142 _ = happyReduce_42

action_143 _ = happyReduce_3

action_144 (13) = happyShift action_145
action_144 (16) = happyShift action_12
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_5

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

happyReduce_5 = happyReduce 12 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
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
		 (EndProgram
	)

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (ListNode happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (EndNode happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Add happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Neg happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (DataInt happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  6 happyReduction_28
happyReduction_28 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (GetVar happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

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
		 (GetLength happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_3  7 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  7 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (And happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  7 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Or happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  7 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Not happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  7 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn7
		 (DataBool True
	)

happyReduce_35 = happySpecReduce_1  7 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn7
		 (DataBool False
	)

happyReduce_36 = happySpecReduce_3  7 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  7 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 7 happyReduction_38
happyReduction_38 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 7 happyReduction_39
happyReduction_39 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 7 happyReduction_40
happyReduction_40 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 7 happyReduction_41
happyReduction_41 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (NEqual happy_var_1 happy_var_4
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
		 (StreamNotEmpty happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 8 7 happyReduction_43
happyReduction_43 (_ `HappyStk`
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
	action 52 52 notHappyAtAll (HappyState action) sts stk []

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
	TokenFor _ -> cont 41;
	TokenTake _ -> cont 42;
	TokenDrop _ -> cont 43;
	TokenIf _ -> cont 44;
	TokenThen _ -> cont 45;
	TokenElse _ -> cont 46;
	TokenTrue _ -> cont 47;
	TokenFalse _ -> cont 48;
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
