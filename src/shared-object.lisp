(cl:in-package :cl)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (do-symbols (s (find-package :bmas))
    (when (or (and (not (fboundp s))
                   (not (boundp s)))
              (and (fboundp s)
                   (alexandria:starts-with-subseq "__" (symbol-name s))))
      (unintern s :bmas))))

(in-package :bmas)

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
