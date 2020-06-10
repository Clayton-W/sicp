Exercise 1.1

q: 10

a: 10


q: (+ 5 3 4)

a: 12


q: (/ 6 2)

a: 3


q: (+ (* 2 4) (- 4 6))

a: 6


q: (define a 3)
(define b (+ a 1))
(+ a b (* a b))

a: 19

q2: (= a b)

a2: false

q3: (if (and (> b a) (< b (* a b))) b a)

a2: 4

q3: (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))

a3: 16

q4: (+ 2 (if (> b a) b a))

a4: 6

q5: (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))

a5: 16

Exercise 1.2

Translate the following expression into prefix form:

(5+4+(2-(3-(6+4/5))))/(3(6-2)(2-7))

(a)
-------
(b)
3 * (6 - 2)(2 - 7)
(* 3  (a)    (b) )
(* 3 (6 - 2) ( 2 - 7))
(* 3 (- 6 2) (- 2 7))


(+ 5 4 (- 2 (- 3 ( + 6 (/ 4 5)))))
-----------------------
(* 3 (- 6 2) (- 2 7))



(a)

5 + 4 + (2 - (3 - ( 6 + 4/5)))
5 + 4 + (2 - (3 - ( 6 + (/ 4 5))))
5 + 4 + (2 - (3 - ( + 6 (/ 4 5))))
5 + 4 + (2 - (- 3 ( + 6 (/ 4 5))))
5 + 4 + (- 2 (- 3 ( + 6 (/ 4 5))))


(/
 (+ 5 4
    (- 2
       (- 3
	  ( + 6
	      (/ 4 5)
	      )
	  )
       )
    )
 (* 3
    (- 6 2)
    (- 2 7)
    )
 )

Exercise 1.3
(define (>= x y) (or (= x y) (> x y)))
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y) ))
(define (exercise a b c)
  (cond ((and (>= a c)(>= b c) (sum-of-squares a b)))
	((and (>= b a)(>= b c) (sum-of-squares c b)))
	((and (>= a c)(>= c b) (sum-of-squares a c)))
	((and (>= c a) (>= c b)
	     (and (>= a b) (sum-of-squares a c))
	     (and (>= b a) (sum-of-squares b c))
	     )

	 )

	)
  )

(exercise 10 10 11)
(exercise -9 -9 -9)
				 
Exercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
  )

If b > 0, then add a and b. If b isn't > 0, then subract b from a. 

(a-plus-abs-b 4 5)
(a-plus-abs-b 3 2)
(a-plus-abs-b 3 -2)


Exercise 1.5

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(define a 2)

(+ a 4)

(test 0 (p))
					; The above line will kill the interpreter

(test 0 4)

What happens with applicative-order evaluation and normal-order evaluation?

Normal-order evaluation

(test 0 (p))

(if (= 0 0) 0 (p))

0

It breaks it down into its subexpressions as much as possible and plugs in the numbers and evaluates.

Applicative-order evaluation

(test 0 (p))

(test 0 (p))

(test 0 (p))

It can't get past (p) and will cause bugs



