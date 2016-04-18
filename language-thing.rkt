#lang racket

; greeter : string string -> string
(define (greeter name language) (if (string=? language "french") (string-append "bonjour " name) (string-append "que onda " name)))