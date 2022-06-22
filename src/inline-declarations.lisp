(cl:in-package :cl)

(do-symbols (s (find-package :bmas))
  (when (and (fboundp s)
             (not (member s '(bmas::bmas-c-to-lisp bmas::starts-with-bmas))))
    (fmakunbound s)
    (proclaim `(inline ,s))))
