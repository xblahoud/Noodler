(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Hung-En Wang, Tzung-Lin Tsai, Chun-Han Lin, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: Stranger
Application: Security analysis of string manipulating web applications
Target solver: CVC4, Norn, Z3-str2
Publication:
Hung-En Wang, Tzung-Lin Tsai, Chun-Han Lin, Fang Yu, Jie-Hong R. Jiang:
String Analysis via Automata Manipulation with Logic Circuit Representation. CAV (1) 2016: 241-260.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun sigmaStar_0 () String)
(declare-fun sigmaStar_1 () String)
(declare-fun sigmaStar_2 () String)
(declare-fun sigmaStar_3 () String)
(declare-fun sigmaStar_4 () String)
(declare-fun sigmaStar_5 () String)
(declare-fun sigmaStar_6 () String)
(declare-fun sigmaStar_7 () String)
(declare-fun sigmaStar_8 () String)
(declare-fun sigmaStar_9 () String)
(declare-fun sigmaStar_10 () String)
(declare-fun literal_11 () String)
(declare-fun x_12 () String)
(declare-fun literal_13 () String)
(declare-fun x_16 () String)
(declare-fun x_15 () String)
(declare-fun epsilon () String)
(declare-fun x_17 () String)
(declare-fun literal_18 () String)
(declare-fun x_19 () String)
(declare-fun x_20 () String)
(declare-fun literal_21 () String)
(declare-fun x_23 () String)
(declare-fun x_22 () String)
(declare-fun x_24 () String)
(declare-fun literal_25 () String)
(declare-fun x_26 () String)
(declare-fun x_27 () String)
(declare-fun literal_28 () String)
(declare-fun x_30 () String)
(declare-fun x_29 () String)
(declare-fun x_31 () String)
(declare-fun literal_32 () String)
(declare-fun x_33 () String)
(declare-fun x_34 () String)
(declare-fun literal_35 () String)
(declare-fun x_37 () String)
(declare-fun x_36 () String)
(declare-fun x_38 () String)
(declare-fun literal_39 () String)
(declare-fun x_40 () String)
(declare-fun x_41 () String)
(declare-fun literal_42 () String)
(declare-fun x_44 () String)
(declare-fun x_43 () String)
(declare-fun x_45 () String)
(declare-fun literal_46 () String)
(declare-fun x_47 () String)
(declare-fun x_48 () String)
(declare-fun literal_49 () String)
(declare-fun x_51 () String)
(declare-fun x_50 () String)
(declare-fun x_52 () String)
(declare-fun literal_53 () String)
(declare-fun x_54 () String)
(declare-fun x_55 () String)
(declare-fun literal_56 () String)
(declare-fun x_58 () String)
(declare-fun x_57 () String)
(declare-fun x_59 () String)
(declare-fun literal_60 () String)
(declare-fun x_61 () String)
(declare-fun x_62 () String)
(declare-fun literal_63 () String)
(declare-fun x_65 () String)
(declare-fun x_64 () String)
(declare-fun x_66 () String)
(declare-fun literal_67 () String)
(declare-fun x_68 () String)
(declare-fun x_69 () String)
(declare-fun literal_70 () String)
(declare-fun x_72 () String)
(declare-fun x_71 () String)
(declare-fun x_73 () String)
(declare-fun literal_74 () String)
(declare-fun x_75 () String)
(declare-fun x_76 () String)
(declare-fun literal_77 () String)
(declare-fun x_79 () String)
(declare-fun x_78 () String)
(declare-fun x_80 () String)
(declare-fun literal_81 () String)
(declare-fun x_82 () String)
(declare-fun x_83 () String)
(declare-fun literal_84 () String)
(declare-fun x_86 () String)
(declare-fun x_85 () String)
(declare-fun x_87 () String)
(declare-fun literal_88 () String)
(declare-fun x_89 () String)
(assert (= literal_11 "\x3c\x74\x61\x62\x6c\x65\x20\x61\x6c\x69\x67\x6e\x3d\x27\x63\x65\x6e\x74\x65\x72\x27\x20\x63\x65\x6c\x6c\x70\x61\x64\x64\x69\x6e\x67\x3d\x27\x30\x27\x20\x63\x65\x6c\x6c\x73\x70\x61\x63\x69\x6e\x67\x3d\x27\x30\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x31\x30\x30\x25\x27\x3e\x5c\x6e\x3c\x74\x72\x3e\x5c\x6e\x3c\x74\x64\x20\x76\x61\x6c\x69\x67\x6e\x3d\x27\x74\x6f\x70\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x33\x33\x25\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x73\x6d\x61\x6c\x6c\x27\x3e\x0d\x0a"))
(assert (= x_12 (str.++ literal_11 sigmaStar_9)))
(assert (= literal_13 "\x20"))
(assert (= x_16 (str.++ x_12 literal_13)))
(assert (= epsilon ""))
(assert (= x_15 epsilon))
(assert (= x_17 (str.++ x_16 x_15)))
(assert (= literal_18 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_19 (str.++ x_17 literal_18)))
(assert (= x_20 (str.++ x_19 sigmaStar_7)))
(assert (= literal_21 "\x20"))
(assert (= x_23 (str.++ x_20 literal_21)))
(assert (= x_22 epsilon))
(assert (= x_24 (str.++ x_23 x_22)))
(assert (= literal_25 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_26 (str.++ x_24 literal_25)))
(assert (= x_27 (str.++ x_26 sigmaStar_10)))
(assert (= literal_28 "\x20"))
(assert (= x_30 (str.++ x_27 literal_28)))
(assert (= x_29 epsilon))
(assert (= x_31 (str.++ x_30 x_29)))
(assert (= literal_32 "\x0d\x0a\x3c\x2f\x74\x64\x3e\x0d\x0a\x3c\x74\x64\x20\x76\x61\x6c\x69\x67\x6e\x3d\x27\x74\x6f\x70\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x33\x33\x25\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x73\x6d\x61\x6c\x6c\x27\x3e\x0d\x0a"))
(assert (= x_33 (str.++ x_31 literal_32)))
(assert (= x_34 (str.++ x_33 sigmaStar_1)))
(assert (= literal_35 "\x20"))
(assert (= x_37 (str.++ x_34 literal_35)))
(assert (= x_36 epsilon))
(assert (= x_38 (str.++ x_37 x_36)))
(assert (= literal_39 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_40 (str.++ x_38 literal_39)))
(assert (= x_41 (str.++ x_40 sigmaStar_5)))
(assert (= literal_42 "\x20"))
(assert (= x_44 (str.++ x_41 literal_42)))
(assert (= x_43 epsilon))
(assert (= x_45 (str.++ x_44 x_43)))
(assert (= literal_46 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_47 (str.++ x_45 literal_46)))
(assert (= x_48 (str.++ x_47 sigmaStar_3)))
(assert (= literal_49 "\x20"))
(assert (= x_51 (str.++ x_48 literal_49)))
(assert (= x_50 epsilon))
(assert (= x_52 (str.++ x_51 x_50)))
(assert (= literal_53 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_54 (str.++ x_52 literal_53)))
(assert (= x_55 (str.++ x_54 sigmaStar_8)))
(assert (= literal_56 "\x20"))
(assert (= x_58 (str.++ x_55 literal_56)))
(assert (= x_57 epsilon))
(assert (= x_59 (str.++ x_58 x_57)))
(assert (= literal_60 "\x0d\x0a\x3c\x74\x64\x20\x76\x61\x6c\x69\x67\x6e\x3d\x27\x74\x6f\x70\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x33\x33\x25\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x73\x6d\x61\x6c\x6c\x27\x3e\x0d\x0a"))
(assert (= x_61 (str.++ x_59 literal_60)))
(assert (= x_62 (str.++ x_61 sigmaStar_4)))
(assert (= literal_63 "\x20"))
(assert (= x_65 (str.++ x_62 literal_63)))
(assert (= x_64 epsilon))
(assert (= x_66 (str.++ x_65 x_64)))
(assert (= literal_67 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_68 (str.++ x_66 literal_67)))
(assert (= x_69 (str.++ x_68 sigmaStar_2)))
(assert (= literal_70 "\x20"))
(assert (= x_72 (str.++ x_69 literal_70)))
(assert (= x_71 epsilon))
(assert (= x_73 (str.++ x_72 x_71)))
(assert (= literal_74 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_75 (str.++ x_73 literal_74)))
(assert (= x_76 (str.++ x_75 sigmaStar_0)))
(assert (= literal_77 "\x20"))
(assert (= x_79 (str.++ x_76 literal_77)))
(assert (= x_78 epsilon))
(assert (= x_80 (str.++ x_79 x_78)))
(assert (= literal_81 "\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_82 (str.++ x_80 literal_81)))
(assert (= x_83 (str.++ x_82 sigmaStar_6)))
(assert (= literal_84 "\x20"))
(assert (= x_86 (str.++ x_83 literal_84)))
(assert (= x_85 epsilon))
(assert (= x_87 (str.++ x_86 x_85)))
(assert (= literal_88 "\x0d\x0a\x3c\x2f\x74\x64\x3e\x5c\x6e\x3c\x2f\x74\x72\x3e\x5c\x6e\x3c\x2f\x74\x61\x62\x6c\x65\x3e\x5c\x6e"))
(assert (= x_89 (str.++ x_87 literal_88)))
(assert (str.in_re x_89 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
