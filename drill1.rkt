#lang racket
; Drill: "write a function that squares a number"

; sqr : number -> number
(define (sqr x) (* x x))

; f-to-c number -> number
(define (f-to-c f) (num-times-5-over-9 (f-minus-32 num)))

; f-minus-32 number -> number
(define (f-minus-32 f) (f - 32))

; num-times-5-over-9
(define (num-times-5-over-9 num) (* num (/ 5 9)))

(f-to-c 40)
