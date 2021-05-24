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
(declare-fun x_10 () String)
(declare-fun epsilon () String)
(declare-fun literal_6 () String)
(declare-fun literal_7 () String)
(declare-fun literal_4 () String)
(declare-fun literal_13 () String)
(declare-fun x_17 () String)
(declare-fun literal_11 () String)
(declare-fun x_19 () String)
(declare-fun literal_18 () String)
(declare-fun x_23 () String)
(declare-fun literal_12 () String)
(declare-fun x_20 () String)
(declare-fun x_24 () String)
(declare-fun x_21 () String)
(declare-fun x_25 () String)
(declare-fun literal_14 () String)
(declare-fun x_22 () String)
(declare-fun x_26 () String)
(declare-fun literal_27 () String)
(declare-fun x_31 () String)
(declare-fun literal_28 () String)
(declare-fun x_32 () String)
(declare-fun literal_29 () String)
(declare-fun x_33 () String)
(declare-fun literal_30 () String)
(declare-fun x_34 () String)
(declare-fun x_37 () String)
(declare-fun x_38 () String)
(declare-fun x_39 () String)
(declare-fun x_43 () String)
(declare-fun literal_36 () String)
(declare-fun x_44 () String)
(declare-fun x_51 () String)
(declare-fun literal_46 () String)
(declare-fun x_53 () String)
(declare-fun literal_45 () String)
(declare-fun x_54 () String)
(declare-fun literal_52 () String)
(declare-fun x_55 () String)
(declare-fun literal_57 () String)
(declare-fun x_56 () String)
(declare-fun x_59 () String)
(declare-fun literal_60 () String)
(declare-fun x_61 () String)
(declare-fun literal_58 () String)
(declare-fun x_63 () String)
(declare-fun sigmaStar_65 () String)
(declare-fun literal_64 () String)
(declare-fun x_66 () String)
(declare-fun x_67 () String)
(declare-fun literal_68 () String)
(declare-fun x_69 () String)
(assert (= epsilon ""))
(assert (= literal_6 "\x66\x69\x6c\x74\x65\x72\x73\x65\x6c\x65\x63\x74"))
(assert (= literal_7 ""))
(assert (= literal_4 "\x75\x73\x65\x72\x69\x64"))
(assert (or (= x_10 epsilon) (= x_10 literal_6) (= x_10 literal_7) (= x_10 literal_4)))
(assert (= literal_13 "\x2f"))
(assert (= x_17 (str.++ x_10 literal_13)))
(assert (= literal_11 "\x2f"))
(assert (= literal_18 "\x31"))
(assert (or (= x_19 epsilon) (= x_19 literal_18)))
(assert (= x_23 (str.++ literal_11 x_19)))
(assert (= literal_12 "\x2f"))
(assert (or (= x_20 epsilon) (= x_20 literal_18)))
(assert (= x_24 (str.++ literal_12 x_20)))
(assert (or (= x_21 epsilon) (= x_21 literal_18)))
(assert (= x_25 (str.++ x_17 x_21)))
(assert (= literal_14 "\x2f"))
(assert (or (= x_22 epsilon) (= x_22 literal_18)))
(assert (= x_26 (str.++ literal_14 x_22)))
(assert (= literal_27 "\x2f\x62\x6c\x6f\x67\x2f\x67\x72\x6f\x75\x70\x2f"))
(assert (= x_31 (str.++ x_23 literal_27)))
(assert (= literal_28 "\x2f\x62\x6c\x6f\x67\x2f\x73\x69\x74\x65\x2f"))
(assert (= x_32 (str.++ x_24 literal_28)))
(assert (= literal_29 "\x2f\x62\x6c\x6f\x67\x2f\x63\x6f\x75\x72\x73\x65\x2f"))
(assert (= x_33 (str.++ x_25 literal_29)))
(assert (= literal_30 "\x2f\x62\x6c\x6f\x67\x2f\x75\x73\x65\x72\x2f"))
(assert (= x_34 (str.++ x_26 literal_30)))
(assert (= x_37 (str.++ x_31 x_10)))
(assert (= x_38 (str.++ x_33 x_10)))
(assert (= x_39 (str.++ x_34 x_10)))
(assert (or (= x_43 epsilon) (= x_43 x_32) (= x_43 x_39) (= x_43 x_38) (= x_43 x_37)))
(assert (= literal_36 "\x2f\x74\x61\x67"))
(assert (= x_44 (str.++ x_43 literal_36)))
(assert (or (= x_51 x_44) (= x_51 epsilon) (= x_51 x_32) (= x_51 x_39) (= x_51 x_38) (= x_51 x_37)))
(assert (= literal_46 "\x2f\x72\x73\x73\x2e\x78\x6d\x6c"))
(assert (= x_53 (str.++ x_51 literal_46)))
(assert (= literal_45 "\x2f\x72\x73\x73\x2f\x66\x69\x6c\x65\x2e\x70\x68\x70\x3f\x66\x69\x6c\x65\x3d"))
(assert (= x_54 (str.++ literal_45 x_53)))
(assert (= literal_52 "\x2f\x72\x73\x73\x2f\x66\x69\x6c\x65\x2e\x70\x68\x70\x2f"))
(assert (= x_55 (str.++ literal_52 x_53)))
(assert (= literal_57 "\x3c\x64\x69\x76\x20\x61\x6c\x69\x67\x6e\x3d\x22\x72\x69\x67\x68\x74\x22\x3e\x3c\x61\x20\x68\x72\x65\x66\x3d\x22"))
(assert (or (= x_56 x_55) (= x_56 x_54)))
(assert (= x_59 (str.++ literal_57 x_56)))
(assert (= literal_60 "\x22\x3e\x3c\x69\x6d\x67\x20\x73\x72\x63\x3d\x22"))
(assert (= x_61 (str.++ x_59 literal_60)))
(assert (= literal_58 "\x2f\x69\x2f\x72\x73\x73\x2e\x67\x69\x66"))
(assert (= x_63 (str.++ x_61 literal_58)))
(assert (= literal_64 "\x22\x20\x74\x69\x74\x6c\x65\x3d\x22"))
(assert (= x_66 (str.++ x_63 literal_64)))
(assert (= x_67 (str.++ x_66 sigmaStar_65)))
(assert (= literal_68 "\x22\x20\x61\x6c\x74\x3d\x22\x22\x20\x2f\x3e\x3c\x2f\x61\x3e\x3c\x2f\x64\x69\x76\x3e"))
(assert (= x_69 (str.++ x_67 literal_68)))
(assert (str.in_re x_69 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
