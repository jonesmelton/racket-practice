#lang racket

; list-length : list -> number
(define (list-length list) (length list))

; find-index : list item -> number
; (define (find-index list item) ())

;index-of : list number number -> number
(define (index-of list item counter)
  (if (null? list)
      -1
      (if (= (car list) item)
          counter
          (index-of (cdr list) item (+ 1 counter)))))

;at-index : list number number -> string
(define (at-index list index counter)
  (if (= counter index)
      (car list)
      (at-index (cdr list) index (+ 1 counter))))


; last-item : list -> thing
(define (last-item list)
       (if (null? (cdr list))
       (car list)
       (last-item (cdr list))))

; first-last : list -> list
(define (first-last list)
  (cons (car list) (last-item list)))

; evens : list -> list
(define (even-finder list)
  (filter even? list))