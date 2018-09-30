(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:response-for))
(in-package #:bob)

(defun response-for (input)
  (let* ((trimmed-input (string-trim
                         (list #\Tab #\Newline #\Page #\Space) input))
         (input_len (length trimmed-input)))
    (labels ((upcase-p (x) (string= (string-upcase x) x))
             (uppercase-and-alpha-p (x) (and
                                         (upcase-p x)
                                         (some #'alpha-char-p x)))
             (input-last-char () (aref trimmed-input (1- input_len)))
             (silence-p () (= input_len 0))
             (question-p () (char= #\? (input-last-char)))
             (yelling-question-p () (and
                                     (question-p)
                                     (uppercase-and-alpha-p trimmed-input)))
             (yelling-p () (and
                            (char= #\! (input-last-char))
                            (upcase-p trimmed-input)))
             (yelling-statement-p () (uppercase-and-alpha-p trimmed-input)))

      (cond ((silence-p) "Fine. Be that way!")
            ((yelling-question-p) "Calm down, I know what I'm doing!")
            ((question-p) "Sure.")
            ((yelling-p) "Whoa, chill out!")
            ((yelling-statement-p) "Whoa, chill out!")
            (t "Whatever.")))))
