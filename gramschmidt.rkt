#lang racket
(define (gs n)
  (let* ((Q11 (/ 1.0 (* 7.0 n)))
         (Q12 0.0)
         (Q13 0.0)
         (Q21 0.0)
         (Q22 (/ 1.0 (* 25.0 n)))
         (Q23 0.0)
         (Q31 (/ 1.0 2592.0))
         (Q32 (/ 1.0 2601.0))
         (Q33 (/ 1.0 2583.0))
         (qj1 Q31)
         (qj2 Q32)
         (qj3 Q33)
         (r1 0.0)
         (r2 0.0)
         (r3 0.0)
         (r (+ (+ (* qj1 qj1) (* qj2 qj2) ) (* qj3 qj3)))
         (rold (sqrt r))
         (h1 (+ (+ (* Q11 qj1) (* Q21 qj2))  (* Q13 qj3)))
         (h2 (+ (+ (* Q12 qj1) (* Q22 qj2))  (* Q23 qj3)))
         (h3 (+ (+ (* Q13 qj1) (* Q23 qj2))  (* Q33 qj3)))
         (qj1 (- qj1 (+ (+ (* Q11 h1) (* Q12 h2)) (* Q13 h3))))
         (qj2 (- qj2 (+ (+ (* Q21 h1) (* Q22 h2)) (* Q23 h3))))
         (qj3 (- qj3 (+ (+ (* Q31 h1) (* Q32 h2)) (* Q33 h3))))
         (r1 (+ r1 h1))
         (r2 (+ r2 h2))
         (r3 (+ r3 h3))
        )
         (+ (+ (* qj1 qj1) (* qj2 qj2) ) (* qj3 qj3))
         (sqrt r)
   )
)