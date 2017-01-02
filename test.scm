#lang racket/base

; (define (foldl fn start l)
;   (if (null? l)
;     start
;     (foldl fn (fn start (car l)) (cdr l)) ))

; (: sum (Number Number -> Number))
(define (sum acc re)
  (if (= re 0)
    acc
    (sum (+ acc re) (- re 1))))

; obviously produces stack overflow
; (define (summ re)
;   (if (= re 0)
;     0
;     (+ re (summ (- re 1)))))

(display (time (sum  0 1000000000)))
(newline)