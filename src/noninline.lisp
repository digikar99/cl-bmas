(cl:in-package :bmas)

(autowrap:c-include (cl:merge-pathnames #P"bmas/bmas.h" *src-dir*)
                    :spec-path
                    (cl:merge-pathnames #P"specs/" *src-dir*)
                    :c-to-lisp-function #'bmas-c-to-lisp
                    :include-definitions #'starts-with-bmas)
