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
(declare-fun literal_2 () String)
(declare-fun x_3 () String)
(declare-fun x_4 () String)
(declare-fun literal_5 () String)
(declare-fun x_6 () String)
(assert (= literal_2 "\x3c\x62\x72\x3e\x0d\x0a\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x74\x65\x78\x74\x27\x20\x6e\x61\x6d\x65\x3d\x27\x73\x68\x6f\x75\x74\x5f\x6e\x61\x6d\x65\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x74\x65\x78\x74\x62\x6f\x78\x27\x20\x6d\x61\x78\x6c\x65\x6e\x67\x74\x68\x3d\x27\x33\x30\x27\x20\x73\x74\x79\x6c\x65\x3d\x27\x77\x69\x64\x74\x68\x3a\x31\x34\x30\x70\x78\x3b\x27\x3e\x3c\x62\x72\x3e\x0d\x0a"))
(assert (= x_3 (str.++ sigmaStar_0 literal_2)))
(assert (= x_4 (str.++ x_3 sigmaStar_1)))
(assert (= literal_5 "\x3c\x62\x72\x3e\x5c\x6e"))
(assert (= x_6 (str.++ x_4 literal_5)))
(assert (str.in_re x_6 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
