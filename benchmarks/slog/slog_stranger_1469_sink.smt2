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
(declare-fun sigmaStar_11 () String)
(declare-fun sigmaStar_14 () String)
(declare-fun sigmaStar_15 () String)
(declare-fun sigmaStar_17 () String)
(declare-fun sigmaStar_19 () String)
(declare-fun sigmaStar_21 () String)
(declare-fun sigmaStar_25 () String)
(declare-fun sigmaStar_26 () String)
(declare-fun literal_28 () String)
(declare-fun x_29 () String)
(declare-fun literal_30 () String)
(declare-fun x_31 () String)
(declare-fun literal_32 () String)
(declare-fun x_33 () String)
(declare-fun literal_34 () String)
(declare-fun x_35 () String)
(declare-fun literal_36 () String)
(declare-fun x_37 () String)
(declare-fun literal_38 () String)
(declare-fun x_39 () String)
(declare-fun literal_42 () String)
(declare-fun x_43 () String)
(declare-fun literal_41 () String)
(declare-fun x_44 () String)
(declare-fun literal_45 () String)
(declare-fun x_46 () String)
(assert (= literal_28 "\x3f\x3d\x26\x3d\x26\x3d\x26\x3d\x26\x3d"))
(assert (= x_29 (str.++ literal_28 sigmaStar_26)))
(assert (= literal_30 "\x26"))
(assert (= x_31 (str.++ x_29 literal_30)))
(assert (= literal_32 "\x3d"))
(assert (= x_33 (str.++ x_31 literal_32)))
(assert (= literal_34 "\x26"))
(assert (= x_35 (str.++ x_33 literal_34)))
(assert (= literal_36 "\x3d"))
(assert (= x_37 (str.++ x_35 literal_36)))
(assert (= literal_38 "\x3c\x61\x20\x74\x61\x72\x67\x65\x74\x3d\x22\x4c\x41\x4d\x53\x20\x4d\x6f\x6e\x69\x74\x6f\x72\x22\x20\x74\x69\x74\x6c\x65\x3d\x22\x4c\x41\x4d\x53\x20\x4d\x6f\x6e\x69\x74\x6f\x72\x22\x20\x68\x72\x65\x66\x3d\x22"))
(assert (= x_39 (str.++ literal_38 x_37)))
(assert (= literal_42 "\x22\x3e"))
(assert (= x_43 (str.++ x_39 literal_42)))
(assert (= literal_41 "\x6f\x70\x65\x6e\x6d\x6f\x6e\x69\x74\x6f\x72"))
(assert (= x_44 (str.++ x_43 literal_41)))
(assert (= literal_45 "\x3c\x2f\x61\x3e"))
(assert (= x_46 (str.++ x_44 literal_45)))
(assert (str.in_re x_46 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
