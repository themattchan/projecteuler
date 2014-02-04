#lang racket

(-
 (apply (lambda (x)
          (* x x))
        (list (apply + (for/list ([i 101]) i))))
 (apply + 
        (map (lambda (x y)
                 (* x y))
               (for/list ([i 101]) i) 
               (for/list ([j 101]) j))))