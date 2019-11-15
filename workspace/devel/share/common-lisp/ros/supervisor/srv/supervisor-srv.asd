
(cl:in-package :asdf)

(defsystem "supervisor-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SwitchMode" :depends-on ("_package_SwitchMode"))
    (:file "_package_SwitchMode" :depends-on ("_package"))
  ))