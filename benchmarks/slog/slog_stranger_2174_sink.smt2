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
(declare-fun sigmaStar_5 () String)
(declare-fun sigmaStar_7 () String)
(declare-fun literal_8 () String)
(declare-fun x_9 () String)
(declare-fun x_10 () String)
(declare-fun literal_11 () String)
(declare-fun x_12 () String)
(declare-fun x_13 () String)
(declare-fun literal_14 () String)
(declare-fun x_15 () String)
(assert (= literal_8 "\x66\x75\x6e\x63\x74\x69\x6f\x6e\x20\x73\x65\x74\x66\x6f\x63\x75\x73\x28\x29\x20\x7b\x20\x69\x66\x28\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e"))
(assert (or (= x_9 sigmaStar_2) (= x_9 sigmaStar_7)))
(assert (= x_10 (str.++ literal_8 x_9)))
(assert (= literal_11 "\x29\x20\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e"))
(assert (= x_12 (str.++ x_10 literal_11)))
(assert (= x_13 (str.++ x_12 sigmaStar_3)))
(assert (= literal_14 "\x2e\x66\x6f\x63\x75\x73\x28\x29\x3b\x20\x7d\x5c\x6e"))
(assert (= x_15 (str.++ x_13 literal_14)))
(assert (str.in_re x_15 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
