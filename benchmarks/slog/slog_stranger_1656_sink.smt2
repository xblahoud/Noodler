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
(declare-fun x_8 () String)
(declare-fun literal_6 () String)
(declare-fun literal_7 () String)
(assert (= literal_6 "\x3c\x64\x69\x76\x20\x69\x64\x3d\x22\x73\x63\x6f\x72\x6d\x6d\x6f\x64\x65\x22\x20\x63\x6c\x61\x73\x73\x3d\x22\x6c\x65\x66\x74\x22\x3e\x72\x65\x76\x69\x65\x77\x6d\x6f\x64\x65\x3c\x2f\x64\x69\x76\x3e\x5c\x6e"))
(assert (= literal_7 ""))
(assert (or (= x_8 literal_6) (= x_8 literal_7)))
(assert (str.in_re x_8 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
