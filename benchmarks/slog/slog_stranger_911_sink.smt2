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
(declare-fun literal_4 () String)
(declare-fun x_3 () String)
(declare-fun literal_2 () String)
(declare-fun literal_1 () String)
(declare-fun x_7 () String)
(declare-fun literal_8 () String)
(declare-fun x_9 () String)
(declare-fun literal_6 () String)
(declare-fun x_10 () String)
(declare-fun literal_11 () String)
(declare-fun x_12 () String)
(assert (= literal_4 "\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x22\x63\x68\x65\x63\x6b\x62\x6f\x78\x22\x20\x6e\x61\x6d\x65\x3d\x22\x66\x75\x6c\x6c\x73\x65\x61\x72\x63\x68\x22\x20\x76\x61\x6c\x75\x65\x3d\x22\x31\x22\x20"))
(assert (= literal_2 "\x63\x68\x65\x63\x6b\x65\x64\x3d\x22\x63\x68\x65\x63\x6b\x65\x64\x22"))
(assert (= literal_1 ""))
(assert (or (= x_3 literal_2) (= x_3 literal_1)))
(assert (= x_7 (str.++ literal_4 x_3)))
(assert (= literal_8 "\x20\x61\x6c\x74\x3d\x22"))
(assert (= x_9 (str.++ x_7 literal_8)))
(assert (= literal_6 "\x73\x65\x61\x72\x63\x68\x69\x6e\x64\x65\x66\x69\x6e\x69\x74\x69\x6f\x6e"))
(assert (= x_10 (str.++ x_9 literal_6)))
(assert (= literal_11 "\x22\x20\x2f\x3e"))
(assert (= x_12 (str.++ x_10 literal_11)))
(assert (str.in_re x_12 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
