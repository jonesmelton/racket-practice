#lang racket

; list-length : list -> number
(define (list-length list) (length list))

; find-index : list item -> number
; (define (find-index list item) ())

(define (list-traverser list item index) (if (= (car list) item) (index) (list-traverser (cdr list) item (+ index 1))))


