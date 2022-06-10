(cl:in-package :cl)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (do-symbols (s (find-package :bmas))
    (when (and (fboundp s)
               (not (member s '(bmas::bmas-c-to-lisp bmas::starts-with-bmas))))
      (proclaim `(inline ,s))
      (fmakunbound s))))
