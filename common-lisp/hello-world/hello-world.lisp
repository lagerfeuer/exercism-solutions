(defpackage #:hello-world
  (:use #:common-lisp)
  (:export #:hello-world)
  (:nicknames #:hw))

(in-package #:hello-world)

;;; if destination of format (first parameter) the string is returned,
;;; otherwise it is written to destination and returns NIL
(defun hello-world (&optional (name "World"))
    (format nil "Hello ~A!" name))
