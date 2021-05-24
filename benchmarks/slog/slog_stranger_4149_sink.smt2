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
(declare-fun literal_8 () String)
(declare-fun x_9 () String)
(declare-fun sigmaStar_10 () String)
(declare-fun literal_11 () String)
(declare-fun x_12 () String)
(declare-fun x_13 () String)
(declare-fun x_14 () String)
(declare-fun literal_15 () String)
(declare-fun x_16 () String)
(declare-fun sigmaStar_17 () String)
(declare-fun x_18 () String)
(declare-fun x_19 () String)
(declare-fun literal_20 () String)
(declare-fun x_21 () String)
(declare-fun x_22 () String)
(declare-fun x_24 () String)
(declare-fun literal_23 () String)
(declare-fun x_26 () String)
(declare-fun literal_25 () String)
(declare-fun x_27 () String)
(declare-fun literal_28 () String)
(declare-fun x_29 () String)
(declare-fun x_30 () String)
(declare-fun x_31 () String)
(declare-fun x_32 () String)
(declare-fun literal_33 () String)
(declare-fun x_34 () String)
(declare-fun x_35 () String)
(declare-fun literal_36 () String)
(declare-fun x_37 () String)
(assert (= literal_8 "\x3c\x61\x20\x68\x72\x65\x66\x3d\x27\x76\x69\x65\x77\x74\x68\x72\x65\x61\x64\x2e\x70\x68\x70\x3f\x66\x6f\x72\x75\x6d\x5f\x69\x64\x3d"))
(assert (= x_9 (str.++ literal_8 sigmaStar_1)))
(assert (= literal_11 "\x26\x61\x6d\x70\x3b\x74\x68\x72\x65\x61\x64\x5f\x69\x64\x3d"))
(assert (= x_12 (str.++ x_9 literal_11)))
(assert (or (= x_13 sigmaStar_10) (= x_13 sigmaStar_6)))
(assert (= x_14 (str.++ x_12 x_13)))
(assert (= literal_15 "\x26\x61\x6d\x70\x3b\x70\x69\x64\x3d"))
(assert (= x_16 (str.++ x_14 literal_15)))
(assert (or (= x_18 sigmaStar_17) (= x_18 sigmaStar_0)))
(assert (= x_19 (str.++ x_16 x_18)))
(assert (= literal_20 "\x23\x70\x6f\x73\x74\x5f"))
(assert (= x_21 (str.++ x_19 literal_20)))
(assert (or (= x_22 sigmaStar_17) (= x_22 sigmaStar_2)))
(assert (= x_24 (str.++ x_21 x_22)))
(assert (= literal_23 "\x3c\x2f\x61\x3e\x20\x7c\x0d\x0a\x3c\x61\x20\x68\x72\x65\x66\x3d\x27\x76\x69\x65\x77\x66\x6f\x72\x75\x6d\x2e\x70\x68\x70\x3f\x66\x6f\x72\x75\x6d\x5f\x69\x64\x3d"))
(assert (= x_26 (str.++ literal_23 sigmaStar_5)))
(assert (= literal_25 "\x27\x3e"))
(assert (= x_27 (str.++ x_24 literal_25)))
(assert (= literal_28 "\x27\x3e"))
(assert (= x_29 (str.++ x_26 literal_28)))
(assert (= x_30 (str.++ x_27 sigmaStar_3)))
(assert (= x_31 (str.++ x_30 x_29)))
(assert (= x_32 (str.++ x_31 sigmaStar_7)))
(assert (= literal_33 "\x3c\x2f\x61\x3e\x20\x7c\x0d\x0a\x3c\x61\x20\x68\x72\x65\x66\x3d\x27\x69\x6e\x64\x65\x78\x2e\x70\x68\x70\x27\x3e"))
(assert (= x_34 (str.++ x_32 literal_33)))
(assert (= x_35 (str.++ x_34 sigmaStar_4)))
(assert (= literal_36 "\x3c\x2f\x61\x3e\x3c\x62\x72\x3e\x3c\x62\x72\x3e\x0d\x0a\x3c\x2f\x63\x65\x6e\x74\x65\x72\x3e\x5c\x6e"))
(assert (= x_37 (str.++ x_35 literal_36)))
(assert (str.in_re x_37 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
