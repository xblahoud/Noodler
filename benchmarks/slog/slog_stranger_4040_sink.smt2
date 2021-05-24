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
(declare-fun literal_13 () String)
(declare-fun x_20 () String)
(declare-fun literal_8 () String)
(declare-fun literal_9 () String)
(declare-fun literal_10 () String)
(declare-fun literal_6 () String)
(declare-fun literal_7 () String)
(declare-fun x_25 () String)
(declare-fun literal_24 () String)
(declare-fun x_28 () String)
(declare-fun literal_21 () String)
(declare-fun literal_15 () String)
(declare-fun literal_16 () String)
(declare-fun literal_17 () String)
(declare-fun literal_14 () String)
(declare-fun x_30 () String)
(declare-fun literal_29 () String)
(declare-fun x_31 () String)
(declare-fun literal_32 () String)
(declare-fun x_33 () String)
(declare-fun x_34 () String)
(declare-fun x_35 () String)
(declare-fun x_36 () String)
(declare-fun literal_37 () String)
(declare-fun x_38 () String)
(declare-fun x_39 () String)
(declare-fun literal_40 () String)
(declare-fun x_41 () String)
(declare-fun x_42 () String)
(declare-fun literal_43 () String)
(declare-fun x_44 () String)
(assert (= literal_13 "\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x63\x68\x65\x63\x6b\x62\x6f\x78\x27\x20\x6e\x61\x6d\x65\x3d\x27\x6e\x65\x77\x73\x5f\x63\x6f\x6d\x6d\x65\x6e\x74\x73\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x79\x65\x73\x27\x20\x6f\x6e\x43\x6c\x69\x63\x6b\x3d\x27\x53\x65\x74\x52\x61\x74\x69\x6e\x67\x73\x28\x29\x3b\x27"))
(assert (= literal_8 ""))
(assert (= literal_9 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_10 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_6 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_7 ""))
(assert (or (= x_20 literal_8) (= x_20 literal_9) (= x_20 literal_10) (= x_20 sigmaStar_2) (= x_20 literal_6) (= x_20 literal_7)))
(assert (= x_25 (str.++ literal_13 x_20)))
(assert (= literal_24 "\x3c\x62\x72\x3e\x0d\x0a\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x63\x68\x65\x63\x6b\x62\x6f\x78\x27\x20\x6e\x61\x6d\x65\x3d\x27\x6e\x65\x77\x73\x5f\x72\x61\x74\x69\x6e\x67\x73\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x79\x65\x73\x27"))
(assert (= literal_21 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_15 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_16 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_17 ""))
(assert (= literal_14 ""))
(assert (or (= x_28 literal_21) (= x_28 literal_15) (= x_28 literal_16) (= x_28 literal_17) (= x_28 sigmaStar_0) (= x_28 literal_14)))
(assert (= x_30 (str.++ literal_24 x_28)))
(assert (= literal_29 "\x3e\x20"))
(assert (= x_31 (str.++ x_25 literal_29)))
(assert (= literal_32 "\x3e\x20"))
(assert (= x_33 (str.++ x_30 literal_32)))
(assert (= x_34 (str.++ x_31 sigmaStar_3)))
(assert (= x_35 (str.++ x_34 x_33)))
(assert (= x_36 (str.++ x_35 sigmaStar_4)))
(assert (= literal_37 "\x3c\x2f\x74\x64\x3e\x0d\x0a\x3c\x2f\x74\x72\x3e\x0d\x0a\x3c\x74\x72\x3e\x0d\x0a\x3c\x74\x64\x20\x61\x6c\x69\x67\x6e\x3d\x27\x63\x65\x6e\x74\x65\x72\x27\x20\x63\x6f\x6c\x73\x70\x61\x6e\x3d\x27\x32\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x74\x62\x6c\x27\x3e\x3c\x62\x72\x3e\x0d\x0a\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x73\x75\x62\x6d\x69\x74\x27\x20\x6e\x61\x6d\x65\x3d\x27\x70\x72\x65\x76\x69\x65\x77\x27\x20\x76\x61\x6c\x75\x65\x3d\x27"))
(assert (= x_38 (str.++ x_36 literal_37)))
(assert (= x_39 (str.++ x_38 sigmaStar_5)))
(assert (= literal_40 "\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x62\x75\x74\x74\x6f\x6e\x27\x3e\x0d\x0a\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x73\x75\x62\x6d\x69\x74\x27\x20\x6e\x61\x6d\x65\x3d\x27\x73\x61\x76\x65\x27\x20\x76\x61\x6c\x75\x65\x3d\x27"))
(assert (= x_41 (str.++ x_39 literal_40)))
(assert (= x_42 (str.++ x_41 sigmaStar_1)))
(assert (= literal_43 "\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x62\x75\x74\x74\x6f\x6e\x27\x3e\x3c\x2f\x74\x64\x3e\x0d\x0a\x3c\x2f\x74\x72\x3e\x0d\x0a\x3c\x2f\x74\x61\x62\x6c\x65\x3e\x0d\x0a\x3c\x2f\x66\x6f\x72\x6d\x3e\x5c\x6e"))
(assert (= x_44 (str.++ x_42 literal_43)))
(assert (str.in_re x_44 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
