#lang racket
; diameter : number -> number
(define (diameter radius) (* (* radius 2) 3.14))
; surface-area : number number -> number
(define (surface-area height width) (* height width))
; single-surface-area : number number -> number
(define (single-surface-area rad length) (surface-area length (diameter rad)))
; pipe-area : number number number -> number
(define (pipe-area inner-rad outer-rad length) (+ (single-surface-area inner-rad length) (single-surface-area outer-rad length)))