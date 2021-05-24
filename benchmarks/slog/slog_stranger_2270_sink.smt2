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
(declare-fun literal_8 () String)
(assert (= literal_8 "\x3c\x73\x63\x72\x69\x70\x74\x20\x6c\x61\x6e\x67\x75\x61\x67\x65\x3d\x22\x4a\x61\x76\x61\x53\x63\x72\x69\x70\x74\x22\x20\x74\x79\x70\x65\x3d\x22\x74\x65\x78\x74\x2f\x6a\x61\x76\x61\x73\x63\x72\x69\x70\x74\x22\x3e\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x76\x61\x72\x20\x6f\x20\x3d\x20\x6f\x70\x65\x6e\x65\x72\x2e\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x63\x72\x65\x61\x74\x65\x45\x6c\x65\x6d\x65\x6e\x74\x28\x22\x6f\x70\x74\x69\x6f\x6e\x22\x29\x3b\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x6f\x2e\x69\x6e\x6e\x65\x72\x48\x54\x4d\x4c\x20\x3d\x20\x22\x3c\x6f\x70\x74\x69\x6f\x6e\x3e\x3c\x2f\x6f\x70\x74\x69\x6f\x6e\x3e\x22\x3b\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x6f\x2e\x76\x61\x6c\x75\x65\x20\x3d\x20\x74\x61\x67\x73\x3b\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x6f\x70\x65\x6e\x65\x72\x2e\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x65\x6e\x74\x72\x79\x5b\x27\x6f\x74\x61\x67\x73\x5b\x5d\x27\x5d\x2e\x69\x6e\x73\x65\x72\x74\x42\x65\x66\x6f\x72\x65\x28\x6f\x2c\x20\x6e\x75\x6c\x6c\x29\x3b\x0d\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x3c\x2f\x73\x63\x72\x69\x70\x74\x3e"))
(assert (str.in_re literal_8 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
