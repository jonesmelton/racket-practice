#lang racket

(define (diameter radius) (* (* radius 2) 3.14))

(define (surface-area height width) (* height width))

(define (single-surface-area rad length) (surface-area length (diameter rad)))

(define (pipe-area inner-rad outer-rad length) (+ (single-surface-area inner-rad length) (single-surface-area outer-rad length)))