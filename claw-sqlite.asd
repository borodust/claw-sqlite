(asdf:defsystem :claw-sqlite
  :description "Common Lisp bindings to sqlite"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-sqlite-bindings))


(asdf:defsystem :claw-sqlite/wrapper
  :description "Wrapper generator for sqlite"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw)
  :serial t
  :components ((:file "src/claw")
               (:module :sqlite-includes :pathname "src/lib/")))
