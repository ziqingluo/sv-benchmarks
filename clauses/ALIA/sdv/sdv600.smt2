(set-info :origin "driver benchmark extracted from Microsoft SDV")
(set-logic HORN)
(declare-fun Proc34 (Int Int Int Bool Int) Bool)
(declare-fun Proc24 (Int Int Int Bool Int) Bool)
(declare-fun Proc22 (Int Int Int Bool) Bool)
(declare-fun Proc16 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc12 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc19 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc17 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc32 (Int Int Int Bool Int) Bool)
(declare-fun Proc41 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc25 (Int Int Int Bool Int) Bool)
(declare-fun Proc40 (Int Int Int Bool Int) Bool)
(declare-fun Proc27 (Int Int Int Bool Int Int Int Bool Int) Bool)
(declare-fun Proc37 (Int Int Int Bool Int) Bool)
(declare-fun Proc49 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc31 (Int Int Int Bool Int) Bool)
(declare-fun Proc13 (Int Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc46 (Int Int Int Bool Int Int Int Int Int Int) Bool)
(declare-fun Proc0 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc42 (Int Int Int Bool Int) Bool)
(declare-fun Proc43 (Int Int Int Bool Int) Bool)
(declare-fun Proc9 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc1 (Int Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc33 (Int Int Int Bool Int) Bool)
(declare-fun Proc20 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc5 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc10 (Int Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc2 (Int Int Int Bool Int Int Int Int Int Int) Bool)
(declare-fun Proc23 (Int Int Int Bool Int) Bool)
(declare-fun Proc47 (Int Int Int Bool Int) Bool)
(declare-fun Proc30 (Int Int Int Bool Int) Bool)
(declare-fun Proc51 (Int Int Int Bool Int Bool Int Int Int) Bool)
(declare-fun Proc45 (Int Int Int Bool Int) Bool)
(declare-fun Proc26 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc7 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc11 (Int Int Int Bool Int Int Int Int Int Int) Bool)
(declare-fun Proc21 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc39 (Int Int Int Bool Int) Bool)
(declare-fun Proc29 (Int Int Int Bool Int) Bool)
(declare-fun Proc15 (Int Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc3 (Int Int Int Bool Int) Bool)
(declare-fun Proc18 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc36 (Int Int Int Bool Int) Bool)
(declare-fun Proc38 (Int Int Int Bool Int) Bool)
(declare-fun Proc44 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc50 (Int Int Int Bool) Bool)
(declare-fun Proc35 (Int Int Int Bool Int) Bool)
(declare-fun Proc14 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc6 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc4
             (Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun Proc28 (Int Int Int Bool Int) Bool)
(declare-fun Proc8 (Int Int Int Bool Int Int Int Int Int Int) Bool)
(declare-fun Proc48 (Int Int Int Bool Int) Bool)
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool))
  (let ((a!1 (and (not (<= M (+ 4 O))) (not (<= M N))))
        (a!2 (not (and (not (= H 0)) (Proc1 M I J P G F 1 E)))))
  (let ((a!3 (or (not P)
                 (not (= O N))
                 (not a!1)
                 (= L 0)
                 (not (Proc0 M K J P 2 O I))
                 (= H 0)
                 a!2
                 (not (and (= D 0) (= C M) (= B I))))))
    (=> (not a!3) (Proc2 N K J P L A G D C B))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (P Bool))
  (let ((a!1 (not (and (not (= F 0))
                       (= E (+ 24 F))
                       (Proc4 J I H P E 99 F 0 D 0 0 0 1 1 1 C)))))
  (let ((a!2 (not (or (not P)
                      (not (Proc3 J I H P 0))
                      (= G 0)
                      (= F 0)
                      a!1
                      (not (= B 0))))))
    (=> a!2 (Proc5 J I H P G A B))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (Proc6 G F E P D C B)) (not (= A 0))))))
    (=> a!1 (Proc7 G F E P D C A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (P Bool))
  (let ((a!1 (not (or (not P)
                      (= H 0)
                      (not (Proc8 G F E P D 100 C 1 1 1))
                      (not (Proc6 G F E P H D B))
                      (not (= A B))))))
    (=> a!1 (Proc9 G F E P H D A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int))
  (let ((a!1 (and (= S R) (not (<= Q (+ 4 S)))))
        (a!2 (and (not (<= Q R)) (= O Q) (not (<= N (+ 4 O))) (not (<= N Q))))
        (a!3 (not (and (= F H) (= E K) (= D J) (= C I)))))
  (let ((a!4 (or (not (and (= I 1) (= H G))) a!3)))
  (let ((a!5 (and a!4 (or (= I 1) (not (= H 0)) a!3))))
  (let ((a!6 (not (or (not P)
                      (not a!1)
                      (not a!2)
                      (not (Proc10 N M L P O S K J I))
                      a!5))))
    (=> a!6 (Proc11 R M L P B A F E D C))))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (P Bool))
  (let ((a!1 (and (not (<= I (+ 4 K))) (not (<= I J)))))
  (let ((a!2 (or (not P)
                 (not (= K J))
                 (not a!1)
                 (not (Proc12 I H G P K F))
                 (not (and (= E 0) (= D I) (= C F))))))
    (=> (not a!2) (Proc13 J H G P B A E D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (P Bool))
  (let ((a!1 (not (or (not P) (not (Proc14 J I H P G F)) (not (= E F))))))
    (=> a!1 (Proc15 J I H P D C B A E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (P Bool))
  (let ((a!1 (not (and (not (= H 0)) (Proc16 G F E P D C 0)))))
  (let ((a!2 (not (or (not P) (= H 0) a!1 (not (= B 1))))))
    (=> a!2 (Proc17 G F E P A H B))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (P Bool))
  (let ((a!1 (not (or (not P) (= E 0) (not (= D 2))))))
    (=> a!1 (Proc12 C B A P E D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int))
  (let ((a!1 (not (and (= Q (- 1073741670)) (= S Q))))
        (a!2 (not (and (= O (- 1073741811)) (= S O)))))
  (let ((a!3 (and (or (not (= S 0)) (not (= R S)))
                  (or a!1 (not (= R S)))
                  (or a!2 (not (= R S))))))
    (=> (not (or (not P) a!3)) (Proc4 N M L P K J I H G F E D C B A R))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (P Bool))
  (let ((a!1 (and (not (<= E (+ 1 G))) (not (<= E F)))))
  (let ((a!2 (or (not P) (not (= G F)) (not a!1) (not (and (= D G) (= C E))))))
    (=> (not a!2) (Proc14 F B A P D C))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (P Bool))
  (let ((a!1 (not (or (not P) (= F 0) (not (= E 259))))))
    (=> a!1 (Proc18 D C B P A F E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (P Bool))
  (let ((a!1 (not (or (not P) (not (= H G))))))
    (=> a!1 (Proc1 F E D P C B A H)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (P Bool))
  (let ((a!1 (and (not (<= G (+ 1 I))) (not (<= G H)))))
  (let ((a!2 (or (not P)
                 (not (= I H))
                 (not a!1)
                 (not (Proc19 G F E P I D))
                 (not (and (= C G) (= B D))))))
    (=> (not a!2) (Proc20 H F E P A C B))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= E 1))))))
    (=> a!1 (Proc19 D C B P A E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (P Bool))
  (let ((a!1 (or (not (= J 1))
                 (not (and (= I H) (= G F)))
                 (not (and (= E I) (= D G)))))
        (a!2 (or (not (= J 2))
                 (not (and (= I H) (= G F)))
                 (not (and (= E I) (= D G)))))
        (a!3 (or (not (= A 1))
                 (not (and (= I B) (= G A)))
                 (not (and (= E I) (= D G)))))
        (a!4 (or (= A 1)
                 (not (and (= I B) (= G A)))
                 (not (and (= E I) (= D G)))))
        (a!7 (or (not (= J 0))
                 (not (and (= I H) (= G F)))
                 (not (and (= E I) (= D G))))))
  (let ((a!5 (and a!2 (or (= J 2) (not (Proc20 H J F P C B A)) (and a!3 a!4)))))
  (let ((a!6 (or (= J 0) (and a!1 (or (= J 1) a!5)))))
    (=> (not (or (not P) (and a!6 a!7))) (Proc21 H J F P C E D)))))))
(assert (forall ((A Int) (B Int) (C Int) (P Bool)) (=> P (Proc22 C B A P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc23 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc24 C B A P D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (T Bool)
         (U Bool)
         (V Bool))
  (let ((a!1 (not (and (not (<= Q 0)) (Proc25 Q O N V M))))
        (a!2 (not (and (= E G) (= D H) (= C I) (= T U) (= B J)))))
  (let ((a!3 (or (= H 0) (not (and (= G F) (not U))) a!2))
        (a!4 (or (not (and (= H 0) (= P V))) (not (and (= G A) (= U P))) a!2)))
  (let ((a!5 (and (or (= H 1) (and a!3 a!4)) (or (not (= H 1)) (and a!3 a!4)))))
  (let ((a!6 (not (or (not V)
                      a!1
                      (not (Proc24 M O N V L))
                      (not (Proc23 M O L V K))
                      (not (Proc22 M K L V))
                      (not (Proc26 M K L V J I H))
                      a!5))))
    (=> a!6 (Proc27 Q O N V E D C T B))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc28 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc29 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc30 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc31 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc32 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc33 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc34 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc35 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc36 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc37 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc38 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (P Bool))
  (let ((a!1 (or (not P) (not (= E (- 1073741823))) (not (= D E)))))
    (=> (not a!1) (Proc39 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool)) (=> P (Proc3 D C B P A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (Proc18 G F E P D C B)) (not (= A B))))))
    (=> a!1 (Proc6 G F E P D C A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 1))))))
    (=> a!1 (Proc40 C B A P D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (P Bool))
  (let ((a!1 (and (or (not (= I H)) (not (= G I)))
                  (or (not (= I F)) (not (= G I)))
                  (or (not (= I E)) (not (= G I))))))
    (=> (not (or (not P) a!1)) (Proc41 D C B P A G)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (P Bool))
  (=> P (Proc16 F E D P C B A))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (P Bool))
  (let ((a!1 (not (or (not P) (not (Proc41 J I H P G F)) (= F 0)))))
    (=> a!1 (Proc8 J I H P G E D C B A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (P Bool))
  (let ((a!1 (and (not (<= K (+ 1 M))) (not (<= K L))))
        (a!2 (not (and (= E H) (= D F) (= C G))))
        (a!4 (not (and (not (= B 0)) (= F 2)))))
  (let ((a!3 (or (not (and (= G 1) (= F J))) a!2)))
  (let ((a!5 (or (not P)
                 (not (= M L))
                 (not a!1)
                 (not (Proc21 K J I P M H G))
                 (and a!3 (or (= G 1) a!4 a!2)))))
    (=> (not a!5) (Proc10 L J I P A B E D C)))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (P Bool))
  (let ((a!1 (not (or (not P) (= F 0) (not (= E D))))))
    (=> a!1 (Proc0 C B A P D F E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int))
  (let ((a!1 (not (and (= J1 M1) (= I1 K1) (= H1 L1) (= G1 N1))))
        (a!2 (not (and (= F1 G1) (= E1 J1) (= D1 H1) (= C1 I1))))
        (a!20 (not (and (= N1 C) (= M1 U1) (= L1 Q1) (= K1 S1)))))
  (let ((a!3 (or (= R1 0)
                 (not (Proc5 U1 Q1 S1 P P1 V1 O1))
                 (not (and (= N1 O1) (= M1 U1) (= L1 Q1) (= K1 S1)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!4 (or (= R1 0)
                 (not (Proc39 U1 Q1 S1 P B1))
                 (not (and (= N1 B1) (= M1 U1) (= L1 Q1) (= K1 S1)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!5 (or (not (= X 1))
                 (not (and (= J1 Z) (= I1 X) (= H1 Y) (= G1 W)))
                 a!2))
        (a!6 (or (= X 1)
                 (not (and (= N1 A1) (= M1 Z) (= L1 Y) (= K1 X)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!7 (or (= R1 0)
                 (not (Proc39 U1 Q1 S1 P S))
                 (not (and (= N1 S) (= M1 U1) (= L1 Q1) (= K1 S1)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!8 (or (= R1 0)
                 (not (Proc39 U1 Q1 S1 P R))
                 (not (and (= N1 R) (= M1 U1) (= L1 Q1) (= K1 S1)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!9 (or (= R1 0)
                 (not (Proc39 U1 Q1 S1 P Q))
                 (not (and (= N1 Q) (= M1 U1) (= L1 Q1) (= K1 S1)))
                 (not (Proc44 M1 L1 K1 P N1 V1))
                 (= V1 0)
                 a!1
                 a!2))
        (a!10 (or (= R1 0)
                  (not (Proc39 U1 Q1 S1 P O))
                  (not (and (= N1 O) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!11 (or (not (Proc39 U1 Q1 S1 P N))
                  (not (and (= N1 N) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!12 (or (= R1 0)
                  (not (Proc39 U1 Q1 S1 P M))
                  (not (and (= N1 M) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!13 (or (= R1 0)
                  (not (Proc39 U1 Q1 S1 P L))
                  (not (and (= N1 L) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!14 (or (= R1 0)
                  (not (Proc39 U1 Q1 S1 P K))
                  (not (and (= N1 K) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!15 (or (not (Proc39 U1 Q1 S1 P J))
                  (not (and (= N1 J) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!16 (or (= R1 0)
                  (not (Proc39 U1 Q1 S1 P I))
                  (not (and (= N1 I) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!17 (or (= R1 0)
                  (not (Proc45 U1 Q1 S1 P V1))
                  (not (Proc9 U1 Q1 S1 P P1 V1 H))
                  (not (and (= N1 H) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!18 (or (= R1 0)
                  (not (Proc13 U1 Q1 S1 P P1 V1 G F E))
                  (not (and (= N1 G) (= M1 F) (= L1 E) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!19 (or (not (Proc39 U1 Q1 S1 P D))
                  (not (and (= N1 D) (= M1 U1) (= L1 Q1) (= K1 S1)))
                  (not (Proc44 M1 L1 K1 P N1 V1))
                  (= V1 0)
                  a!1
                  a!2))
        (a!21 (and (or (= R1 0)
                       (not (Proc7 U1 Q1 S1 P P1 V1 C))
                       a!20
                       (not (Proc44 M1 L1 K1 P N1 V1))
                       (= V1 0)
                       a!1
                       a!2)
                   (or (not (= B 1))
                       (= B 0)
                       (= R1 0)
                       (not (Proc7 U1 Q1 S1 P P1 V1 C))
                       a!20
                       (not (Proc44 M1 L1 K1 P N1 V1))
                       (= V1 0)
                       a!1
                       a!2))))
  (let ((a!22 (and (or (= R1 0) a!21) (or (not (= A 1)) (= A 0) (= R1 0) a!21))))
  (let ((a!23 (and a!3
                   a!4
                   (or (= R1 0)
                       (not (Proc11 U1 Q1 S1 P P1 V1 A1 Z Y X))
                       (and a!5 a!6))
                   a!7
                   a!8
                   a!9
                   a!10
                   a!11
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   (or (= R1 0) a!22))))
  (let ((a!24 (not (or (not P)
                       (= V1 0)
                       (not (Proc42 U1 T1 S1 P V1))
                       (= R1 0)
                       (not (Proc43 U1 T1 S1 P Q1))
                       a!23))))
    (=> a!24 (Proc46 U1 T1 S1 P P1 V1 F1 E1 D1 C1)))))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (P Bool))
  (let ((a!1 (not (or (not P)
                      (not (Proc47 I H G P F))
                      (not (Proc39 I F G P E))
                      (not (Proc48 I F G P D))
                      (not (= C D))))))
    (=> a!1 (Proc49 I H G P B A C)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (P Bool))
  (=> (not (or (not P) (= E 0) (= D 0))) (Proc45 C B A P E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (=> (not (or (not P) (= D 0))) (Proc42 C B A P D))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Int))
  (let ((a!1 (not (and (= Y B1) (= X A1) (= W Z))))
        (a!3 (not (and (not (= C1 1)) (= B1 E1) (= A1 D1) (= Z C1)))))
  (let ((a!2 (or (not (and (= C1 1) (= B1 E1) (= A1 D1) (= Z C1))) a!1))
        (a!4 (or (not (and (= T1 0) (= B1 W1) (= A1 V1) (= Z U1))) a!1))
        (a!5 (or (= S1 0)
                 (not (Proc50 W1 V1 U1 P))
                 (not (and (Proc49 W1 V1 U1 P S R Q)
                           (= B1 W1)
                           (= A1 Q)
                           (= Z U1)))
                 a!1))
        (a!6 (or (not (and (= S1 0) (= B1 W1) (= A1 V1) (= Z U1))) a!1))
        (a!7 (or (not (= B1 W1)) (not (and (= A1 V1) (= Z U1))) a!1))
        (a!8 (or (not (Proc17 W1 4 U1 P O N M))
                 (not (= B1 W1))
                 (not (and (= A1 0) (= Z U1)))
                 a!1))
        (a!9 (or (not (Proc15 W1 2 U1 P L K J I H))
                 (not (= B1 H))
                 (not (and (= A1 0) (= Z U1)))
                 a!1))
        (a!10 (or (not (Proc2 W1 2 U1 P G F E D C B))
                  (not (= B1 C))
                  (not (and (= A1 A) (= Z U1)))
                  a!1)))
  (let ((a!11 (and (or (= T1 0)
                       (not (Proc50 W1 V1 U1 P))
                       (not (Proc46 W1 V1 U1 P H1 G1 F1 E1 D1 C1))
                       (and a!2 (or a!3 a!1)))
                   a!4
                   a!5
                   a!6
                   a!7
                   a!8
                   a!9
                   a!10)))
  (let ((a!12 (not (or (not P)
                       (not (Proc30 W1 V1 U1 P T1))
                       (not (Proc37 W1 V1 U1 P S1))
                       (not (Proc31 W1 V1 U1 P R1))
                       (not (Proc36 W1 V1 U1 P Q1))
                       (not (Proc29 W1 V1 U1 P P1))
                       (not (Proc33 W1 V1 U1 P O1))
                       (not (Proc40 W1 V1 U1 P N1))
                       (not (Proc38 W1 V1 U1 P M1))
                       (not (Proc28 W1 V1 U1 P L1))
                       (not (Proc34 W1 V1 U1 P K1))
                       (not (Proc35 W1 V1 U1 P J1))
                       (not (Proc32 W1 V1 U1 P I1))
                       a!11))))
    (=> a!12 (Proc26 W1 V1 U1 P Y X W))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc43 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (P Bool))
  (=> P (Proc44 E D C P B A))))
(assert (forall ((A Int) (B Int) (C Int) (P Bool)) (=> P (Proc50 C B A P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 2))))))
    (=> a!1 (Proc47 C B A P D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (P Bool))
  (let ((a!1 (not (or (not P) (not (= D 0))))))
    (=> a!1 (Proc48 C B A P D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Int)
         (D2 Int)
         (E2 Int)
         (F2 Int))
  (let ((a!1 (and (not (<= D2 (+ 4 F2))) (not (<= D2 E2))))
        (a!2 (and (= C2 D2)
                  (not (<= B2 (+ 332 C2)))
                  (not (<= B2 D2))
                  (= A2 B2)
                  (not (<= Z1 (+ 4 A2)))
                  (not (<= Z1 B2))
                  (= Y1 Z1)
                  (not (<= X1 (+ 536 Y1)))))
        (a!3 (and (not (<= X1 Z1))
                  (= W1 X1)
                  (not (<= V1 (+ 240 W1)))
                  (not (<= V1 X1))
                  (= U1 V1)
                  (not (<= T1 (+ 240 U1)))
                  (not (<= T1 V1))
                  (= S1 T1)
                  (not (<= R1 (+ 536 S1)))
                  (not (<= R1 T1))
                  (= Q1 R1)
                  (not (<= P1 (+ 240 Q1)))
                  (not (<= P1 R1))
                  (= O1 P1)
                  (not (<= N1 (+ 4 O1)))
                  (not (<= N1 P1))
                  (= M1 N1)
                  (not (<= L1 (+ 536 M1)))
                  (not (<= L1 N1))
                  (= K1 L1)
                  (not (<= J1 (+ 332 K1)))
                  (not (<= J1 L1))
                  (= I1 J1)
                  (not (<= H1 (+ 240 I1)))
                  (not (<= H1 J1))
                  (= G1 H1)
                  (not (<= F1 (+ 240 G1)))
                  (not (<= F1 H1))
                  (= E1 F1)
                  (not (<= D1 (+ 332 E1)))
                  (not (<= D1 F1))
                  (= C1 D1)
                  (not (<= B1 (+ 4 C1)))
                  (not (<= B1 D1))
                  (= A1 B1)
                  (not (<= Z (+ 536 A1)))
                  (not (<= Z B1))
                  (= Y Z)
                  (not (<= X (+ 240 Y)))
                  (not (<= X Z))
                  (= W X)
                  (not (<= S (+ 240 W)))
                  (not (<= S X))
                  (= R S)
                  (not (<= Q (+ 240 R)))
                  (not (<= Q S))
                  (= O Q)
                  (not (<= N (+ 240 O)))
                  (not (<= N Q))
                  (= M N)
                  (not (<= L (+ 240 M)))
                  (not (<= L N))
                  (= K L)
                  (not (<= J (+ 40 K)))
                  (not (<= J L))
                  (= I J)
                  (not (<= H (+ 332 I)))
                  (not (<= H J))
                  (= G H)
                  (not (<= F (+ 4 G)))
                  (not (<= F H))
                  (= E F)
                  (not (<= D (+ 40 E)))
                  (not (<= D F)))))
  (let ((a!4 (not (or (not P)
                      (not (= F2 E2))
                      (not a!1)
                      (not a!2)
                      (not a!3)
                      (not (= C D))))))
    (=> a!4 (Proc25 E2 B A P C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (P Bool)
         (T Bool)
         (U Bool))
  (let ((a!1 (or (not U) (not (and (Proc27 K J I true H G F T E) (not T))))))
    (=> (not a!1) (Proc51 K J I U D P C B A)))))
(assert (let ((a!1 (exists ((V0 Int)
                    (V1 Int)
                    (V2 Int)
                    (V3 Bool)
                    (V4 Int)
                    (V5 Bool)
                    (V6 Int)
                    (V7 Int)
                    (V8 Int))
             (not (=> (and (Proc51 V0 V1 V2 V3 V4 V5 V6 V7 V8) (not false))
                      false)))))
  (not a!1)))

(check-sat)