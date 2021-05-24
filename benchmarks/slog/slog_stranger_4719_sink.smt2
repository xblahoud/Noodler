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
(declare-fun sigmaStar_2 () String)
(declare-fun literal_3 () String)
(declare-fun x_4 () String)
(declare-fun literal_5 () String)
(declare-fun x_6 () String)
(declare-fun x_7 () String)
(declare-fun literal_8 () String)
(declare-fun x_9 () String)
(declare-fun x_10 () String)
(declare-fun literal_11 () String)
(declare-fun x_12 () String)
(assert (= literal_3 "\x3c\x73\x63\x72\x69\x70\x74\x20\x6c\x61\x6e\x67\x75\x61\x67\x65\x3d\x27\x4a\x61\x76\x61\x53\x63\x72\x69\x70\x74\x27\x3e\x0d\x0a\x66\x75\x6e\x63\x74\x69\x6f\x6e\x20\x56\x61\x6c\x69\x64\x61\x74\x65\x46\x6f\x72\x6d\x28\x66\x72\x6d\x29\x20\x7b\x0d\x0a\x09\x69\x66\x20\x28\x66\x72\x6d\x2e\x75\x73\x65\x72\x6e\x61\x6d\x65\x2e\x76\x61\x6c\x75\x65\x3d\x3d\x22\x22\x29\x20\x7b\x0d\x0a\x09\x09\x61\x6c\x65\x72\x74\x28\x22"))
(assert (= x_4 (str.++ literal_3 sigmaStar_1)))
(assert (= literal_5 "\x22\x29\x3b\x0d\x0a\x09\x09\x72\x65\x74\x75\x72\x6e\x20\x66\x61\x6c\x73\x65\x3b\x0d\x0a\x09\x7d\x0d\x0a\x09\x69\x66\x20\x28\x66\x72\x6d\x2e\x70\x61\x73\x73\x77\x6f\x72\x64\x31\x2e\x76\x61\x6c\x75\x65\x3d\x3d\x22\x22\x29\x20\x7b\x0d\x0a\x09\x09\x61\x6c\x65\x72\x74\x28\x22"))
(assert (= x_6 (str.++ x_4 literal_5)))
(assert (= x_7 (str.++ x_6 sigmaStar_0)))
(assert (= literal_8 "\x22\x29\x3b\x0d\x0a\x09\x09\x72\x65\x74\x75\x72\x6e\x20\x66\x61\x6c\x73\x65\x3b\x0d\x0a\x09\x7d\x0d\x0a\x09\x69\x66\x20\x28\x66\x72\x6d\x2e\x65\x6d\x61\x69\x6c\x2e\x76\x61\x6c\x75\x65\x3d\x3d\x22\x22\x29\x20\x7b\x0d\x0a\x09\x09\x61\x6c\x65\x72\x74\x28\x22"))
(assert (= x_9 (str.++ x_7 literal_8)))
(assert (= x_10 (str.++ x_9 sigmaStar_2)))
(assert (= literal_11 "\x22\x29\x3b\x0d\x0a\x09\x09\x72\x65\x74\x75\x72\x6e\x20\x66\x61\x6c\x73\x65\x3b\x0d\x0a\x09\x7d\x0d\x0a\x7d\x0d\x0a\x3c\x2f\x73\x63\x72\x69\x70\x74\x3e\x5c\x6e"))
(assert (= x_12 (str.++ x_10 literal_11)))
(assert (str.in_re x_12 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
