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

(declare-fun sigmaStar_1 () String)
(declare-fun sigmaStar_2 () String)
(declare-fun sigmaStar_3 () String)
(declare-fun literal_4 () String)
(declare-fun x_5 () String)
(declare-fun literal_6 () String)
(declare-fun x_7 () String)
(assert (= literal_4 "\x2f\x68\x6f\x72\x64\x65"))
(assert (= x_5 (str.++ sigmaStar_3 literal_4)))
(assert (= literal_6 "\x2f\x6c\x69\x62\x2f\x53\x65\x63\x72\x65\x74\x2e\x70\x68\x70"))
(assert (= x_7 (str.++ x_5 literal_6)))
(assert (str.in_re x_7 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x2f\x65\x76\x69\x6c") (re.* re.allchar)))))
(check-sat)
(exit)
