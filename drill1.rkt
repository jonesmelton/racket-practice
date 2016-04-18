#lang racket
; Drill: "write a function that squares a number"

; sqr : number -> number
(define (sqr x) (* x x))

; f-to-c : number -> number
(define (f-to-c f) (num-times-5-over-9
                   (f-minus-32 f)))

; f-minus-32 : number -> number
(define (f-minus-32 f) (- f 32))

; num-times-5-over-9 : number -> number
(define (num-times-5-over-9 num) (* num
                                    (/ 5 9)))

; temp-checker : number -> string

(define (temp-checker num) (if (< (f-to-c num) 0)
                               (write "brrr")
                               (write "could be worse")))

