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
(declare-fun sigmaStar_9 () String)
(declare-fun literal_11 () String)
(declare-fun x_7 () String)
(declare-fun literal_2 () String)
(declare-fun literal_3 () String)
(declare-fun x_14 () String)
(declare-fun literal_13 () String)
(declare-fun x_15 () String)
(declare-fun x_16 () String)
(declare-fun epsilon () String)
(declare-fun x_17 () String)
(declare-fun literal_12 () String)
(declare-fun x_18 () String)
(declare-fun literal_19 () String)
(declare-fun x_21 () String)
(declare-fun literal_20 () String)
(declare-fun x_22 () String)
(declare-fun literal_6 () String)
(declare-fun x_23 () String)
(declare-fun x_24 () String)
(declare-fun literal_27 () String)
(declare-fun x_30 () String)
(declare-fun literal_28 () String)
(declare-fun x_31 () String)
(declare-fun literal_29 () String)
(declare-fun x_32 () String)
(declare-fun literal_26 () String)
(declare-fun x_33 () String)
(declare-fun x_34 () String)
(declare-fun x_35 () String)
(declare-fun x_37 () String)
(assert (= literal_11 "\x2f\x6c\x61\x6e\x67\x2f"))
(assert (= literal_2 ""))
(assert (= literal_3 ""))
(assert (or (= x_7 literal_2) (= x_7 literal_3)))
(assert (= x_14 (str.++ literal_11 x_7)))
(assert (= literal_13 "\x2f\x68\x65\x6c\x70"))
(assert (= x_15 (str.++ x_14 literal_13)))
(assert (= epsilon ""))
(assert (= x_16 epsilon))
(assert (= x_17 (str.++ x_16 x_15)))
(assert (= literal_12 "\x2f\x6d\x6f\x64\x2f\x6d\x6f\x64\x75\x6c\x65\x2f\x6c\x61\x6e\x67\x2f"))
(assert (= x_18 (str.++ literal_12 x_7)))
(assert (= literal_19 "\x2f"))
(assert (= x_21 (str.++ x_17 literal_19)))
(assert (= literal_20 "\x2f\x68\x65\x6c\x70\x2f"))
(assert (= x_22 (str.++ x_18 literal_20)))
(assert (= literal_6 "\x6d\x6f\x64\x75\x6c\x65"))
(assert (= x_23 (str.++ x_21 literal_6)))
(assert (= x_24 (str.++ x_22 literal_6)))
(assert (= literal_27 "\x2f"))
(assert (= x_30 (str.++ x_23 literal_27)))
(assert (= literal_28 "\x2f"))
(assert (= x_31 (str.++ x_24 literal_28)))
(assert (= literal_29 "\x2f"))
(assert (= x_32 (str.++ x_17 literal_29)))
(assert (= literal_26 "\x66\x69\x6c\x65"))
(assert (= x_33 (str.++ x_30 literal_26)))
(assert (= x_34 (str.++ x_31 literal_26)))
(assert (= x_35 (str.++ x_32 literal_26)))
(assert (or (= x_37 x_33) (= x_37 x_35) (= x_37 x_34)))
(assert (str.in_re x_37 (re.++ (re.* re.allchar) (re.++ (str.to_re "\x2f\x65\x76\x69\x6c") (re.* re.allchar)))))
(check-sat)
(exit)
