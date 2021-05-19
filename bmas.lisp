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
            name))))

(cl:in-package :bmas)
(autowrap:c-include (cl:merge-pathnames #P"bmas/bmas.h" *src-dir*)
                    ;; TODO: Is there an "inline" option?
                    :spec-path
                    (cl:merge-pathnames #P"specs/" *src-dir*)
                    :c-to-lisp-function #'bmas-c-to-lisp)

;; TODO: Delete the below code once declaim-inline option is added

(cl:in-package :cl)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (do-symbols (s (find-package :bmas))
    (when (fboundp s)
      (proclaim `(inline ,s)))))

(cl:in-package :bmas)
(autowrap:c-include (cl:merge-pathnames #P"bmas/bmas.h" *src-dir*)
                    ;; TODO: Is there an "inline" option?
                    :spec-path
                    (cl:merge-pathnames #P"specs/" *src-dir*)
                    :c-to-lisp-function #'bmas-c-to-lisp)

(cl:let ((shared-library-pathname (cl:merge-pathnames #P"bmas/libbmas.so" *src-dir*)))
  (cl:unless (cl:probe-file shared-library-pathname)
    (uiop:run-program
     (uiop:strcat "cd "
                  "'"
                  (cl:namestring (cl:merge-pathnames #P"bmas/" *src-dir*))
                  "'"
                  " && bash '"
                  (cl:namestring (cl:merge-pathnames #P"bmas/make.sh" *src-dir*))
                  "'")
     :error-output cl:t))
  (cffi:load-foreign-library shared-library-pathname))
