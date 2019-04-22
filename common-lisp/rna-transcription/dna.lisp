(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)

(defun to-rna (str)
  (flet ((is-not-dna-p (dna-str)
           (some #'(lambda (nucleotide)
                     (char/= nucleotide #\G #\C #\T #\A))
                 dna-str)))
    (if (is-not-dna-p str)
        'error
        (map 'string
             #'(lambda (nucleotide)
                 (case nucleotide
                   (#\G #\C)
                   (#\C #\G)
                   (#\T #\A)
                   (#\A #\U)))
             str))))
