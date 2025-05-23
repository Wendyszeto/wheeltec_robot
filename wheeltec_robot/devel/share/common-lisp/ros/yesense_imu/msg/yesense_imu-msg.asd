
(cl:in-package :asdf)

(defsystem "yesense_imu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "YesenseImuAllData" :depends-on ("_package_YesenseImuAllData"))
    (:file "_package_YesenseImuAllData" :depends-on ("_package"))
    (:file "YesenseImuCmdResp" :depends-on ("_package_YesenseImuCmdResp"))
    (:file "_package_YesenseImuCmdResp" :depends-on ("_package"))
    (:file "YesenseImuEulerAngle" :depends-on ("_package_YesenseImuEulerAngle"))
    (:file "_package_YesenseImuEulerAngle" :depends-on ("_package"))
    (:file "YesenseImuGnssData" :depends-on ("_package_YesenseImuGnssData"))
    (:file "_package_YesenseImuGnssData" :depends-on ("_package"))
    (:file "YesenseImuGpsData" :depends-on ("_package_YesenseImuGpsData"))
    (:file "_package_YesenseImuGpsData" :depends-on ("_package"))
    (:file "YesenseImuInertialData" :depends-on ("_package_YesenseImuInertialData"))
    (:file "_package_YesenseImuInertialData" :depends-on ("_package"))
    (:file "YesenseImuLocation" :depends-on ("_package_YesenseImuLocation"))
    (:file "_package_YesenseImuLocation" :depends-on ("_package"))
    (:file "YesenseImuMasterGnssData" :depends-on ("_package_YesenseImuMasterGnssData"))
    (:file "_package_YesenseImuMasterGnssData" :depends-on ("_package"))
    (:file "YesenseImuNavData" :depends-on ("_package_YesenseImuNavData"))
    (:file "_package_YesenseImuNavData" :depends-on ("_package"))
    (:file "YesenseImuQuaternion" :depends-on ("_package_YesenseImuQuaternion"))
    (:file "_package_YesenseImuQuaternion" :depends-on ("_package"))
    (:file "YesenseImuSensorData" :depends-on ("_package_YesenseImuSensorData"))
    (:file "_package_YesenseImuSensorData" :depends-on ("_package"))
    (:file "YesenseImuSlaveGnssData" :depends-on ("_package_YesenseImuSlaveGnssData"))
    (:file "_package_YesenseImuSlaveGnssData" :depends-on ("_package"))
    (:file "YesenseImuStatus" :depends-on ("_package_YesenseImuStatus"))
    (:file "_package_YesenseImuStatus" :depends-on ("_package"))
    (:file "YesenseImuUtcTime" :depends-on ("_package_YesenseImuUtcTime"))
    (:file "_package_YesenseImuUtcTime" :depends-on ("_package"))
    (:file "YesenseImuVelocity" :depends-on ("_package_YesenseImuVelocity"))
    (:file "_package_YesenseImuVelocity" :depends-on ("_package"))
  ))