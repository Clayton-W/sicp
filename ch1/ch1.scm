
					; page 7

486

					; page 8
(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 5)

(+ 2.7 10)

					;page 9
(+ 21 35 12 7)

(* 25 4 1)

(+ (* 3 5) (- 10 6))

(+ (* 3 ( + (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

					;page 10
(define size 2)

size

(* 5 size)

(define pi 3.14159)
(define radius 10)
(* pi ( * radius radius))

(define circumference (* 2 pi radius))
circumference

(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 3 4)


(define (f a) (sum-of-squares (+ a 1) (* a 2)))
(f 5)++*-

					;page 22
(define (abs x) (cond ((> x 0) x) ((= x 0) 0) ((< x 0) (- x))))
(abs -10)

(define (abs x) (if (< x 0) (- x) x))
(abs -10)

(and (> x 5) (< x 10))
(define (>= x y) (or (> x y) (= x y)))


					;page 29
					;square function
(define z 1)
(define g 1)
(define (quotient x y)
  (/ x y))
(define (average x y)
  (/ (+ x y) 2))
(define (square x)
  (* x x)
  )
(define (difference-of-squares x y)
  (- (square x) (square y)))
(define (check1 x y)
  (= z (difference-of-squares x y)))
(check1 2 4)
