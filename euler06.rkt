#lang racket

(define 0-100 (for/list ([i 101]) i))
(define sum (curry apply +))
(define (square x) (* x x))


(- (square (sum 0-100))
   (sum (map square 0-100)))
