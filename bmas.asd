(defsystem "bmas"
  :pathname ""
  :author "Shubhamkar B. Ayare (shubhamayare@yahoo.co.in)"
  :description "A Common Lisp wrapper around BMAS - a BLAS like library with support for integers, basic math operations, trigonometry, and more."
  :license "MIT"
  :depends-on ("uiop"
               "cffi"
               "cl-autowrap")
  :serial t
  :components ((:module "specs"
                :components ((:static-file "bmas.aarch64-pc-linux-gnu.spec")
                             (:static-file "bmas.aarch64-unknown-linux-android.spec")
                             (:static-file "bmas.arm-pc-linux-gnu.spec")
                             (:static-file "bmas.arm-unknown-linux-androideabi.spec")
                             (:static-file "bmas.i386-unknown-freebsd.spec")
                             (:static-file "bmas.i386-unknown-openbsd.spec")
                             (:static-file "bmas.i686-apple-darwin9.spec")
                             (:static-file "bmas.i686-pc-linux-gnu.spec")
                             (:static-file "bmas.i686-pc-windows-msvc.spec")
                             (:static-file "bmas.i686-unknown-linux-android.spec")
                             (:static-file "bmas.x86_64-apple-darwin9.spec")
                             (:static-file "bmas.x86_64-pc-linux-gnu.spec")
                             (:static-file "bmas.x86_64-pc-windows-msvc.spec")
                             (:static-file "bmas.x86_64-unknown-freebsd.spec")
                             (:static-file "bmas.x86_64-unknown-linux-android.spec")
                             (:static-file "bmas.x86_64-unknown-openbsd.spec")))
               (:module "src"
                :serial t
                :components ((:file "package")
                             (:file "noninline")
                             ;; FIXME: Simplify after autowrap adds an inline option
                             (:file "inline-declarations")
                             (:file "inline")
                             (:file "shared-object")))))
