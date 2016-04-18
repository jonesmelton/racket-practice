#lang racket

;((lambda (x) x) 20)

;((lambda (x y) (list y x)) 1 2)

;(define (f (x #:arg y) (list y x))
;  (list (f 1 #:arg 2)
;        (f #:arg 2 1)))

(define (apply-fun func function-arg)
  (func function-arg))

(apply-fun (λ (number) (+ 2 number)) 5)

(define (apply-funk func function-arg)
  (func function-arg))

;(apply-funk (λ (number) (= 5 number)) 5)

; answer : function list list -> list
(define (item-finder func list accumulator)
  (if (func (car list))
      (write (item-finder func (cdr list) (cons (car list) accumulator)))
      (write false))
  (if (null? (cdr list))
       accumulator
      (item-finder func (cdr list) accumulator)))

(item-finder (λ (arg) (> 4 arg)) (list 1 5) `())