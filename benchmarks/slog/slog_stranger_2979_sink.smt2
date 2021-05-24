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
(declare-fun sigmaStar_3 () String)
(declare-fun sigmaStar_4 () String)
(declare-fun sigmaStar_5 () String)
(declare-fun sigmaStar_6 () String)
(declare-fun sigmaStar_7 () String)
(declare-fun literal_8 () String)
(declare-fun x_9 () String)
(declare-fun literal_10 () String)
(declare-fun x_11 () String)
(declare-fun x_12 () String)
(declare-fun literal_13 () String)
(declare-fun x_14 () String)
(declare-fun x_15 () String)
(declare-fun literal_16 () String)
(declare-fun x_17 () String)
(declare-fun x_18 () String)
(declare-fun literal_19 () String)
(declare-fun x_20 () String)
(declare-fun x_21 () String)
(declare-fun literal_22 () String)
(declare-fun x_23 () String)
(declare-fun literal_24 () String)
(declare-fun x_25 () String)
(assert (= literal_8 "\x53\x45\x4c\x45\x43\x54\x20\x2a\x20\x46\x52\x4f\x4d\x20"))
(assert (= x_9 (str.++ literal_8 sigmaStar_2)))
(assert (= literal_10 "\x73\x68\x6f\x75\x74\x62\x6f\x78\x20\x4c\x45\x46\x54\x20\x4a\x4f\x49\x4e\x20"))
(assert (= x_11 (str.++ x_9 literal_10)))
(assert (= x_12 (str.++ x_11 sigmaStar_5)))
(assert (= literal_13 "\x75\x73\x65\x72\x73\x0d\x0a\x09\x4f\x4e\x20"))
(assert (= x_14 (str.++ x_12 literal_13)))
(assert (= x_15 (str.++ x_14 sigmaStar_1)))
(assert (= literal_16 "\x73\x68\x6f\x75\x74\x62\x6f\x78\x2e\x73\x68\x6f\x75\x74\x5f\x6e\x61\x6d\x65\x3d"))
(assert (= x_17 (str.++ x_15 literal_16)))
(assert (= x_18 (str.++ x_17 sigmaStar_6)))
(assert (= literal_19 "\x75\x73\x65\x72\x73\x2e\x75\x73\x65\x72\x5f\x69\x64\x0d\x0a\x09\x4f\x52\x44\x45\x52\x20\x42\x59\x20\x73\x68\x6f\x75\x74\x5f\x64\x61\x74\x65\x73\x74\x61\x6d\x70\x20\x44\x45\x53\x43\x20\x4c\x49\x4d\x49\x54\x20\x30\x2c"))
(assert (= x_20 (str.++ x_18 literal_19)))
(assert (= x_21 (str.++ x_20 sigmaStar_7)))
(assert (= literal_22 "\x3c\x62\x72\x3e\x5c\x6e\x3c\x73\x70\x61\x6e\x20\x63\x6c\x61\x73\x73\x3d\x27\x73\x68\x6f\x75\x74\x62\x6f\x78\x27\x3e"))
(assert (= x_23 (str.++ literal_22 x_21)))
(assert (= literal_24 "\x3c\x2f\x73\x70\x61\x6e\x3e\x3c\x62\x72\x3e\x5c\x6e"))
(assert (= x_25 (str.++ x_23 literal_24)))
(assert (str.in_re x_25 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x5c\x3c\x53\x43\x52\x49\x50\x54") (re.* re.allchar)))))
(check-sat)
(exit)
