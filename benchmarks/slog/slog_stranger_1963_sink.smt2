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
(declare-fun literal_10 () String)
(declare-fun x_9 () String)
(declare-fun epsilon () String)
(declare-fun literal_7 () String)
(declare-fun x_11 () String)
(declare-fun literal_12 () String)
(declare-fun x_13 () String)
(declare-fun literal_3 () String)
(declare-fun x_14 () String)
(declare-fun literal_15 () String)
(declare-fun x_16 () String)
(declare-fun literal_17 () String)
(declare-fun x_18 () String)
(declare-fun x_19 () String)
(declare-fun literal_20 () String)
(declare-fun x_21 () String)
(assert (= literal_10 "\x3c\x61\x20\x74\x69\x74\x6c\x65\x3d\x5c\x22\x70\x72\x65\x76\x69\x65\x77\x5c\x22\x20\x68\x72\x65\x66\x3d\x5c\x22\x6a\x61\x76\x61\x73\x63\x72\x69\x70\x74\x3a\x76\x6f\x69\x64\x28\x29\x3b\x5c\x22\x20\x6f\x6e\x43\x6c\x69\x63\x6b\x3d\x5c\x22\x6f\x70\x65\x6e\x70\x6f\x70\x75\x70\x28\x27\x2f\x71\x75\x65\x73\x74\x69\x6f\x6e\x2f\x70\x72\x65\x76\x69\x65\x77\x2e\x70\x68\x70\x3f\x69\x64\x3d\x26\x71\x75\x69\x7a\x69\x64\x3d"))
(assert (= epsilon ""))
(assert (= literal_7 "\x30"))
(assert (or (= x_9 epsilon) (= x_9 literal_7)))
(assert (= x_11 (str.++ literal_10 x_9)))
(assert (= literal_12 "\x27\x2c\x27"))
(assert (= x_13 (str.++ x_11 literal_12)))
(assert (= literal_3 "\x70\x72\x65\x76\x69\x65\x77"))
(assert (= x_14 (str.++ x_13 literal_3)))
(assert (= literal_15 "\x27\x2c\x27\x73\x63\x72\x6f\x6c\x6c\x62\x61\x72\x73\x3d\x79\x65\x73\x2c\x72\x65\x73\x69\x7a\x61\x62\x6c\x65\x3d\x79\x65\x73\x2c\x77\x69\x64\x74\x68\x3d\x37\x30\x30\x2c\x68\x65\x69\x67\x68\x74\x3d\x34\x38\x30\x27\x2c\x20\x66\x61\x6c\x73\x65\x29\x5c\x22\x3e\x3c\x69\x6d\x67\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x73\x72\x63\x3d\x5c\x22"))
(assert (= x_16 (str.++ x_14 literal_15)))
(assert (= literal_17 "\x2f\x74\x2f\x70\x72\x65\x76\x69\x65\x77\x2e\x67\x69\x66\x5c\x22\x20\x62\x6f\x72\x64\x65\x72\x3d\x5c\x22\x30\x5c\x22\x20\x61\x6c\x74\x3d\x5c\x22"))
(assert (= x_18 (str.++ x_16 literal_17)))
(assert (= x_19 (str.++ x_18 literal_3)))
(assert (= literal_20 "\x5c\x22\x20\x2f\x3e\x3c\x2f\x61\x3e\x26\x6e\x62\x73\x70\x3b"))
(assert (= x_21 (str.++ x_19 literal_20)))
(assert (str.in_re x_21 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
