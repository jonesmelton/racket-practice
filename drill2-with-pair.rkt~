#lang racket

; surface-area : number number -> number
(define (surface-area x y) (* x y))

; circumference : number -> number
(define (circumference radius) (* radius 2 3.14))


(define (pipe-surface-area outer-radius inner-radius length) (+ (surface-area (circumference outer-radius) length) (surface-area (circumference inner-radius) length)))