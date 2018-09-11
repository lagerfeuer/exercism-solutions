(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (when (= (length dna1) (length dna2))
    (let ((cnt 0))
      (loop for idx from 0 to (1- (length dna1)) do
            (let ((c1 (aref dna1 idx)) (c2 (aref dna2 idx)))
              (if (char/= c1 c2) (setq cnt (1+ cnt)))))
      cnt)))
