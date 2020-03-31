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
happyExpList = Happy_Data_Array.listArray (0,226) ([0,0,8508,0,0,8508,8192,0,0,0,512,0,256,0,0,256,0,0,64,0,0,64,0,0,0,0,0,8192,0,0,0,0,8508,64,129,22552,64,129,22552,0,0,16384,0,0,16384,0,0,16384,0,0,0,512,0,0,512,0,0,0,3975,0,49280,0,0,64,129,22552,64,129,22552,64,128,16408,256,0,0,256,0,0,0,0,0,0,0,0,0,0,0,49280,0,0,0,0,0,0,0,512,64,129,22552,64,129,22552,0,0,16384,0,0,16384,0,0,0,64,128,16408,256,0,0,0,0,0,128,3975,0,49280,0,0,1024,0,0,0,512,0,64,128,16408,64,128,16408,64,128,16408,64,128,16408,0,512,0,64,640,16408,64,640,16408,4096,0,0,4096,12920,0,0,0,2,64,128,16408,64,128,16408,64,128,16408,64,128,16408,64,128,16408,0,0,0,0,0,0,0,0,128,0,390,0,64,128,16408,0,390,0,64,128,16408,64,128,16408,0,6,0,0,6,0,0,0,0,0,0,0,64,128,16408,0,0,8508,0,0,0,0,0,0,0,0,16384,128,390,0,512,0,0,512,0,0,0,0,0,0,0,0,1024,0,0,0,0,8508,4096,0,0,0,0,0,512,0,0,10240,0,0,0,390,0,0,390,0,0,390,0,0,390,0,64,0,0,0,390,0,256,0,0,0,390,0,0,390,0,0,390,0,0,390,0,64,0,0,128,0,0,0,0,16384,128,0,0,0,0,0,4096,0,0,0,49152,1,10240,0,0,0,0,1024,64,0,0,64,0,0,64,0,0,0,16384,0,0,0,0,512,0,0,0,0,0,4096,0,0,128,0,0,128,0,0,128,0,0,1024,0,0,0,0,8508,0,0,0,0,0,0,0,0,0,0,16384,64,64,0,0,10240,0,0,0,0,0,128,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","IntExp","BExp","'('","')'","'['","']'","'{'","'}'","'.'","';'","'&&'","'||'","'!'","'*'","'/'","'/='","'*='","'-='","'+='","'-'","'+'","'='","'>'","'<'","'++'","'--'","length","empty","notEmpty","print","varSize","vars","streams","while","take","drop","if","then","else","true","false","end","int","%eof"]
        bit_start = st * 48
        bit_end = (st + 1) * 48
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..47]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (35) = happyShift action_3
action_0 (36) = happyShift action_4
action_0 (37) = happyShift action_5
action_0 (38) = happyShift action_6
action_0 (41) = happyShift action_7
action_0 (46) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (35) = happyShift action_3
action_1 (36) = happyShift action_4
action_1 (37) = happyShift action_5
action_1 (38) = happyShift action_6
action_1 (41) = happyShift action_7
action_1 (46) = happyShift action_8
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (14) = happyShift action_10
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (26) = happyShift action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (9) = happyShift action_14
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (9) = happyShift action_13
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (7) = happyShift action_12
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_11
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_16

action_9 (14) = happyShift action_10
action_9 (48) = happyAccept
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (35) = happyShift action_3
action_10 (36) = happyShift action_4
action_10 (37) = happyShift action_5
action_10 (38) = happyShift action_6
action_10 (41) = happyShift action_7
action_10 (46) = happyShift action_8
action_10 (4) = happyGoto action_30
action_10 _ = happyReduce_2

action_11 (7) = happyShift action_21
action_11 (17) = happyShift action_22
action_11 (24) = happyShift action_23
action_11 (36) = happyShift action_24
action_11 (37) = happyShift action_25
action_11 (44) = happyShift action_26
action_11 (45) = happyShift action_27
action_11 (47) = happyShift action_28
action_11 (5) = happyGoto action_19
action_11 (6) = happyGoto action_29
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_21
action_12 (17) = happyShift action_22
action_12 (24) = happyShift action_23
action_12 (36) = happyShift action_24
action_12 (37) = happyShift action_25
action_12 (44) = happyShift action_26
action_12 (45) = happyShift action_27
action_12 (47) = happyShift action_28
action_12 (5) = happyGoto action_19
action_12 (6) = happyGoto action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (47) = happyShift action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (47) = happyShift action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (47) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_3

action_17 (10) = happyShift action_52
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_51
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (17) = happyShift action_43
action_19 (18) = happyShift action_44
action_19 (19) = happyShift action_45
action_19 (24) = happyShift action_46
action_19 (25) = happyShift action_47
action_19 (26) = happyShift action_48
action_19 (27) = happyShift action_49
action_19 (28) = happyShift action_50
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_42
action_20 (15) = happyShift action_32
action_20 (16) = happyShift action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_21
action_21 (17) = happyShift action_22
action_21 (24) = happyShift action_23
action_21 (36) = happyShift action_24
action_21 (37) = happyShift action_25
action_21 (44) = happyShift action_26
action_21 (45) = happyShift action_27
action_21 (47) = happyShift action_28
action_21 (5) = happyGoto action_40
action_21 (6) = happyGoto action_41
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_21
action_22 (17) = happyShift action_22
action_22 (24) = happyShift action_23
action_22 (36) = happyShift action_24
action_22 (37) = happyShift action_25
action_22 (44) = happyShift action_26
action_22 (45) = happyShift action_27
action_22 (47) = happyShift action_28
action_22 (5) = happyGoto action_19
action_22 (6) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_37
action_23 (24) = happyShift action_23
action_23 (36) = happyShift action_24
action_23 (37) = happyShift action_38
action_23 (47) = happyShift action_28
action_23 (5) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_30

action_27 _ = happyReduce_31

action_28 _ = happyReduce_23

action_29 (8) = happyShift action_31
action_29 (15) = happyShift action_32
action_29 (16) = happyShift action_33
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_1

action_31 (42) = happyShift action_81
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_21
action_32 (17) = happyShift action_22
action_32 (24) = happyShift action_23
action_32 (36) = happyShift action_24
action_32 (37) = happyShift action_25
action_32 (44) = happyShift action_26
action_32 (45) = happyShift action_27
action_32 (47) = happyShift action_28
action_32 (5) = happyGoto action_19
action_32 (6) = happyGoto action_80
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_21
action_33 (17) = happyShift action_22
action_33 (24) = happyShift action_23
action_33 (36) = happyShift action_24
action_33 (37) = happyShift action_25
action_33 (44) = happyShift action_26
action_33 (45) = happyShift action_27
action_33 (47) = happyShift action_28
action_33 (5) = happyGoto action_19
action_33 (6) = happyGoto action_79
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (47) = happyShift action_78
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (47) = happyShift action_77
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_22

action_37 (7) = happyShift action_37
action_37 (24) = happyShift action_23
action_37 (36) = happyShift action_24
action_37 (37) = happyShift action_38
action_37 (47) = happyShift action_28
action_37 (5) = happyGoto action_76
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (9) = happyShift action_75
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_29

action_40 (8) = happyShift action_74
action_40 (17) = happyShift action_43
action_40 (18) = happyShift action_44
action_40 (19) = happyShift action_45
action_40 (24) = happyShift action_46
action_40 (25) = happyShift action_47
action_40 (26) = happyShift action_48
action_40 (27) = happyShift action_49
action_40 (28) = happyShift action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (8) = happyShift action_73
action_41 (15) = happyShift action_32
action_41 (16) = happyShift action_33
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_72
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (26) = happyShift action_71
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_37
action_44 (24) = happyShift action_23
action_44 (36) = happyShift action_24
action_44 (37) = happyShift action_38
action_44 (47) = happyShift action_28
action_44 (5) = happyGoto action_70
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_37
action_45 (24) = happyShift action_23
action_45 (36) = happyShift action_24
action_45 (37) = happyShift action_38
action_45 (47) = happyShift action_28
action_45 (5) = happyGoto action_69
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_37
action_46 (24) = happyShift action_23
action_46 (36) = happyShift action_24
action_46 (37) = happyShift action_38
action_46 (47) = happyShift action_28
action_46 (5) = happyGoto action_68
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_37
action_47 (24) = happyShift action_23
action_47 (36) = happyShift action_24
action_47 (37) = happyShift action_38
action_47 (47) = happyShift action_28
action_47 (5) = happyGoto action_67
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (26) = happyShift action_66
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_37
action_49 (24) = happyShift action_23
action_49 (26) = happyShift action_65
action_49 (36) = happyShift action_24
action_49 (37) = happyShift action_38
action_49 (47) = happyShift action_28
action_49 (5) = happyGoto action_64
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_37
action_50 (24) = happyShift action_23
action_50 (26) = happyShift action_63
action_50 (36) = happyShift action_24
action_50 (37) = happyShift action_38
action_50 (47) = happyShift action_28
action_50 (5) = happyGoto action_62
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (13) = happyShift action_61
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (13) = happyShift action_53
action_52 (20) = happyShift action_54
action_52 (21) = happyShift action_55
action_52 (22) = happyShift action_56
action_52 (23) = happyShift action_57
action_52 (26) = happyShift action_58
action_52 (29) = happyShift action_59
action_52 (30) = happyShift action_60
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (34) = happyShift action_98
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_37
action_54 (24) = happyShift action_23
action_54 (36) = happyShift action_24
action_54 (37) = happyShift action_38
action_54 (47) = happyShift action_28
action_54 (5) = happyGoto action_97
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_37
action_55 (24) = happyShift action_23
action_55 (36) = happyShift action_24
action_55 (37) = happyShift action_38
action_55 (47) = happyShift action_28
action_55 (5) = happyGoto action_96
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_37
action_56 (24) = happyShift action_23
action_56 (36) = happyShift action_24
action_56 (37) = happyShift action_38
action_56 (47) = happyShift action_28
action_56 (5) = happyGoto action_95
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_37
action_57 (24) = happyShift action_23
action_57 (36) = happyShift action_24
action_57 (37) = happyShift action_38
action_57 (47) = happyShift action_28
action_57 (5) = happyGoto action_94
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_37
action_58 (24) = happyShift action_23
action_58 (36) = happyShift action_24
action_58 (37) = happyShift action_93
action_58 (47) = happyShift action_28
action_58 (5) = happyGoto action_92
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_6

action_60 _ = happyReduce_7

action_61 (40) = happyShift action_91
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (18) = happyShift action_44
action_62 (19) = happyShift action_45
action_62 (24) = happyShift action_46
action_62 (25) = happyShift action_47
action_62 _ = happyReduce_33

action_63 (7) = happyShift action_37
action_63 (24) = happyShift action_23
action_63 (36) = happyShift action_24
action_63 (37) = happyShift action_38
action_63 (47) = happyShift action_28
action_63 (5) = happyGoto action_90
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (18) = happyShift action_44
action_64 (19) = happyShift action_45
action_64 (24) = happyShift action_46
action_64 (25) = happyShift action_47
action_64 _ = happyReduce_32

action_65 (7) = happyShift action_37
action_65 (24) = happyShift action_23
action_65 (36) = happyShift action_24
action_65 (37) = happyShift action_38
action_65 (47) = happyShift action_28
action_65 (5) = happyGoto action_89
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (7) = happyShift action_37
action_66 (24) = happyShift action_23
action_66 (36) = happyShift action_24
action_66 (37) = happyShift action_38
action_66 (47) = happyShift action_28
action_66 (5) = happyGoto action_88
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (18) = happyShift action_44
action_67 (19) = happyShift action_45
action_67 _ = happyReduce_20

action_68 (18) = happyShift action_44
action_68 (19) = happyShift action_45
action_68 _ = happyReduce_21

action_69 _ = happyReduce_19

action_70 _ = happyReduce_18

action_71 (7) = happyShift action_37
action_71 (24) = happyShift action_23
action_71 (36) = happyShift action_24
action_71 (37) = happyShift action_38
action_71 (47) = happyShift action_28
action_71 (5) = happyGoto action_87
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (35) = happyShift action_3
action_72 (36) = happyShift action_4
action_72 (37) = happyShift action_5
action_72 (38) = happyShift action_6
action_72 (41) = happyShift action_7
action_72 (46) = happyShift action_8
action_72 (4) = happyGoto action_86
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_26

action_74 _ = happyReduce_17

action_75 (47) = happyShift action_85
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (8) = happyShift action_74
action_76 (18) = happyShift action_44
action_76 (19) = happyShift action_45
action_76 (24) = happyShift action_46
action_76 (25) = happyShift action_47
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (10) = happyShift action_84
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (10) = happyShift action_83
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_28

action_80 _ = happyReduce_27

action_81 (11) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (35) = happyShift action_3
action_82 (36) = happyShift action_4
action_82 (37) = happyShift action_5
action_82 (38) = happyShift action_6
action_82 (41) = happyShift action_7
action_82 (46) = happyShift action_8
action_82 (4) = happyGoto action_105
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (13) = happyShift action_104
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_24

action_85 (10) = happyShift action_103
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (12) = happyShift action_102
action_86 (14) = happyShift action_10
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (18) = happyShift action_44
action_87 (19) = happyShift action_45
action_87 (24) = happyShift action_46
action_87 (25) = happyShift action_47
action_87 _ = happyReduce_37

action_88 (18) = happyShift action_44
action_88 (19) = happyShift action_45
action_88 (24) = happyShift action_46
action_88 (25) = happyShift action_47
action_88 _ = happyReduce_36

action_89 (18) = happyShift action_44
action_89 (19) = happyShift action_45
action_89 (24) = happyShift action_46
action_89 (25) = happyShift action_47
action_89 _ = happyReduce_34

action_90 (18) = happyShift action_44
action_90 (19) = happyShift action_45
action_90 (24) = happyShift action_46
action_90 (25) = happyShift action_47
action_90 _ = happyReduce_35

action_91 (7) = happyShift action_101
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (18) = happyShift action_44
action_92 (19) = happyShift action_45
action_92 (24) = happyShift action_46
action_92 (25) = happyShift action_47
action_92 _ = happyReduce_9

action_93 (9) = happyShift action_100
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (18) = happyShift action_44
action_94 (19) = happyShift action_45
action_94 (24) = happyShift action_46
action_94 (25) = happyShift action_47
action_94 _ = happyReduce_12

action_95 (18) = happyShift action_44
action_95 (19) = happyShift action_45
action_95 (24) = happyShift action_46
action_95 (25) = happyShift action_47
action_95 _ = happyReduce_13

action_96 (18) = happyShift action_44
action_96 (19) = happyShift action_45
action_96 (24) = happyShift action_46
action_96 (25) = happyShift action_47
action_96 _ = happyReduce_10

action_97 (18) = happyShift action_44
action_97 (19) = happyShift action_45
action_97 (24) = happyShift action_46
action_97 (25) = happyShift action_47
action_97 _ = happyReduce_11

action_98 (7) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (8) = happyShift action_113
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (47) = happyShift action_112
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (8) = happyShift action_111
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_4

action_103 (13) = happyShift action_110
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (31) = happyShift action_107
action_104 (32) = happyShift action_108
action_104 (33) = happyShift action_109
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (12) = happyShift action_106
action_105 (14) = happyShift action_10
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (43) = happyShift action_118
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (7) = happyShift action_117
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (7) = happyShift action_116
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (7) = happyShift action_115
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (31) = happyShift action_107
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_15

action_112 (10) = happyShift action_114
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_14

action_114 (13) = happyShift action_123
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (8) = happyShift action_122
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (8) = happyShift action_121
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (8) = happyShift action_120
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (11) = happyShift action_119
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (35) = happyShift action_3
action_119 (36) = happyShift action_4
action_119 (37) = happyShift action_5
action_119 (38) = happyShift action_6
action_119 (41) = happyShift action_7
action_119 (46) = happyShift action_8
action_119 (4) = happyGoto action_125
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_25

action_121 _ = happyReduce_39

action_122 _ = happyReduce_38

action_123 (31) = happyShift action_107
action_123 (39) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (7) = happyShift action_127
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (12) = happyShift action_126
action_125 (14) = happyShift action_10
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_5

action_127 (8) = happyShift action_128
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_8

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
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfEl happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 5 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IncIndex happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 5 4 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (DecIndex happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 13 4 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_8)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TakeFrom happy_var_8 happy_var_3
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
		 (SetIndex happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 6 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TimesEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (DivEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (AddEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (SubEq happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 8 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (PrintIndex happy_var_3
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
happyReduction_17 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Add happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Neg happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (DataInt happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetIndex happy_var_3
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 8 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
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

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn6
		 (DataBool True
	)

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn6
		 (DataBool False
	)

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 4 6 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 4 6 happyReduction_35
happyReduction_35 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 6 happyReduction_36
happyReduction_36 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 4 6 happyReduction_37
happyReduction_37 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 8 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
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

happyReduce_39 = happyReduce 8 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
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
	action 48 48 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLParen _ -> cont 7;
	TokenRParen _ -> cont 8;
	TokenLSquare _ -> cont 9;
	TokenRSquare _ -> cont 10;
	TokenLCurly _ -> cont 11;
	TokenRCurly _ -> cont 12;
	TokenDot _ -> cont 13;
	TokenSeq _ -> cont 14;
	TokenAnd _ -> cont 15;
	TokenOr _ -> cont 16;
	TokenNot _ -> cont 17;
	TokenTimes _ -> cont 18;
	TokenDiv _ -> cont 19;
	TokenDivEq _ -> cont 20;
	TokenTimesEq _ -> cont 21;
	TokenSubEq _ -> cont 22;
	TokenPlusEq _ -> cont 23;
	TokenMinus _ -> cont 24;
	TokenPlus _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenGt _ -> cont 27;
	TokenLt _ -> cont 28;
	TokenInc _ -> cont 29;
	TokenDec _ -> cont 30;
	TokenLength _ -> cont 31;
	TokenEmpty _ -> cont 32;
	TokenNotEmpty _ -> cont 33;
	TokenPrint _ -> cont 34;
	TokenVarSize _ -> cont 35;
	TokenVars _ -> cont 36;
	TokenStreams _ -> cont 37;
	TokenWhile _ -> cont 38;
	TokenTake _ -> cont 39;
	TokenDrop _ -> cont 40;
	TokenIf _ -> cont 41;
	TokenThen _ -> cont 42;
	TokenElse _ -> cont 43;
	TokenTrue _ -> cont 44;
	TokenFalse _ -> cont 45;
	TokenEnd _ -> cont 46;
	TokenInt _ happy_dollar_dollar -> cont 47;
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
         | Single Exp
         | VarSize Int
         | While BExp Exp
         | IfEl BExp Exp Exp
         | IncIndex Int
         | DecIndex Int
         | TakeFrom Int Int
         | SetIndex Int IntExp
         | TimesEq Int IntExp
         | DivEq Int IntExp
         | AddEq Int IntExp
         | SubEq Int IntExp
         | PrintIndex Int
         | DropFrom Int
         | EndProgram
         deriving (Show, Read)

data IntExp = Mul IntExp IntExp
         | Div IntExp IntExp
         | Add IntExp IntExp
         | Sub IntExp IntExp 
         | Neg IntExp
         | DataInt Int
         | GetIndex Int
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
