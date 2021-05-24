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
(declare-fun literal_4 () String)
(declare-fun x_5 () String)
(declare-fun x_6 () String)
(declare-fun literal_7 () String)
(declare-fun x_8 () String)
(assert (= literal_2 "\x3c\x73\x63\x72\x69\x70\x74\x20\x74\x79\x70\x65\x3d\x27\x74\x65\x78\x74\x2f\x6a\x61\x76\x61\x73\x63\x72\x69\x70\x74\x27\x3e\x0d\x0a\x66\x75\x6e\x63\x74\x69\x6f\x6e\x20\x44\x65\x6c\x65\x74\x65\x50\x61\x67\x65\x28\x29\x20\x7b\x0d\x0a\x09\x72\x65\x74\x75\x72\x6e\x20\x63\x6f\x6e\x66\x69\x72\x6d\x28\x27"))
(assert (= x_3 (str.++ literal_2 sigmaStar_0)))
(assert (= literal_4 "\x27\x29\x3b\x0d\x0a\x7d\x0d\x0a\x66\x75\x6e\x63\x74\x69\x6f\x6e\x20\x56\x61\x6c\x69\x64\x61\x74\x65\x46\x6f\x72\x6d\x28\x66\x72\x6d\x29\x20\x7b\x0d\x0a\x09\x69\x66\x28\x66\x72\x6d\x2e\x70\x61\x67\x65\x5f\x74\x69\x74\x6c\x65\x2e\x76\x61\x6c\x75\x65\x3d\x3d\x27\x27\x29\x20\x7b\x0d\x0a\x09\x09\x61\x6c\x65\x72\x74\x28\x27"))
(assert (= x_5 (str.++ x_3 literal_4)))
(assert (= x_6 (str.++ x_5 sigmaStar_1)))
(assert (= literal_7 "\x27\x29\x3b\x0d\x0a\x09\x09\x72\x65\x74\x75\x72\x6e\x20\x66\x61\x6c\x73\x65\x3b\x0d\x0a\x09\x7d\x0d\x0a\x7d\x0d\x0a\x3c\x2f\x73\x63\x72\x69\x70\x74\x3e\x5c\x6e"))
(assert (= x_8 (str.++ x_6 literal_7)))
(assert (str.in_re x_8 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
