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
happyExpList = Happy_Data_Array.listArray (0,205) ([0,0,480,2,0,15360,64,2048,0,0,0,4096,0,32768,0,0,0,16,0,0,128,0,0,0,0,0,0,512,0,0,0,0,16444,2048,8256,768,19,0,0,512,0,0,16384,0,0,0,8,0,0,0,128,0,0,4096,0,0,0,3584,31,0,12304,0,0,256,1032,24672,8194,33024,3072,76,4,32784,2049,512,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,8,6144,0,0,16,64,8198,2048,0,0,0,0,0,0,49168,993,0,512,6,0,0,2,0,0,8196,32784,2433,128,516,12336,1,0,1,0,2,49160,1024,64,256,32792,2048,8192,768,16,1,24580,512,0,512,0,1024,20480,384,32776,0,12298,256,1024,0,0,32768,10112,0,0,0,512,0,8,32,4099,256,1024,96,8194,32768,3072,64,4,32784,2049,128,512,48,1,0,16384,0,24576,24,0,64,256,32792,0,24960,0,0,1,24580,512,32,128,16396,0,192,0,0,6144,0,0,0,0,0,0,0,0,16384,0,6145,128,0,0,0,0,0,0,0,0,7680,32,0,0,0,0,0,0,0,0,0,32,24580,24,0,512,0,0,16384,0,0,0,64,0,0,0,0,0,8192,0,0,0,144,0,0,0,195,0,0,6240,0,0,3072,3,0,32768,97,0,256,0,0,0,34304,1,0,49152,48,0,0,1560,0,0,49920,0,0,24576,24,0,64,0,0,4096,0,0,0,2,0,0,0,0,0,0,1,0,0,0,896,1,16,0,0,512,0,0,16384,0,0,0,8,0,0,0,0,513,0,0,0,0,0,0,0,256,0,0,8192,0,0,0,4,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
action_9 (4) = happyGoto action_27
action_9 _ = happyReduce_2

action_10 (10) = happyShift action_19
action_10 (21) = happyShift action_20
action_10 (28) = happyShift action_21
action_10 (39) = happyShift action_22
action_10 (40) = happyShift action_23
action_10 (47) = happyShift action_24
action_10 (48) = happyShift action_25
action_10 (51) = happyShift action_26
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

action_15 (13) = happyShift action_48
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (21) = happyShift action_39
action_17 (22) = happyShift action_40
action_17 (23) = happyShift action_41
action_17 (28) = happyShift action_42
action_17 (29) = happyShift action_43
action_17 (30) = happyShift action_44
action_17 (31) = happyShift action_45
action_17 (32) = happyShift action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_36
action_18 (19) = happyShift action_37
action_18 (20) = happyShift action_38
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_19
action_19 (21) = happyShift action_20
action_19 (28) = happyShift action_21
action_19 (39) = happyShift action_22
action_19 (40) = happyShift action_23
action_19 (47) = happyShift action_24
action_19 (48) = happyShift action_25
action_19 (51) = happyShift action_26
action_19 (5) = happyGoto action_34
action_19 (6) = happyGoto action_35
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (10) = happyShift action_19
action_20 (21) = happyShift action_20
action_20 (28) = happyShift action_21
action_20 (39) = happyShift action_22
action_20 (40) = happyShift action_23
action_20 (47) = happyShift action_24
action_20 (48) = happyShift action_25
action_20 (51) = happyShift action_26
action_20 (5) = happyGoto action_17
action_20 (6) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyShift action_31
action_21 (28) = happyShift action_21
action_21 (39) = happyShift action_22
action_21 (40) = happyShift action_32
action_21 (51) = happyShift action_26
action_21 (5) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_27

action_25 _ = happyReduce_28

action_26 _ = happyReduce_19

action_27 (18) = happyShift action_9
action_27 _ = happyReduce_1

action_28 (51) = happyShift action_74
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (51) = happyShift action_73
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_40
action_30 (23) = happyShift action_41
action_30 _ = happyReduce_18

action_31 (10) = happyShift action_31
action_31 (28) = happyShift action_21
action_31 (39) = happyShift action_22
action_31 (40) = happyShift action_32
action_31 (51) = happyShift action_26
action_31 (5) = happyGoto action_72
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_71
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_37
action_33 (20) = happyShift action_38
action_33 _ = happyReduce_26

action_34 (11) = happyShift action_70
action_34 (21) = happyShift action_39
action_34 (22) = happyShift action_40
action_34 (23) = happyShift action_41
action_34 (28) = happyShift action_42
action_34 (29) = happyShift action_43
action_34 (30) = happyShift action_44
action_34 (31) = happyShift action_45
action_34 (32) = happyShift action_46
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_69
action_35 (19) = happyShift action_37
action_35 (20) = happyShift action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (14) = happyShift action_68
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (10) = happyShift action_19
action_37 (21) = happyShift action_20
action_37 (28) = happyShift action_21
action_37 (39) = happyShift action_22
action_37 (40) = happyShift action_23
action_37 (47) = happyShift action_24
action_37 (48) = happyShift action_25
action_37 (51) = happyShift action_26
action_37 (5) = happyGoto action_17
action_37 (6) = happyGoto action_67
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_19
action_38 (21) = happyShift action_20
action_38 (28) = happyShift action_21
action_38 (39) = happyShift action_22
action_38 (40) = happyShift action_23
action_38 (47) = happyShift action_24
action_38 (48) = happyShift action_25
action_38 (51) = happyShift action_26
action_38 (5) = happyGoto action_17
action_38 (6) = happyGoto action_66
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (30) = happyShift action_65
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_31
action_40 (28) = happyShift action_21
action_40 (39) = happyShift action_22
action_40 (40) = happyShift action_32
action_40 (51) = happyShift action_26
action_40 (5) = happyGoto action_64
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_31
action_41 (28) = happyShift action_21
action_41 (39) = happyShift action_22
action_41 (40) = happyShift action_32
action_41 (51) = happyShift action_26
action_41 (5) = happyGoto action_63
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_31
action_42 (28) = happyShift action_21
action_42 (39) = happyShift action_22
action_42 (40) = happyShift action_32
action_42 (51) = happyShift action_26
action_42 (5) = happyGoto action_62
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (10) = happyShift action_31
action_43 (28) = happyShift action_21
action_43 (39) = happyShift action_22
action_43 (40) = happyShift action_32
action_43 (51) = happyShift action_26
action_43 (5) = happyGoto action_61
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (30) = happyShift action_60
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (10) = happyShift action_31
action_45 (28) = happyShift action_21
action_45 (30) = happyShift action_59
action_45 (39) = happyShift action_22
action_45 (40) = happyShift action_32
action_45 (51) = happyShift action_26
action_45 (5) = happyGoto action_58
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (10) = happyShift action_31
action_46 (28) = happyShift action_21
action_46 (30) = happyShift action_57
action_46 (39) = happyShift action_22
action_46 (40) = happyShift action_32
action_46 (51) = happyShift action_26
action_46 (5) = happyGoto action_56
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (16) = happyShift action_55
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (16) = happyShift action_49
action_48 (24) = happyShift action_50
action_48 (25) = happyShift action_51
action_48 (26) = happyShift action_52
action_48 (27) = happyShift action_53
action_48 (30) = happyShift action_54
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (37) = happyShift action_89
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (10) = happyShift action_31
action_50 (28) = happyShift action_21
action_50 (39) = happyShift action_22
action_50 (40) = happyShift action_32
action_50 (51) = happyShift action_26
action_50 (5) = happyGoto action_88
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (10) = happyShift action_31
action_51 (28) = happyShift action_21
action_51 (39) = happyShift action_22
action_51 (40) = happyShift action_32
action_51 (51) = happyShift action_26
action_51 (5) = happyGoto action_87
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_31
action_52 (28) = happyShift action_21
action_52 (39) = happyShift action_22
action_52 (40) = happyShift action_32
action_52 (51) = happyShift action_26
action_52 (5) = happyGoto action_86
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (10) = happyShift action_31
action_53 (28) = happyShift action_21
action_53 (39) = happyShift action_22
action_53 (40) = happyShift action_32
action_53 (51) = happyShift action_26
action_53 (5) = happyGoto action_85
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (10) = happyShift action_31
action_54 (28) = happyShift action_21
action_54 (39) = happyShift action_22
action_54 (40) = happyShift action_32
action_54 (51) = happyShift action_26
action_54 (5) = happyGoto action_84
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (44) = happyShift action_83
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (22) = happyShift action_40
action_56 (23) = happyShift action_41
action_56 (28) = happyShift action_42
action_56 (29) = happyShift action_43
action_56 _ = happyReduce_30

action_57 (10) = happyShift action_31
action_57 (28) = happyShift action_21
action_57 (39) = happyShift action_22
action_57 (40) = happyShift action_32
action_57 (51) = happyShift action_26
action_57 (5) = happyGoto action_82
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (22) = happyShift action_40
action_58 (23) = happyShift action_41
action_58 (28) = happyShift action_42
action_58 (29) = happyShift action_43
action_58 _ = happyReduce_29

action_59 (10) = happyShift action_31
action_59 (28) = happyShift action_21
action_59 (39) = happyShift action_22
action_59 (40) = happyShift action_32
action_59 (51) = happyShift action_26
action_59 (5) = happyGoto action_81
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (10) = happyShift action_31
action_60 (28) = happyShift action_21
action_60 (39) = happyShift action_22
action_60 (40) = happyShift action_32
action_60 (51) = happyShift action_26
action_60 (5) = happyGoto action_80
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_40
action_61 (23) = happyShift action_41
action_61 _ = happyReduce_16

action_62 (22) = happyShift action_40
action_62 (23) = happyShift action_41
action_62 _ = happyReduce_17

action_63 _ = happyReduce_15

action_64 _ = happyReduce_14

action_65 (10) = happyShift action_31
action_65 (28) = happyShift action_21
action_65 (39) = happyShift action_22
action_65 (40) = happyShift action_32
action_65 (51) = happyShift action_26
action_65 (5) = happyGoto action_79
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (19) = happyShift action_37
action_66 (20) = happyShift action_38
action_66 _ = happyReduce_25

action_67 (19) = happyShift action_37
action_67 (20) = happyShift action_38
action_67 _ = happyReduce_24

action_68 (38) = happyShift action_3
action_68 (39) = happyShift action_4
action_68 (40) = happyShift action_5
action_68 (41) = happyShift action_6
action_68 (50) = happyShift action_7
action_68 (4) = happyGoto action_78
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_23

action_70 _ = happyReduce_13

action_71 (51) = happyShift action_77
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (11) = happyShift action_70
action_72 (22) = happyShift action_40
action_72 (23) = happyShift action_41
action_72 (28) = happyShift action_42
action_72 (29) = happyShift action_43
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (13) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_94
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_20

action_77 (13) = happyShift action_93
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (15) = happyShift action_92
action_78 (18) = happyShift action_9
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (22) = happyShift action_40
action_79 (23) = happyShift action_41
action_79 (28) = happyShift action_42
action_79 (29) = happyShift action_43
action_79 _ = happyReduce_34

action_80 (22) = happyShift action_40
action_80 (23) = happyShift action_41
action_80 (28) = happyShift action_42
action_80 (29) = happyShift action_43
action_80 _ = happyReduce_33

action_81 (22) = happyShift action_40
action_81 (23) = happyShift action_41
action_81 (28) = happyShift action_42
action_81 (29) = happyShift action_43
action_81 _ = happyReduce_31

action_82 (22) = happyShift action_40
action_82 (23) = happyShift action_41
action_82 (28) = happyShift action_42
action_82 (29) = happyShift action_43
action_82 _ = happyReduce_32

action_83 (10) = happyShift action_91
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (22) = happyShift action_40
action_84 (23) = happyShift action_41
action_84 (28) = happyShift action_42
action_84 (29) = happyShift action_43
action_84 _ = happyReduce_5

action_85 (22) = happyShift action_40
action_85 (23) = happyShift action_41
action_85 (28) = happyShift action_42
action_85 (29) = happyShift action_43
action_85 _ = happyReduce_8

action_86 (22) = happyShift action_40
action_86 (23) = happyShift action_41
action_86 (28) = happyShift action_42
action_86 (29) = happyShift action_43
action_86 _ = happyReduce_9

action_87 (22) = happyShift action_40
action_87 (23) = happyShift action_41
action_87 (28) = happyShift action_42
action_87 (29) = happyShift action_43
action_87 _ = happyReduce_6

action_88 (22) = happyShift action_40
action_88 (23) = happyShift action_41
action_88 (28) = happyShift action_42
action_88 (29) = happyShift action_43
action_88 _ = happyReduce_7

action_89 (10) = happyShift action_90
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (11) = happyShift action_101
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (11) = happyShift action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_4

action_93 (16) = happyShift action_99
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (34) = happyShift action_95
action_94 (35) = happyShift action_96
action_94 (36) = happyShift action_97
action_94 (43) = happyShift action_98
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (10) = happyShift action_105
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (10) = happyShift action_104
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (10) = happyShift action_103
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (10) = happyShift action_102
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (34) = happyShift action_95
action_99 (43) = happyShift action_98
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_11

action_101 _ = happyReduce_10

action_102 (11) = happyShift action_109
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (11) = happyShift action_108
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (11) = happyShift action_107
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (11) = happyShift action_106
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_22

action_107 _ = happyReduce_36

action_108 _ = happyReduce_35

action_109 _ = happyReduce_21

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
happyReduction_13 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Add happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Neg happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (DataInt happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetVal happy_var_3
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
		 (TakeFrom happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 8 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
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

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn6
		 (DataBool True
	)

happyReduce_28 = happySpecReduce_1  6 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn6
		 (DataBool False
	)

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 6 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 6 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LThanEQ happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 6 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Equal happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 6 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NEqual happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 8 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
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

happyReduce_36 = happyReduce 8 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
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
         | Single Exp
         | VarSize Int
         | IncVal Int
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
