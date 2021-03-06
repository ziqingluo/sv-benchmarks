(set-info :origin "benchmarks generated by liquid types http://goto.ucsd.edu/~rjhala/liquid/")
(set-logic HORN)
(declare-fun k_11
             (Int
              Int
              Int
              Int
              Int
              Int
              (Array Int Int)
              (Array Int Int)
              (Array Int Int)
              (Array Int Int))
             Bool)
(declare-fun k_9
             (Int
              Int
              Int
              (Array Int Int)
              (Array Int Int)
              (Array Int Int)
              (Array Int Int))
             Bool)
(declare-fun k_14
             (Int
              Int
              Int
              Int
              Int
              Int
              (Array Int Int)
              (Array Int Int)
              (Array Int Int)
              (Array Int Int))
             Bool)
(declare-fun k_13
             (Int
              Int
              Int
              Int
              Int
              (Array Int Int)
              (Array Int Int)
              (Array Int Int)
              (Array Int Int))
             Bool)
(declare-fun k_8
             (Int
              Int
              Int
              Int
              (Array Int Int)
              (Array Int Int)
              (Array Int Int)
              (Array Int Int))
             Bool)
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (p_main Int)
         (EREAD Int)
         (C15_Ix_0 Int)
         (lqn_0 Int)
         (p_main__SSA__blk_0_1 Int)
         (tmp_main Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= lqn_0
                (select DEREF (+ (select BLOCK_BEGIN p_main__SSA__blk_0_1) 0)))))
    (=> (and (not (= VV lqn_0))
             (k_11 lqn_0
                   EREAD
                   EWRITE
                   lqn_0
                   p_main
                   tmp_main
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             (k_13 EREAD
                   EWRITE
                   tmp_main__SSA__blk_0_1
                   p_main
                   tmp_main
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             false
             (= __cil_tmp3_main lqn_0)
             a!1
             (= p_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
             (= VV C15_Ix_0)
             true)
        false))))
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (p_main Int)
         (EREAD Int)
         (lqn_0 Int)
         (tmp_main Int)
         (p_main__SSA__blk_0_1 Int)
         (A11_Ix_0 Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= lqn_0
                (select DEREF (+ (select BLOCK_BEGIN p_main__SSA__blk_0_1) 0)))))
    (=> (and (= tmp_main tmp_main)
             (= p_main p_main)
             (= VV VV)
             (= EWRITE EWRITE)
             (= EREAD EREAD)
             (= A11_Ix_0 A11_Ix_0)
             (= VV A11_Ix_0)
             (= p_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
             a!1
             (= __cil_tmp3_main lqn_0)
             false
             (k_13 EREAD
                   EWRITE
                   tmp_main__SSA__blk_0_1
                   p_main
                   tmp_main
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             (k_11 lqn_0
                   EREAD
                   EWRITE
                   lqn_0
                   p_main
                   tmp_main
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             true)
        (k_11 A11_Ix_0
              EREAD
              EWRITE
              VV
              p_main
              tmp_main
              BLOCK_BEGIN
              DEREF
              UNCHECKED
              BLOCK_END)))))
(assert (forall ((VV Int)
         (p_main Int)
         (EREAD Int)
         (tmp_main Int)
         (A11_Ix_0 Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (=> (and (= tmp_main tmp_main)
           (= p_main p_main)
           (= VV VV)
           (= EWRITE EWRITE)
           (= EREAD EREAD)
           (= A11_Ix_0 A11_Ix_0)
           (= VV A11_Ix_0)
           (k_8 A11_Ix_0
                EREAD
                EWRITE
                A11_Ix_0
                BLOCK_BEGIN
                DEREF
                UNCHECKED
                BLOCK_END)
           true)
      (k_11 A11_Ix_0
            EREAD
            EWRITE
            VV
            p_main
            tmp_main
            BLOCK_BEGIN
            DEREF
            UNCHECKED
            BLOCK_END))))
(assert (forall ((EREAD Int)
         (VV Int)
         (tmp_main Int)
         (EWRITE Int)
         (p_main Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (=> (and (= tmp_main tmp_main)
           (= p_main p_main)
           (= VV VV)
           (= EWRITE EWRITE)
           (= EREAD EREAD)
           (k_9 EREAD EWRITE VV BLOCK_BEGIN DEREF UNCHECKED BLOCK_END)
           true)
      (k_13 EREAD
            EWRITE
            VV
            p_main
            tmp_main
            BLOCK_BEGIN
            DEREF
            UNCHECKED
            BLOCK_END))))
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (VV Int)
         (p_main Int)
         (EREAD Int)
         (p_main__SSA__blk_0_1 Int)
         (tmp_main Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (or (= (select UNCHECKED VV) 1)
                 (and (<= (select BLOCK_BEGIN VV) VV)
                      (< VV (select BLOCK_END VV))
                      true)
                 false)))
    (=> (and (not a!1)
             (k_13 EREAD
                   EWRITE
                   tmp_main__SSA__blk_0_1
                   p_main
                   tmp_main
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             (= p_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
             (< VV (+ p_main__SSA__blk_0_1 4))
             (<= p_main__SSA__blk_0_1 VV)
             (= (select UNCHECKED VV) (select UNCHECKED p_main__SSA__blk_0_1))
             (= (select BLOCK_END VV) (select BLOCK_END p_main__SSA__blk_0_1))
             (= (select BLOCK_BEGIN VV)
                (select BLOCK_BEGIN p_main__SSA__blk_0_1))
             true)
        false))))
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (p_main Int)
         (EREAD Int)
         (lqn_0 Int)
         (p_main__SSA__blk_0_1 Int)
         (tmp_main Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= lqn_0
                (select DEREF (+ (select BLOCK_BEGIN p_main__SSA__blk_0_1) 0)))))
  (let ((a!2 (and (not (not (= VV 0)))
                  (k_11 lqn_0
                        EREAD
                        EWRITE
                        lqn_0
                        p_main
                        tmp_main
                        BLOCK_BEGIN
                        DEREF
                        UNCHECKED
                        BLOCK_END)
                  (k_13 EREAD
                        EWRITE
                        tmp_main__SSA__blk_0_1
                        p_main
                        tmp_main
                        BLOCK_BEGIN
                        DEREF
                        UNCHECKED
                        BLOCK_END)
                  (= __cil_tmp3_main lqn_0)
                  a!1
                  (= p_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (= VV __cil_tmp3_main)
                  true)))
    (=> a!2 false)))))
(assert (forall ((VV Int)
         (EREAD Int)
         (tmp_make Int)
         (p_make Int)
         (p_make__SSA__blk_0_1 Int)
         (__cil_tmp3_make Int)
         (tmp_make__SSA__blk_0_1 Int)
         (C9_Ix_0 Int)
         (FINAL0 Int)
         (EWRITE Int)
         (lqn_1 Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= FINAL0
                (select DEREF (+ (select BLOCK_BEGIN p_make__SSA__blk_0_1) 0)))))
    (=> (and (= tmp_make tmp_make)
             (= p_make p_make)
             (= VV VV)
             (= EWRITE EWRITE)
             (= EREAD EREAD)
             (= C9_Ix_0 C9_Ix_0)
             (= VV C9_Ix_0)
             (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
                (select BLOCK_END tmp_make__SSA__blk_0_1))
             (> tmp_make__SSA__blk_0_1 0)
             (= tmp_make__SSA__blk_0_1
                (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
             (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
             (= lqn_1 0)
             (= __cil_tmp3_make 4)
             a!1
             (= FINAL0 1)
             (= C9_Ix_0 FINAL0)
             true)
        (k_14 C9_Ix_0
              EREAD
              EWRITE
              VV
              p_make
              tmp_make
              BLOCK_BEGIN
              DEREF
              UNCHECKED
              BLOCK_END)))))
(assert (forall ((tmp_make__SSA__blk_0_1 Int)
         (EREAD Int)
         (tmp_make Int)
         (p_make Int)
         (p_make__SSA__blk_0_1 Int)
         (__cil_tmp3_make Int)
         (VV Int)
         (A3_Ix_0 Int)
         (FINAL0 Int)
         (EWRITE Int)
         (lqn_1 Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= FINAL0
                (select DEREF (+ (select BLOCK_BEGIN p_make__SSA__blk_0_1) 0)))))
    (=> (and (= VV VV)
             (= EWRITE EWRITE)
             (= EREAD EREAD)
             (= A3_Ix_0 A3_Ix_0)
             (= VV A3_Ix_0)
             (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
                (select BLOCK_END tmp_make__SSA__blk_0_1))
             (> tmp_make__SSA__blk_0_1 0)
             (= tmp_make__SSA__blk_0_1
                (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
             (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
             (= lqn_1 0)
             (= __cil_tmp3_make 4)
             a!1
             (= FINAL0 1)
             (k_14 A3_Ix_0
                   EREAD
                   EWRITE
                   A3_Ix_0
                   p_make
                   tmp_make
                   BLOCK_BEGIN
                   DEREF
                   UNCHECKED
                   BLOCK_END)
             true)
        (k_8 A3_Ix_0 EREAD EWRITE VV BLOCK_BEGIN DEREF UNCHECKED BLOCK_END)))))
(assert (forall ((tmp_make__SSA__blk_0_1 Int)
         (EREAD Int)
         (p_make__SSA__blk_0_1 Int)
         (__cil_tmp3_make Int)
         (VV Int)
         (lqn_1 Int)
         (FINAL0 Int)
         (EWRITE Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (= FINAL0
                (select DEREF (+ (select BLOCK_BEGIN p_make__SSA__blk_0_1) 0)))))
    (=> (and (= VV VV)
             (= EWRITE EWRITE)
             (= EREAD EREAD)
             (= VV p_make__SSA__blk_0_1)
             (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
                (select BLOCK_END tmp_make__SSA__blk_0_1))
             (> tmp_make__SSA__blk_0_1 0)
             (= tmp_make__SSA__blk_0_1
                (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
             (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
             (= lqn_1 0)
             (= __cil_tmp3_make 4)
             a!1
             (= FINAL0 1)
             true)
        (k_9 EREAD EWRITE VV BLOCK_BEGIN DEREF UNCHECKED BLOCK_END)))))
(assert (forall ((__cil_tmp3_make Int)
         (tmp_make__SSA__blk_0_1 Int)
         (VV Int)
         (lqn_1 Int)
         (p_make__SSA__blk_0_1 Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (let ((a!1 (or (= (select UNCHECKED VV) 1)
                 (and (<= (select BLOCK_BEGIN VV) VV)
                      (< VV (select BLOCK_END VV))
                      true)
                 false)))
    (=> (and (not a!1)
             (= __cil_tmp3_make 4)
             (= lqn_1 0)
             (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
             (= tmp_make__SSA__blk_0_1
                (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
             (> tmp_make__SSA__blk_0_1 0)
             (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
                (select BLOCK_END tmp_make__SSA__blk_0_1))
             (< VV (+ p_make__SSA__blk_0_1 4))
             (<= p_make__SSA__blk_0_1 VV)
             (= (select UNCHECKED VV) (select UNCHECKED p_make__SSA__blk_0_1))
             (= (select BLOCK_END VV) (select BLOCK_END p_make__SSA__blk_0_1))
             (= (select BLOCK_BEGIN VV)
                (select BLOCK_BEGIN p_make__SSA__blk_0_1))
             true)
        false))))
(assert (forall ((tmp_make__SSA__blk_0_1 Int)
         (p_make__SSA__blk_0_1 Int)
         (__cil_tmp3_make Int)
         (VV Int)
         (C9_Ix_0 Int)
         (lqn_1 Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (=> (and (not (= VV lqn_1))
           false
           (= __cil_tmp3_make 4)
           (= lqn_1 0)
           (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
           (= tmp_make__SSA__blk_0_1
              (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
           (> tmp_make__SSA__blk_0_1 0)
           (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
              (select BLOCK_END tmp_make__SSA__blk_0_1))
           (= VV C9_Ix_0)
           true)
      false)))
(assert (forall ((VV Int)
         (EREAD Int)
         (tmp_make Int)
         (p_make Int)
         (p_make__SSA__blk_0_1 Int)
         (__cil_tmp3_make Int)
         (tmp_make__SSA__blk_0_1 Int)
         (A3_Ix_0 Int)
         (EWRITE Int)
         (lqn_1 Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (=> (and (= tmp_make tmp_make)
           (= p_make p_make)
           (= VV VV)
           (= EWRITE EWRITE)
           (= EREAD EREAD)
           (= A3_Ix_0 A3_Ix_0)
           (= VV A3_Ix_0)
           (= (+ tmp_make__SSA__blk_0_1 __cil_tmp3_make)
              (select BLOCK_END tmp_make__SSA__blk_0_1))
           (> tmp_make__SSA__blk_0_1 0)
           (= tmp_make__SSA__blk_0_1
              (select BLOCK_BEGIN tmp_make__SSA__blk_0_1))
           (= p_make__SSA__blk_0_1 tmp_make__SSA__blk_0_1)
           (= lqn_1 0)
           (= __cil_tmp3_make 4)
           false
           true)
      (k_14 A3_Ix_0
            EREAD
            EWRITE
            VV
            p_make
            tmp_make
            BLOCK_BEGIN
            DEREF
            UNCHECKED
            BLOCK_END))))
(assert (forall ((__cil_tmp3_make Int)
         (VV Int)
         (BLOCK_BEGIN (Array Int Int))
         (DEREF (Array Int Int))
         (UNCHECKED (Array Int Int))
         (BLOCK_END (Array Int Int)))
  (=> (and (not (>= VV 0)) (= __cil_tmp3_make 4) (= VV __cil_tmp3_make) true)
      false)))

(check-sat)
