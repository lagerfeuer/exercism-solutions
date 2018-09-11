(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (flet ((zero-rem-p (num div) (= (mod num div) 0)))
    (and (zero-rem-p year 4)
         (or (not (zero-rem-p year 100))
             (zero-rem-p year 400)))))
