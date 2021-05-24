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
(declare-fun x_13 () String)
(declare-fun x_21 () String)
(declare-fun literal_8 () String)
(declare-fun literal_10 () String)
(declare-fun literal_9 () String)
(declare-fun literal_11 () String)
(declare-fun literal_6 () String)
(declare-fun literal_12 () String)
(declare-fun literal_7 () String)
(declare-fun literal_5 () String)
(declare-fun x_22 () String)
(declare-fun literal_23 () String)
(declare-fun x_24 () String)
(assert (= literal_2 "\x3c\x68\x31\x3e\x41\x64\x64\x20\x4e\x65\x77\x20\x41\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x3c\x2f\x68\x31\x3e\x0d\x0a\x0d\x0a\x20\x20\x3c\x66\x6f\x72\x6d\x20\x6e\x61\x6d\x65\x3d\x27\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x27\x20\x61\x63\x74\x69\x6f\x6e\x3d\x27\x2e\x2f\x69\x6e\x64\x65\x78\x2e\x70\x68\x70\x27\x20\x6d\x65\x74\x68\x6f\x64\x3d\x27\x50\x4f\x53\x54\x27\x3e\x0d\x0a\x20\x20\x3c\x62\x72\x3e\x3c\x62\x72\x3e\x3c\x62\x72\x3e\x0d\x0a\x20\x20\x3c\x74\x61\x62\x6c\x65\x20\x63\x65\x6c\x6c\x73\x70\x61\x63\x69\x6e\x67\x3d\x27\x30\x27\x20\x63\x65\x6c\x6c\x70\x61\x64\x64\x69\x6e\x67\x3d\x27\x35\x27\x20\x63\x6c\x61\x73\x73\x3d\x27\x64\x79\x6e\x61\x6d\x69\x63\x6c\x69\x73\x74\x27\x20\x61\x6c\x69\x67\x6e\x3d\x27\x63\x65\x6e\x74\x65\x72\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x36\x30\x30\x27\x3e\x0d\x0a\x20\x20\x20\x3c\x74\x72\x20\x63\x6c\x61\x73\x73\x3d\x27\x68\x65\x61\x64\x65\x72\x27\x3e\x0d\x0a\x09\x3c\x74\x68\x3e\x54\x69\x74\x6c\x65\x3c\x2f\x74\x68\x3e\x0d\x0a\x09\x3c\x74\x68\x3e\x4d\x65\x73\x73\x61\x67\x65\x3c\x2f\x74\x68\x3e\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x72\x3e\x0d\x0a\x20\x20\x20\x3c\x74\x72\x20\x63\x6c\x61\x73\x73\x3d\x27\x65\x76\x65\x6e\x27\x20\x76\x61\x6c\x69\x67\x6e\x3d\x27\x74\x6f\x70\x27\x3e\x0d\x0a\x09\x3c\x74\x64\x3e\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x74\x65\x78\x74\x27\x20\x6e\x61\x6d\x65\x3d\x27\x74\x69\x74\x6c\x65\x27\x20\x6d\x61\x78\x6c\x65\x6e\x67\x74\x68\x3d\x27\x31\x35\x27\x20\x73\x69\x7a\x65\x3d\x27\x31\x35\x27\x20\x2f\x3e\x3c\x2f\x74\x64\x3e\x0d\x0a\x09\x3c\x74\x64\x3e\x3c\x74\x65\x78\x74\x61\x72\x65\x61\x20\x6e\x61\x6d\x65\x3d\x27\x6d\x65\x73\x73\x61\x67\x65\x27\x20\x72\x6f\x77\x73\x3d\x35\x20\x63\x6f\x6c\x73\x3d\x33\x30\x3e\x3c\x2f\x74\x65\x78\x74\x61\x72\x65\x61\x3e\x3c\x2f\x74\x64\x3e\x0d\x0a\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x72\x3e\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x61\x62\x6c\x65\x3e\x0d\x0a\x0d\x0a\x20\x20\x20\x3c\x62\x72\x3e\x0d\x0a\x0d\x0a\x20\x20\x20\x3c\x74\x61\x62\x6c\x65\x20\x63\x65\x6c\x6c\x70\x61\x64\x64\x69\x6e\x67\x3d\x27\x30\x27\x20\x62\x6f\x72\x64\x65\x72\x3d\x27\x30\x27\x20\x61\x6c\x69\x67\x6e\x3d\x27\x63\x65\x6e\x74\x65\x72\x27\x20\x77\x69\x64\x74\x68\x3d\x27\x36\x30\x30\x27\x3e\x0d\x0a\x20\x20\x20\x3c\x74\x72\x3e\x0d\x0a\x20\x20\x20\x3c\x74\x64\x3e\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x62\x75\x74\x74\x6f\x6e\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x41\x64\x64\x20\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x27\x20\x6f\x6e\x43\x6c\x69\x63\x6b\x3d\x27\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x76\x61\x6c\x75\x65\x3d\x31\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x70\x61\x67\x65\x32\x2e\x76\x61\x6c\x75\x65\x3d\x34\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x73\x75\x62\x6d\x69\x74\x28\x29\x3b\x27\x3e\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x62\x75\x74\x74\x6f\x6e\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x43\x61\x6e\x63\x65\x6c\x27\x20\x6f\x6e\x43\x6c\x69\x63\x6b\x3d\x27\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x70\x61\x67\x65\x32\x2e\x76\x61\x6c\x75\x65\x3d\x34\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x2e\x73\x75\x62\x6d\x69\x74\x28\x29\x3b\x27\x3e\x3c\x2f\x74\x64\x3e\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x72\x3e\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x61\x62\x6c\x65\x3e\x0d\x0a\x0d\x0a\x20\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x68\x69\x64\x64\x65\x6e\x27\x20\x6e\x61\x6d\x65\x3d\x27\x61\x64\x64\x61\x6e\x6e\x6f\x75\x6e\x63\x65\x6d\x65\x6e\x74\x27\x20\x76\x61\x6c\x75\x65\x3d\x27\x27\x3e\x0d\x0a\x20\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x68\x69\x64\x64\x65\x6e\x27\x20\x6e\x61\x6d\x65\x3d\x27\x70\x61\x67\x65\x32\x27\x20\x76\x61\x6c\x75\x65\x3d\x27"))
(assert (= x_3 (str.++ literal_2 sigmaStar_0)))
(assert (= literal_4 "\x3e\x0d\x0a\x20\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x68\x69\x64\x64\x65\x6e\x27\x20\x6e\x61\x6d\x65\x3d\x27\x64\x61\x74\x65\x27\x3e\x0d\x0a\x20\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x68\x69\x64\x64\x65\x6e\x27\x20\x6e\x61\x6d\x65\x3d\x27\x6c\x6f\x67\x6f\x75\x74\x27\x3e\x0d\x0a\x20\x20\x3c\x69\x6e\x70\x75\x74\x20\x74\x79\x70\x65\x3d\x27\x68\x69\x64\x64\x65\x6e\x27\x20\x6e\x61\x6d\x65\x3d\x27\x70\x61\x67\x65\x27\x20\x76\x61\x6c\x75\x65\x3d\x27"))
(assert (= x_13 (str.++ x_3 literal_4)))
(assert (= literal_8 "\x35"))
(assert (= literal_10 "\x30"))
(assert (= literal_9 "\x31"))
(assert (= literal_11 "\x32"))
(assert (= literal_6 "\x34"))
(assert (= literal_12 "\x30"))
(assert (= literal_7 "\x30"))
(assert (= literal_5 "\x32"))
(assert (or (= x_21 literal_8) (= x_21 literal_10) (= x_21 literal_9) (= x_21 sigmaStar_1) (= x_21 literal_11) (= x_21 literal_6) (= x_21 literal_12) (= x_21 literal_7) (= x_21 literal_5)))
(assert (= x_22 (str.++ x_13 x_21)))
(assert (= literal_23 "\x3e\x0d\x0a\x0d\x0a\x20\x3c\x2f\x66\x6f\x72\x6d\x3e\x0d\x0a\x0d\x0a\x20\x3c\x74\x61\x62\x6c\x65\x20\x77\x69\x64\x74\x68\x3d\x35\x32\x30\x27\x20\x62\x6f\x72\x64\x65\x72\x3d\x30\x20\x63\x65\x6c\x6c\x73\x70\x61\x63\x69\x6e\x67\x3d\x30\x20\x63\x65\x6c\x6c\x70\x61\x64\x64\x69\x6e\x67\x3d\x30\x20\x68\x65\x69\x67\x68\x74\x3d\x31\x3e\x0d\x0a\x20\x20\x3c\x74\x72\x3e\x0d\x0a\x20\x20\x20\x3c\x74\x64\x20\x76\x61\x6c\x69\x67\x6e\x3d\x27\x74\x6f\x70\x27\x3e\x0d\x0a\x09\x26\x6e\x62\x73\x70\x3b\x0d\x0a\x20\x20\x20\x3c\x2f\x74\x64\x3e\x0d\x0a\x20\x20\x3c\x2f\x74\x72\x3e\x0d\x0a\x20\x3c\x2f\x74\x61\x62\x6c\x65\x3e\x0d\x0a\x20"))
(assert (= x_24 (str.++ x_22 literal_23)))
(assert (str.in_re x_24 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
