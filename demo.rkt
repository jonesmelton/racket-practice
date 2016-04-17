; triple-evens list -> integer
(define (triple-evens list)
  (foldl (λ (number sum) (+ number sum)) 0
         (filter (λ (number) (even? number) )
                 (map (λ (number)(* number 3)) list))))


; lowercase-validator list -> boolean
(define (lowercase-validator list)
  (equal? (list->set list) (list->set (map
          (λ (word) (map (λ (letter) (char-downcase letter))
            (string->list word)))list))))

(triple-evens `(1 2 3 2))
