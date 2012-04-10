#lang racket

(require srfi/13)

(provide string-pad
         hex-pad
         row-header)

(define (hex-pad x (width 4))
  (string-pad (format "~x" x) width #\0))

(define (row-header key (cols 8))
  (string-append "0x"
                 (hex-pad (- key (remainder key cols)))
                 ": "))