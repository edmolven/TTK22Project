
(cl:in-package :asdf)

(defsystem "sim_milliampere-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ResetState" :depends-on ("_package_ResetState"))
    (:file "_package_ResetState" :depends-on ("_package"))
  ))