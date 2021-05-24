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
(declare-fun x_2 () String)
(declare-fun epsilon () String)
(declare-fun literal_3 () String)
(declare-fun x_4 () String)
(declare-fun x_5 () String)
(declare-fun literal_6 () String)
(declare-fun x_7 () String)
(declare-fun literal_8 () String)
(declare-fun x_10 () String)
(declare-fun literal_9 () String)
(declare-fun x_11 () String)
(declare-fun x_12 () String)
(assert (= epsilon ""))
(assert (= x_2 epsilon))
(assert (= literal_3 "\x20\x7c\x20"))
(assert (= x_4 (str.++ x_2 literal_3)))
(assert (= x_5 (str.++ x_4 x_2)))
(assert (= literal_6 "\x3c\x2f\x61\x3e\x20\x7c\x20"))
(assert (= x_7 (str.++ literal_6 x_5)))
(assert (= literal_8 "\x3c\x2f\x74\x64\x3e\x5c\x6e"))
(assert (= x_10 (str.++ x_7 literal_8)))
(assert (= literal_9 "\x3c\x74\x61\x62\x6c\x65\x20\x63\x65\x6c\x6c\x73\x70\x61\x63\x69\x6e\x67\x3d\x27\x30\x27\x20\x63\x65\x6c\x6c\x70\x61\x64\x64\x69\x6e\x67\x3d\x27\x30\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x31\x30\x30\x25\x27\x3e\x0d\x0a\x3c\x74\x72\x3e\x0d\x0a\x3c\x74\x64\x20\x63\x6c\x61\x73\x73\x3d\x27\x73\x6d\x61\x6c\x6c\x61\x6c\x74\x27\x3e\x0d\x0a\x3c\x61\x20\x68\x72\x65\x66\x3d\x27\x69\x6e\x64\x65\x78\x2e\x70\x68\x70\x27\x3e"))
(assert (= x_11 (str.++ literal_9 sigmaStar_0)))
(assert (= x_12 (str.++ x_11 x_10)))
(assert (str.in_re x_12 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
