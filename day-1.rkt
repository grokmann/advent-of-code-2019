#lang racket
(require net/http-client)
(require net/url)
;https://adventofcode.com/2019/day/1/input
;(call/input-url (string->url "https://adventofcode.com/2019/day/1/input")
;                get-pure-port
;                port->string)
(define data (file->list "day-1-input.txt"))
(foldl (lambda (a result)
         ;(printf "~a ~v ~%" result a)
         (+ result (- (floor (/ a 3)) 2)))
       0
       data)

