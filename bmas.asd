(defsystem "bmas"
  :pathname ""
  :licence "MIT"
  :depends-on ("uiop"
               "cffi"
               "cl-autowrap")
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
               (:file "bmas" :depends-on ("specs"))))
