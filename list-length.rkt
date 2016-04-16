#lang racket

; list-length : list -> number
(define (list-length list) (length list))

; find-index : list item -> number
; (define (find-index list item) ())

(define (index-of list item counter)
      (if (null? list)
         -1
        (if (= (car list) item)
          counter
          (index-of (cdr list) item (+ 1 counter)))))




