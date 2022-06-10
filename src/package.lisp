(cl:in-package :cl)
(defpackage :bmas (:use))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defvar bmas::*src-dir* (asdf:component-pathname (asdf:find-system "bmas")))
  (defun bmas::bmas-c-to-lisp (name)
    (autowrap:default-c-to-lisp
     (cl:if (and (< 4 (length name))
                 (string= "BMAS"
                          (subseq name 0 4)))
            (subseq name 5)
            name)))
  (defun bmas::starts-with-bmas (name)
    (alexandria:starts-with-subseq "BMAS_" (symbol-name name)))
  (defun bmas::does-not-start-with-bmas (name)
    (not (alexandria:starts-with-subseq "BMAS_" (symbol-name name)))))
