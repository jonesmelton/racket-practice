#lang racket

;Write a function that triples all numbers in a list, filters out the odds, and sums the remaining numbers.
; Use Racket's higher order functions for this. foldl (filter (map))  map.filter.reduce

; triple-evens list -> integer
(define (triple-evens list)
  (foldl (λ (number sum) (+ number sum)) 0
         (filter (λ (number) (even? number) )
                 (map (λ (number)(* number 3)) list))))

(triple-evens (list 1 2 3 2))