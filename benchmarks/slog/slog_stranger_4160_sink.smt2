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
(declare-fun literal_6 () String)
(declare-fun x_8 () String)
(declare-fun literal_2 () String)
(declare-fun literal_3 () String)
(declare-fun literal_4 () String)
(declare-fun x_9 () String)
(declare-fun literal_10 () String)
(declare-fun x_11 () String)
(declare-fun x_12 () String)
(assert (= literal_6 "\x3c\x62\x72\x3e\x5c\x6e\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x63\x68\x65\x63\x6b\x62\x6f\x78\x27\x20\x6e\x61\x6d\x65\x3d\x27\x73\x68\x6f\x77\x5f\x73\x69\x67\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x31\x27"))
(assert (= literal_2 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (= literal_3 ""))
(assert (= literal_4 "\x20\x63\x68\x65\x63\x6b\x65\x64"))
(assert (or (= x_8 literal_2) (= x_8 literal_3) (= x_8 sigmaStar_0) (= x_8 literal_4)))
(assert (= x_9 (str.++ literal_6 x_8)))
(assert (= literal_10 "\x3e"))
(assert (= x_11 (str.++ x_9 literal_10)))
(assert (= x_12 (str.++ x_11 sigmaStar_1)))
(assert (str.in_re x_12 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
