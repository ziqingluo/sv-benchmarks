(set-info :origin "driver benchmark extracted from Microsoft SDV")
(set-logic HORN)
(declare-fun Proc8 (Int Int Bool Int Int Int) Bool)
(declare-fun Proc43 (Int Int Bool Int) Bool)
(declare-fun Proc18 (Int Int Bool Int Int Int) Bool)
(declare-fun Proc21 (Int Int Bool Int) Bool)
(declare-fun Proc29 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc23 (Int Int Bool Int Int Int) Bool)
(declare-fun Proc1 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc12 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc34 (Int Int Bool Int) Bool)
(declare-fun Proc36 (Int Int Bool Int Int Bool Int) Bool)
(declare-fun Proc46 (Int Int Bool Int) Bool)
(declare-fun Proc52 (Int Int Bool Int Int) Bool)
(declare-fun Proc2 (Int Int Bool Int Int) Bool)
(declare-fun Proc5 (Int Int Bool Int Int) Bool)
(declare-fun Proc48 (Int Int Bool Int) Bool)
(declare-fun Proc40 (Int Int Bool Int) Bool)
(declare-fun Proc17 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc28 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc57 (Int Int Bool Int Int) Bool)
(declare-fun Proc4 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc19 (Int Int Bool Int) Bool)
(declare-fun Proc31 (Int Int Bool) Bool)
(declare-fun Proc53 (Int Int Bool Int) Bool)
(declare-fun Proc7 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc30 (Int Int Bool) Bool)
(declare-fun Proc54 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc15 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc38 (Int Int Bool Int) Bool)
(declare-fun Proc42 (Int Int Bool Int) Bool)
(declare-fun Proc13 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc24 (Int Int Bool Int Int) Bool)
(declare-fun Proc6 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc33 (Int Int Bool Int) Bool)
(declare-fun Proc39 (Int Int Bool Int) Bool)
(declare-fun Proc27 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc26 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc0 (Int Int Bool) Bool)
(declare-fun Proc3 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc58 (Int Int Bool) Bool)
(declare-fun Proc32 (Int Int Bool) Bool)
(declare-fun Proc47 (Int Int Bool Int) Bool)
(declare-fun Proc10 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc20 (Int Int Bool Int Int Int) Bool)
(declare-fun Proc9 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc44 (Int Int Bool Int) Bool)
(declare-fun Proc45 (Int Int Bool Int) Bool)
(declare-fun Proc51 (Int Int Bool) Bool)
(declare-fun Proc55 (Int Int Bool) Bool)
(declare-fun Proc37 (Int Int Bool Int) Bool)
(declare-fun Proc22 (Int Int Bool Int Int) Bool)
(declare-fun Proc11 (Int Int Bool Int Int Int) Bool)
(declare-fun Proc50 (Int Int Bool Int) Bool)
(declare-fun Proc25 (Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc49 (Int Int Bool Int) Bool)
(declare-fun Proc16 (Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc41 (Int Int Bool Int) Bool)
(declare-fun Proc35 (Int Int Bool Int Int) Bool)
(declare-fun Proc56 (Int Int Bool) Bool)
(declare-fun Proc14
             (Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun Proc59 (Int Int Bool Int Bool Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (Proc0 F E G))))))
    (=> a!1 (Proc1 F E G D C B A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int))
  (let ((a!1 (and (not (<= I (+ 1 J))) (not (<= I M))))
        (a!2 (not (and (= E 0) (= D H) (= C F)))))
  (let ((a!3 (and (or (not (= F 1)) a!2) (or (= F 1) a!2))))
  (let ((a!4 (not (or (not G)
                      (not (Proc2 M L G 0 K))
                      (not (= J M))
                      (not a!1)
                      (not (Proc3 I L G J 0 H F))
                      a!3))))
    (=> a!4 (Proc4 M L G B A E D C)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int))
  (let ((a!1 (and (not (<= I (+ 1 J))) (not (<= I K))))
        (a!2 (not (and (= E 0) (= D H) (= C F)))))
  (let ((a!3 (and (or (not (= F 1)) a!2) (or (= F 1) a!2))))
  (let ((a!4 (not (or (not G)
                      (not (Proc5 N M G L K))
                      (not (= J K))
                      (not a!1)
                      (not (Proc6 I M G J 0 H F))
                      a!3))))
    (=> a!4 (Proc7 N M G B A E D C)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int))
  (let ((a!1 (and (not (<= N (+ 4 P))) (not (<= N O))))
        (a!2 (and (not (<= I (+ 1 J))) (not (<= I K))))
        (a!3 (not (and (= E 0) (= D H) (= C F)))))
  (let ((a!4 (and (or (not (= F 1)) a!3) (or (= F 1) a!3))))
  (let ((a!5 (not (or (not G)
                      (not (= P O))
                      (not a!1)
                      (not (Proc8 N M G P L K))
                      (not (= J K))
                      (not a!2)
                      (not (Proc9 I M G J 0 H F))
                      a!4))))
    (=> a!5 (Proc10 O M G B A E D C)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int))
  (let ((a!1 (and (not (<= F (+ 1 H))) (not (<= F M))))
        (a!2 (not (and (= C 0) (= B E) (= A D)))))
  (let ((a!3 (and (or (not (= D 1)) a!2) (or (= D 1) a!2))))
  (let ((a!4 (not (or (not G)
                      (not (Proc11 M L G K J I))
                      (not (= H M))
                      (not a!1)
                      (not (Proc12 F L G H 0 E D))
                      a!3))))
    (=> a!4 (Proc13 M L G K J C B A)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int))
  (let ((a!1 (not (and (not (= O 0))
                       (= N (+ 52 O))
                       (Proc14 M L G N 99 O 0 K 0 0 0 1 1 1 J))))
        (a!2 (and (not (<= H (+ 1 I))) (not (<= H M))))
        (a!3 (not (and (= D 0) (= C F) (= B E)))))
  (let ((a!4 (and (or (not (= E 1)) a!3) (or (= E 1) a!3))))
  (let ((a!5 (not (or (not G)
                      (= P 0)
                      (= O 0)
                      a!1
                      (not (= I M))
                      (not a!2)
                      (not (Proc15 H L G I 0 F E))
                      a!4))))
    (=> a!5 (Proc16 M L G P A D C B)))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int))
  (let ((a!1 (not (and (not (= H 0)) (= F (+ 8 H)) (Proc17 E D G F H 0 C)))))
  (let ((a!2 (not (or (not G) a!1 (not (= B 1))))))
    (=> a!2 (Proc18 E D G A H B))))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (=> (not (or (not G) (= C 0))) (Proc19 B A G C))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int))
  (let ((a!1 (not (and (= P (- 1073741670)) (= R P))))
        (a!2 (not (and (= O (- 1073741811)) (= R O)))))
  (let ((a!3 (and (or (not (= R 0)) (not (= Q R)))
                  (or a!1 (not (= Q R)))
                  (or a!2 (not (= Q R))))))
    (=> (not (or (not G) a!3)) (Proc14 N M G L K J I H F E D C B A Q))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (G Bool))
  (let ((a!1 (not (or (not G) (= E 0) (not (= D 259))))))
    (=> a!1 (Proc20 C B G A E D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int))
  (let ((a!1 (and (or (not (= H 1)) (not (= F H)))
                  (or (not (= H 0)) (not (= F H))))))
    (=> (not (or (not G) a!1)) (Proc17 E D G C B A F)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (Proc21 D C G B)) (not (= A 0))))))
    (=> a!1 (Proc2 D C G B A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int))
  (let ((a!1 (and (not (<= E (+ 4 H))) (not (<= E F)))))
  (let ((a!2 (or (not G)
                 (not (= H F))
                 (not a!1)
                 (not (Proc22 E D G C H))
                 (not (and (= B 0) (= A E))))))
    (=> (not a!2) (Proc8 F D G C B A))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool))
  (let ((a!1 (and (not (<= D (+ 4 F))) (not (<= D E)))))
  (let ((a!2 (or (not G)
                 (not (= F E))
                 (not a!1)
                 (not (Proc19 D C G F))
                 (not (and (= B 0) (= A D))))))
    (=> (not a!2) (Proc5 E C G B A))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (Proc23 F E G D C B)) (not (= A B))))))
    (=> a!1 (Proc11 F E G D C A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= H (+ 1 J))) (not (<= H I)))))
  (let ((a!2 (or (not G)
                 (not (= J I))
                 (not a!1)
                 (not (Proc24 H F G J E))
                 (not (and (= D H) (= C E))))))
    (=> (not a!2) (Proc25 I F G B A D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= H (+ 1 J))) (not (<= H I)))))
  (let ((a!2 (or (not G)
                 (not (= J I))
                 (not a!1)
                 (not (Proc24 H F G J E))
                 (not (and (= D H) (= C E))))))
    (=> (not a!2) (Proc26 I F G B A D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= H (+ 1 J))) (not (<= H I)))))
  (let ((a!2 (or (not G)
                 (not (= J I))
                 (not a!1)
                 (not (Proc24 H F G J E))
                 (not (and (= D H) (= C E))))))
    (=> (not a!2) (Proc27 I F G B A D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= H (+ 1 J))) (not (<= H I)))))
  (let ((a!2 (or (not G)
                 (not (= J I))
                 (not a!1)
                 (not (Proc24 H F G J E))
                 (not (and (= D H) (= C E))))))
    (=> (not a!2) (Proc28 I F G B A D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= H (+ 1 J))) (not (<= H I)))))
  (let ((a!2 (or (not G)
                 (not (= J I))
                 (not a!1)
                 (not (Proc24 H F G J E))
                 (not (and (= D H) (= C E))))))
    (=> (not a!2) (Proc29 I F G B A D C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (= K 259)
                 (not (and (= J I) (= H F)))
                 (not (and (= E J) (= D H)))))
        (a!2 (or (not (= A 1))
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!3 (or (= A 1)
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!4 (or (not (and (= J I) (= H F))) (not (and (= E J) (= D H))))))
  (let ((a!5 (and (or (not (Proc29 I F G C K B A)) (and a!2 a!3)) a!4)))
  (let ((a!6 (and a!1 (or (not (= K 259)) a!5))))
    (=> (not (or (not G) a!6)) (Proc3 I F G C K E D)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (= K 259)
                 (not (and (= J I) (= H F)))
                 (not (and (= E J) (= D H)))))
        (a!2 (or (not (= A 1))
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!3 (or (= A 1)
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!4 (or (not (and (= J I) (= H F))) (not (and (= E J) (= D H))))))
  (let ((a!5 (and (or (not (Proc26 I F G C K B A)) (and a!2 a!3)) a!4)))
  (let ((a!6 (and a!1 (or (not (= K 259)) a!5))))
    (=> (not (or (not G) a!6)) (Proc6 I F G C K E D)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (= K 259)
                 (not (and (= J I) (= H F)))
                 (not (and (= E J) (= D H)))))
        (a!2 (or (not (= A 1))
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!3 (or (= A 1)
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!4 (or (not (and (= J I) (= H F))) (not (and (= E J) (= D H))))))
  (let ((a!5 (and (or (not (Proc28 I F G C K B A)) (and a!2 a!3)) a!4)))
  (let ((a!6 (and a!1 (or (not (= K 259)) a!5))))
    (=> (not (or (not G) a!6)) (Proc9 I F G C K E D)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (= K 259)
                 (not (and (= J I) (= H F)))
                 (not (and (= E J) (= D H)))))
        (a!2 (or (not (= A 1))
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!3 (or (= A 1)
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!4 (or (not (and (= J I) (= H F))) (not (and (= E J) (= D H))))))
  (let ((a!5 (and (or (not (Proc25 I F G C K B A)) (and a!2 a!3)) a!4)))
  (let ((a!6 (and a!1 (or (not (= K 259)) a!5))))
    (=> (not (or (not G) a!6)) (Proc12 I F G C K E D)))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (= K 259)
                 (not (and (= J I) (= H F)))
                 (not (and (= E J) (= D H)))))
        (a!2 (or (not (= A 1))
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!3 (or (= A 1)
                 (not (and (= J B) (= H A)))
                 (not (and (= E J) (= D H)))))
        (a!4 (or (not (and (= J I) (= H F))) (not (and (= E J) (= D H))))))
  (let ((a!5 (and (or (not (Proc27 I F G C K B A)) (and a!2 a!3)) a!4)))
  (let ((a!6 (and a!1 (or (not (= K 259)) a!5))))
    (=> (not (or (not G) a!6)) (Proc15 I F G C K E D)))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= D 1))))))
    (=> a!1 (Proc24 C B G A D)))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc30 B A G))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc31 B A G))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc32 B A G))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc33 B A G C)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (S Bool)
         (T Bool)
         (U Bool))
  (let ((a!1 (not (and (not (<= M 0)) (Proc34 M L U K))))
        (a!2 (not (and (= D F) (= C H) (= S T) (= B I)))))
  (let ((a!3 (or (= H 0) (not (and (= F E) (not T))) a!2))
        (a!4 (or (not (and (= H 0) (= G U))) (not (and (= F A) (= T G))) a!2)))
  (let ((a!5 (and (or (= H 1) (and a!3 a!4)) (or (not (= H 1)) (and a!3 a!4)))))
  (let ((a!6 (not (or (not U)
                      a!1
                      (not (Proc33 K L U J))
                      (not (Proc32 K J U))
                      (not (Proc31 K J U))
                      (not (Proc30 K J U))
                      (not (Proc35 K J U I H))
                      a!5))))
    (=> a!6 (Proc36 M L U D C S B))))))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc37 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc38 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc39 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc40 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc41 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc42 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc43 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc44 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 1))))))
    (=> a!1 (Proc45 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc46 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc47 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool))
  (let ((a!1 (or (not G) (not (= D (- 1073741823))) (not (= C D)))))
    (=> (not a!1) (Proc48 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool)) (=> G (Proc21 C B G A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (Proc20 F E G D C B)) (not (= A B))))))
    (=> a!1 (Proc23 F E G D C A)))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (let ((a!1 (not (or (not G) (not (= C 0))))))
    (=> a!1 (Proc49 B A G C)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool))
  (=> (not (or (not G) (= D 0))) (Proc22 C B G A D))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (V Int)
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
  (let ((a!1 (not (and (= J1 N1) (= I1 L1) (= H1 K1))))
        (a!3 (not (and (not (= O1 1)) (= G1 Q1) (= F1 P1) (= E1 O1))))
        (a!7 (not (and (not (= A1 1)) (= G1 C1) (= F1 B1) (= E1 A1))))
        (a!10 (not (and (not (= X 1)) (= G1 Z) (= F1 Y) (= E1 X))))
        (a!22 (not (and (not (= I 1)) (= G1 K) (= F1 J) (= E1 I))))
        (a!25 (not (and (not (= E 1)) (= G1 H) (= F1 F) (= E1 E)))))
  (let ((a!2 (or (not (and (= O1 1) (= N1 M1) (= L1 P1) (= K1 O1))) a!1))
        (a!4 (or a!3
                 (not (Proc52 F1 E1 G G1 V1))
                 (= V1 0)
                 (not (= N1 G1))
                 (not (and (= L1 F1) (= K1 E1)))
                 a!1))
        (a!5 (or (= S1 0)
                 (not (Proc48 U1 T1 G D1))
                 (not (= G1 D1))
                 (not (and (= F1 U1) (= E1 T1)))
                 (not (Proc52 F1 E1 G G1 V1))
                 (= V1 0)
                 (not (= N1 G1))
                 (not (and (= L1 F1) (= K1 E1)))
                 a!1))
        (a!6 (or (not (and (= A1 1) (= N1 M1) (= L1 B1) (= K1 A1))) a!1))
        (a!8 (or a!7
                 (not (Proc52 F1 E1 G G1 V1))
                 (= V1 0)
                 (not (= N1 G1))
                 (not (and (= L1 F1) (= K1 E1)))
                 a!1))
        (a!9 (or (not (and (= X 1) (= N1 M1) (= L1 Y) (= K1 X))) a!1))
        (a!11 (or a!10
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!12 (or (= S1 0)
                  (not (Proc48 U1 T1 G W))
                  (not (= G1 W))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!13 (or (= S1 0)
                  (not (Proc48 U1 T1 G V))
                  (not (= G1 V))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!14 (or (= S1 0)
                  (not (Proc48 U1 T1 G R))
                  (not (= G1 R))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!15 (or (not (Proc48 U1 T1 G Q))
                  (not (= G1 Q))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!16 (or (= S1 0)
                  (not (Proc48 U1 T1 G P))
                  (not (= G1 P))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!17 (or (= S1 0)
                  (not (Proc48 U1 T1 G O))
                  (not (= G1 O))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!18 (or (= S1 0)
                  (not (Proc48 U1 T1 G N))
                  (not (= G1 N))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!19 (or (not (Proc48 U1 T1 G M))
                  (not (= G1 M))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!20 (or (= S1 0)
                  (not (Proc48 U1 T1 G L))
                  (not (= G1 L))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!21 (or (not (and (= I 1) (= N1 M1) (= L1 J) (= K1 I))) a!1))
        (a!23 (or a!22
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!24 (or (not (and (= E 1) (= N1 M1) (= L1 F) (= K1 E))) a!1))
        (a!26 (or a!25
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!27 (or (not (Proc48 U1 T1 G D))
                  (not (= G1 D))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!28 (or (= S1 0)
                  (not (Proc48 U1 T1 G C))
                  (not (= G1 C))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1))
        (a!29 (or (not (= B 1))
                  (= B 0)
                  (= S1 0)
                  (not (Proc48 U1 T1 G C))
                  (not (= G1 C))
                  (not (and (= F1 U1) (= E1 T1)))
                  (not (Proc52 F1 E1 G G1 V1))
                  (= V1 0)
                  (not (= N1 G1))
                  (not (and (= L1 F1) (= K1 E1)))
                  a!1)))
  (let ((a!30 (and (or (= S1 0) (and a!28 a!29))
                   (or (not (= A 1)) (= A 0) (= S1 0) (and a!28 a!29)))))
  (let ((a!31 (and (or (= S1 0)
                       (not (Proc4 U1 T1 G R1 V1 Q1 P1 O1))
                       (and a!2 a!4))
                   a!5
                   (or (= S1 0)
                       (not (Proc10 U1 T1 G R1 V1 C1 B1 A1))
                       (and a!6 a!8))
                   (or (= S1 0)
                       (not (Proc16 U1 T1 G R1 V1 Z Y X))
                       (and a!9 a!11))
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   a!20
                   (or (= S1 0)
                       (not (Proc53 U1 T1 G V1))
                       (not (Proc7 U1 T1 G R1 V1 K J I))
                       (and a!21 a!23))
                   (or (= S1 0)
                       (not (Proc13 U1 T1 G R1 V1 H F E))
                       (and a!24 a!26))
                   a!27
                   (or (= S1 0) a!30))))
  (let ((a!32 (not (or (not G)
                       (= V1 0)
                       (not (Proc50 U1 T1 G V1))
                       (= S1 0)
                       (not (Proc51 U1 T1 G))
                       a!31))))
    (=> a!32 (Proc54 U1 T1 G R1 V1 J1 I1 H1)))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (G Bool))
  (let ((a!1 (not (or (not G)
                      (not (Proc55 E D G))
                      (not (Proc48 E D G C))
                      (not (Proc56 E D G))))))
    (=> a!1 (Proc57 E D G B A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool))
  (=> (not (or (not G) (= D 0) (= C 0))) (Proc53 B A G D))))
(assert (forall ((A Int) (B Int) (C Int) (G Bool))
  (=> (not (or (not G) (= C 0))) (Proc50 B A G C))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc0 B A G))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (V Int)
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
         (J1 Int))
  (let ((a!1 (or (not (= O 1))
                 (not (and (= N P) (= M O)))
                 (not (and (= L N) (= K M)))))
        (a!2 (or (= O 1)
                 (not (and (= N P) (= M O)))
                 (not (and (= L N) (= K M)))))
        (a!3 (or (not (= H1 0))
                 (not (and (= N J1) (= M I1)))
                 (not (and (= L N) (= K M)))))
        (a!4 (or (= G1 0)
                 (not (Proc58 J1 I1 G))
                 (not (Proc57 J1 I1 G J I))
                 (not (and (= N J1) (= M I1)))
                 (not (and (= L N) (= K M)))))
        (a!5 (or (not (= G1 0))
                 (not (and (= N J1) (= M I1)))
                 (not (and (= L N) (= K M)))))
        (a!6 (or (not (Proc1 J1 I1 G H F E D))
                 (not (and (= N J1) (= M I1)))
                 (not (and (= L N) (= K M)))))
        (a!7 (or (not (and (= N J1) (= M I1))) (not (and (= L N) (= K M)))))
        (a!8 (or (not (Proc18 J1 I1 G C B A))
                 (not (and (= N J1) (= M I1)))
                 (not (and (= L N) (= K M))))))
  (let ((a!9 (and (or (= H1 0)
                      (not (Proc58 J1 I1 G))
                      (not (Proc54 J1 I1 G V R Q P O))
                      (and a!1 a!2))
                  a!3
                  a!4
                  a!5
                  a!6
                  a!7
                  a!8)))
  (let ((a!10 (not (or (not G)
                       (not (Proc39 J1 I1 G H1))
                       (not (Proc46 J1 I1 G G1))
                       (not (Proc40 J1 I1 G F1))
                       (not (Proc45 J1 I1 G E1))
                       (not (Proc38 J1 I1 G D1))
                       (not (Proc42 J1 I1 G C1))
                       (not (Proc49 J1 I1 G B1))
                       (not (Proc47 J1 I1 G A1))
                       (not (Proc37 J1 I1 G Z))
                       (not (Proc43 J1 I1 G Y))
                       (not (Proc44 J1 I1 G X))
                       (not (Proc41 J1 I1 G W))
                       a!9))))
    (=> a!10 (Proc35 J1 I1 G L K)))))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc51 B A G))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (G Bool)) (=> G (Proc52 D C G B A))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc58 B A G))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc55 B A G))))
(assert (forall ((A Int) (B Int) (G Bool)) (=> G (Proc56 B A G))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (V Int)
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
         (C2 Int))
  (let ((a!1 (and (= C2 B2)
                  (not (<= A2 (+ 240 C2)))
                  (not (<= A2 B2))
                  (= Z1 A2)
                  (not (<= Y1 (+ 4 Z1)))
                  (not (<= Y1 A2))
                  (= X1 Y1)
                  (not (<= W1 (+ 332 X1)))))
        (a!2 (and (not (<= W1 Y1))
                  (= V1 W1)
                  (not (<= U1 (+ 4 V1)))
                  (not (<= U1 W1))
                  (= T1 U1)
                  (not (<= S1 (+ 536 T1)))
                  (not (<= S1 U1))
                  (= R1 S1)
                  (not (<= Q1 (+ 240 R1)))
                  (not (<= Q1 S1))
                  (= P1 Q1)
                  (not (<= O1 (+ 240 P1)))
                  (not (<= O1 Q1))
                  (= N1 O1)
                  (not (<= M1 (+ 240 N1)))
                  (not (<= M1 O1))
                  (= L1 M1)
                  (not (<= K1 (+ 4 L1)))
                  (not (<= K1 M1))
                  (= J1 K1)
                  (not (<= I1 (+ 536 J1)))
                  (not (<= I1 K1))
                  (= H1 I1)
                  (not (<= G1 (+ 332 H1)))
                  (not (<= G1 I1))
                  (= F1 G1)
                  (not (<= E1 (+ 240 F1)))
                  (not (<= E1 G1))
                  (= D1 E1)
                  (not (<= C1 (+ 240 D1)))
                  (not (<= C1 E1))
                  (= B1 C1)
                  (not (<= A1 (+ 332 B1)))
                  (not (<= A1 C1))
                  (= Z A1)
                  (not (<= Y (+ 4 Z)))
                  (not (<= Y A1))
                  (= X Y)
                  (not (<= W (+ 240 X)))
                  (not (<= W Y))
                  (= V W)
                  (not (<= R (+ 240 V)))
                  (not (<= R W))
                  (= Q R)
                  (not (<= P (+ 240 Q)))
                  (not (<= P R))
                  (= O P)
                  (not (<= N (+ 240 O)))
                  (not (<= N P))
                  (= M N)
                  (not (<= L (+ 240 M)))
                  (not (<= L N))
                  (= K L)
                  (not (<= J (+ 40 K)))
                  (not (<= J L))
                  (= I J)
                  (not (<= H (+ 332 I)))
                  (not (<= H J))
                  (= F H)
                  (not (<= E (+ 4 F)))
                  (not (<= E H))
                  (= D E)
                  (not (<= C (+ 40 D)))
                  (not (<= C E)))))
  (let ((a!3 (not (or (not G) (not a!1) (not a!2) (not (= B C))))))
    (=> a!3 (Proc34 B2 A G B))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Int)
         (I Int)
         (S Bool)
         (T Bool))
  (let ((a!1 (or (not T) (not (and (Proc36 I H true F E S D) (not S))))))
    (=> (not a!1) (Proc59 I H T C G B A)))))
(assert (let ((a!1 (exists ((V0 Int)
                    (V1 Int)
                    (V2 Bool)
                    (V3 Int)
                    (V4 Bool)
                    (V5 Int)
                    (V6 Int))
             (not (=> (and (Proc59 V0 V1 V2 V3 V4 V5 V6) (not false)) false)))))
  (not a!1)))

(check-sat)