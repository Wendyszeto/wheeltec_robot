
(cl:in-package :asdf)

(defsystem "turn_on_wheeltec_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "supersonic" :depends-on ("_package_supersonic"))
    (:file "_package_supersonic" :depends-on ("_package"))
  ))