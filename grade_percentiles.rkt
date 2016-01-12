;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname grade-percentiles) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; (grade-percentiles score total): Number Number -> [Listof [Listof Number Number]]
;; creates a [Listof [Listof Number]] of grade percentages from the score until the total
;; to demonstrate required scores in order to achieve a certain grade

(define (grade-percentiles score total)
  (cond [(equal? score total) (list score)]
        [else (cons (list score (/ score total))(grade-percentiles (add1 score) total))]))