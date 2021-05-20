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
(declare-fun literal_15 () String)
(declare-fun x_14 () String)
(declare-fun literal_8 () String)
(declare-fun literal_10 () String)
(declare-fun literal_9 () String)
(declare-fun literal_7 () String)
(declare-fun x_16 () String)
(declare-fun sigmaStar_17 () String)
(declare-fun literal_18 () String)
(declare-fun x_19 () String)
(declare-fun literal_20 () String)
(declare-fun x_21 () String)
(assert (= literal_15 "\x53\x45\x4c\x45\x43\x54\x20\x75\x2e\x2a\x2c\x20\x72\x2e\x72\x61\x74\x69\x6e\x67\x2c\x20\x72\x2e\x74\x69\x6d\x65\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x46\x52\x4f\x4d\x20\x66\x6f\x72\x75\x6d\x5f\x72\x61\x74\x69\x6e\x67\x73\x20\x72\x2c\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x75\x73\x65\x72\x20\x75\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x57\x48\x45\x52\x45\x20\x72\x2e\x70\x6f\x73\x74\x20\x3d\x20\x27\x27\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x41\x4e\x44\x20\x72\x2e\x75\x73\x65\x72\x69\x64\x20\x3d\x20\x75\x2e\x69\x64\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x4f\x52\x44\x45\x52\x20\x42\x59\x20"))
(assert (= literal_8 "\x72\x2e\x72\x61\x74\x69\x6e\x67\x20\x41\x53\x43"))
(assert (= literal_10 "\x72\x2e\x74\x69\x6d\x65\x20\x41\x53\x43"))
(assert (= literal_9 "\x75\x2e\x66\x69\x72\x73\x74\x6e\x61\x6d\x65\x20\x41\x53\x43"))
(assert (= literal_7 "\x72\x2e\x74\x69\x6d\x65\x20\x41\x53\x43"))
(assert (or (= x_14 literal_8) (= x_14 literal_10) (= x_14 literal_9) (= x_14 literal_7)))
(assert (= x_16 (str.++ literal_15 x_14)))
(assert (= literal_18 "\x3c\x74\x64\x20\x6e\x6f\x77\x72\x61\x70\x3d\x22\x6e\x6f\x77\x72\x61\x70\x22\x3e\x3c\x70\x3e\x3c\x66\x6f\x6e\x74\x20\x73\x69\x7a\x65\x3d\x22\x2d\x31\x22\x3e"))
(assert (= x_19 (str.++ literal_18 x_16)))
(assert (= literal_20 "\x3c\x2f\x70\x3e"))
(assert (= x_21 (str.++ x_19 literal_20)))
(assert (str.in.re x_21 (re.++ (re.* re.allchar) (re.++ (str.to.re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)