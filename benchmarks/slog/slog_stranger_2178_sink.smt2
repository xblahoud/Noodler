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
(declare-fun sigmaStar_2 () String)
(declare-fun literal_6 () String)
(assert (= literal_6 "\x2f\x71\x75\x65\x73\x74\x69\x6f\x6e\x2f\x74\x79\x70\x65\x2f\x71\x75\x65\x73\x74\x69\x6f\x6e\x2f\x74\x79\x70\x65\x2f\x71\x75\x65\x73\x74\x69\x6f\x6e\x74\x79\x70\x65\x2e\x70\x68\x70"))
(assert (str.in_re literal_6 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x2f\x65\x76\x69\x6c") (re.* re.allchar)))))
(check-sat)
(exit)
