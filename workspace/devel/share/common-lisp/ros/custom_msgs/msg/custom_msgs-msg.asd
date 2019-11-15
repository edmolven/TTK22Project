
(cl:in-package :asdf)

(defsystem "custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActuatorSetpoints" :depends-on ("_package_ActuatorSetpoints"))
    (:file "_package_ActuatorSetpoints" :depends-on ("_package"))
    (:file "BaroSensorSample" :depends-on ("_package_BaroSensorSample"))
    (:file "_package_BaroSensorSample" :depends-on ("_package"))
    (:file "GnssSensorSample" :depends-on ("_package_GnssSensorSample"))
    (:file "_package_GnssSensorSample" :depends-on ("_package"))
    (:file "ImuSensor" :depends-on ("_package_ImuSensor"))
    (:file "_package_ImuSensor" :depends-on ("_package"))
    (:file "ImuSensorSample" :depends-on ("_package_ImuSensorSample"))
    (:file "_package_ImuSensorSample" :depends-on ("_package"))
    (:file "Internal" :depends-on ("_package_Internal"))
    (:file "_package_Internal" :depends-on ("_package"))
    (:file "JoyAxis" :depends-on ("_package_JoyAxis"))
    (:file "_package_JoyAxis" :depends-on ("_package"))
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "NED" :depends-on ("_package_NED"))
    (:file "_package_NED" :depends-on ("_package"))
    (:file "NorthEastHeading" :depends-on ("_package_NorthEastHeading"))
    (:file "_package_NorthEastHeading" :depends-on ("_package"))
    (:file "RemoteControlState" :depends-on ("_package_RemoteControlState"))
    (:file "_package_RemoteControlState" :depends-on ("_package"))
    (:file "SurgeSwayYaw" :depends-on ("_package_SurgeSwayYaw"))
    (:file "_package_SurgeSwayYaw" :depends-on ("_package"))
    (:file "ThreeDofForce" :depends-on ("_package_ThreeDofForce"))
    (:file "_package_ThreeDofForce" :depends-on ("_package"))
    (:file "XsensQuaternion" :depends-on ("_package_XsensQuaternion"))
    (:file "_package_XsensQuaternion" :depends-on ("_package"))
    (:file "baroSample" :depends-on ("_package_baroSample"))
    (:file "_package_baroSample" :depends-on ("_package"))
    (:file "ekfBias" :depends-on ("_package_ekfBias"))
    (:file "_package_ekfBias" :depends-on ("_package"))
    (:file "gnssGGA" :depends-on ("_package_gnssGGA"))
    (:file "_package_gnssGGA" :depends-on ("_package"))
    (:file "gnssGGA_status" :depends-on ("_package_gnssGGA_status"))
    (:file "_package_gnssGGA_status" :depends-on ("_package"))
    (:file "gnssHDT" :depends-on ("_package_gnssHDT"))
    (:file "_package_gnssHDT" :depends-on ("_package"))
    (:file "gnssPose" :depends-on ("_package_gnssPose"))
    (:file "_package_gnssPose" :depends-on ("_package"))
    (:file "gnssRMC" :depends-on ("_package_gnssRMC"))
    (:file "_package_gnssRMC" :depends-on ("_package"))
    (:file "gnssSample" :depends-on ("_package_gnssSample"))
    (:file "_package_gnssSample" :depends-on ("_package"))
    (:file "latlong" :depends-on ("_package_latlong"))
    (:file "_package_latlong" :depends-on ("_package"))
    (:file "orientationEstimate" :depends-on ("_package_orientationEstimate"))
    (:file "_package_orientationEstimate" :depends-on ("_package"))
    (:file "orientationEuler" :depends-on ("_package_orientationEuler"))
    (:file "_package_orientationEuler" :depends-on ("_package"))
    (:file "podAngle" :depends-on ("_package_podAngle"))
    (:file "_package_podAngle" :depends-on ("_package"))
    (:file "positionEstimate" :depends-on ("_package_positionEstimate"))
    (:file "_package_positionEstimate" :depends-on ("_package"))
    (:file "rawGPSdata" :depends-on ("_package_rawGPSdata"))
    (:file "_package_rawGPSdata" :depends-on ("_package"))
    (:file "sensorSample" :depends-on ("_package_sensorSample"))
    (:file "_package_sensorSample" :depends-on ("_package"))
    (:file "threeFloats" :depends-on ("_package_threeFloats"))
    (:file "_package_threeFloats" :depends-on ("_package"))
    (:file "twistEstimate" :depends-on ("_package_twistEstimate"))
    (:file "_package_twistEstimate" :depends-on ("_package"))
    (:file "velocityEstimate" :depends-on ("_package_velocityEstimate"))
    (:file "_package_velocityEstimate" :depends-on ("_package"))
  ))