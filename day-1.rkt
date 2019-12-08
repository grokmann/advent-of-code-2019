#lang racket
(define data (file->list "day-1-input.txt"))
(foldl (lambda (a result)
         (+ result (- (floor (/ a 3)) 2)))
       0
       data)

