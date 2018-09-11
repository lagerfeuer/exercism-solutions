(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:response-for))
(in-package #:bob)

(defun response-for (input)
  (let ((trimmed-input (string-trim (list #\Tab #\Newline #\Page #\Space) input)))
    (let ((input_len (length trimmed-input)))
      (flet ((uppercase-and-alpha-p (x) (and
                                          (string= (string-upcase x) x)
                                          (some #'alpha-char-p x))))
        (if (= input_len 0) "Fine. Be that way!"
          (case (aref trimmed-input (1- input_len))
            (#\? (if (uppercase-and-alpha-p trimmed-input)
                     "Calm down, I know what I'm doing!"
                   "Sure."))
            (#\!  (if (string= (string-upcase trimmed-input) trimmed-input)
                      "Whoa, chill out!"
                    "Whatever."))
            (otherwise (if (uppercase-and-alpha-p trimmed-input)
                           "Whoa, chill out!"
                         "Whatever.")))
          )
        ))))
