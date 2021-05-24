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
(declare-fun literal_16 () String)
(declare-fun x_15 () String)
(declare-fun literal_13 () String)
(declare-fun literal_14 () String)
(declare-fun x_18 () String)
(declare-fun literal_20 () String)
(declare-fun x_22 () String)
(declare-fun x_23 () String)
(declare-fun literal_24 () String)
(declare-fun x_25 () String)
(assert (= literal_16 "\x2f"))
(assert (= literal_13 "\x77\x64\x69\x72"))
(assert (= literal_14 "\x2f"))
(assert (or (= x_15 literal_13) (= x_15 literal_14)))
(assert (= x_18 (str.++ literal_16 x_15)))
(assert (= literal_20 "\x3c\x70\x3e\x75\x70\x6c\x6f\x61\x64\x61\x66\x69\x6c\x65\x20\x28\x6d\x61\x78\x73\x69\x7a\x65\x29\x20\x2d\x2d\x3e\x20\x3c\x62\x3e"))
(assert (or (= x_22 x_18) (= x_22 literal_13) (= x_22 literal_14)))
(assert (= x_23 (str.++ literal_20 x_22)))
(assert (= literal_24 "\x3c\x2f\x62\x3e\x3c\x2f\x70\x3e"))
(assert (= x_25 (str.++ x_23 literal_24)))
(assert (str.in_re x_25 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
