(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)

(defparameter *mapping* '((#\G #\C)
                          (#\C #\G)
                          (#\T #\A)
                          (#\A #\U)))

(defun to-rna (str)
  (flet ((is-dna-p (dna-str)
           (every #'(lambda (nucleotide)
                      (find nucleotide
                            (mapcar #'car *mapping*)))
                  dna-str)))
    (if (is-dna-p str)
        (map 'string
             #'(lambda (nucleotide)
                 (cadr (assoc nucleotide *mapping*)))
             str)
        'error)))
