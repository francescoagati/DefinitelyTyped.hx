typedef IAccelerometerStatics = {
	function getDefault():Windows.Devices.Sensors.Accelerometer;
};
extern class Accelerometer {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.AccelerometerReading;
	var onreadingchanged : Dynamic;
	var onshaken : Dynamic;
	static function getDefault():Windows.Devices.Sensors.Accelerometer;
}
typedef IAccelerometer = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.AccelerometerReading;
	var onreadingchanged : Dynamic;
	var onshaken : Dynamic;
};
extern class AccelerometerReading {
	var accelerationX : Float;
	var accelerationY : Float;
	var accelerationZ : Float;
	var timestamp : Date;
}
extern class AccelerometerReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.AccelerometerReading;
}
extern class AccelerometerShakenEventArgs {
	var timestamp : Date;
}
typedef IAccelerometerReading = {
	var accelerationX : Float;
	var accelerationY : Float;
	var accelerationZ : Float;
	var timestamp : Date;
};
typedef IAccelerometerReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.AccelerometerReading;
};
typedef IAccelerometerShakenEventArgs = {
	var timestamp : Date;
};
typedef IInclinometerStatics = {
	function getDefault():Windows.Devices.Sensors.Inclinometer;
};
extern class Inclinometer {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.InclinometerReading;
	var onreadingchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.Inclinometer;
}
typedef IInclinometer = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.InclinometerReading;
	var onreadingchanged : Dynamic;
};
extern class InclinometerReading {
	var pitchDegrees : Float;
	var rollDegrees : Float;
	var timestamp : Date;
	var yawDegrees : Float;
}
extern class InclinometerReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.InclinometerReading;
}
typedef IInclinometerReading = {
	var pitchDegrees : Float;
	var rollDegrees : Float;
	var timestamp : Date;
	var yawDegrees : Float;
};
typedef IInclinometerReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.InclinometerReading;
};
typedef IGyrometerStatics = {
	function getDefault():Windows.Devices.Sensors.Gyrometer;
};
extern class Gyrometer {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.GyrometerReading;
	var onreadingchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.Gyrometer;
}
typedef IGyrometer = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.GyrometerReading;
	var onreadingchanged : Dynamic;
};
extern class GyrometerReading {
	var angularVelocityX : Float;
	var angularVelocityY : Float;
	var angularVelocityZ : Float;
	var timestamp : Date;
}
extern class GyrometerReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.GyrometerReading;
}
typedef IGyrometerReading = {
	var angularVelocityX : Float;
	var angularVelocityY : Float;
	var angularVelocityZ : Float;
	var timestamp : Date;
};
typedef IGyrometerReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.GyrometerReading;
};
typedef ICompassStatics = {
	function getDefault():Windows.Devices.Sensors.Compass;
};
extern class Compass {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.CompassReading;
	var onreadingchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.Compass;
}
typedef ICompass = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.CompassReading;
	var onreadingchanged : Dynamic;
};
extern class CompassReading {
	var headingMagneticNorth : Float;
	var headingTrueNorth : Float;
	var timestamp : Date;
}
extern class CompassReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.CompassReading;
}
typedef ICompassReading = {
	var headingMagneticNorth : Float;
	var headingTrueNorth : Float;
	var timestamp : Date;
};
typedef ICompassReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.CompassReading;
};
typedef ILightSensorStatics = {
	function getDefault():Windows.Devices.Sensors.LightSensor;
};
extern class LightSensor {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.LightSensorReading;
	var onreadingchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.LightSensor;
}
typedef ILightSensor = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.LightSensorReading;
	var onreadingchanged : Dynamic;
};
extern class LightSensorReading {
	var illuminanceInLux : Float;
	var timestamp : Date;
}
extern class LightSensorReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.LightSensorReading;
}
typedef ILightSensorReading = {
	var illuminanceInLux : Float;
	var timestamp : Date;
};
typedef ILightSensorReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.LightSensorReading;
};
typedef ISensorRotationMatrix = {
	var m11 : Float;
	var m12 : Float;
	var m13 : Float;
	var m21 : Float;
	var m22 : Float;
	var m23 : Float;
	var m31 : Float;
	var m32 : Float;
	var m33 : Float;
};
typedef ISensorQuaternion = {
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
};
extern class SensorRotationMatrix {
	var m11 : Float;
	var m12 : Float;
	var m13 : Float;
	var m21 : Float;
	var m22 : Float;
	var m23 : Float;
	var m31 : Float;
	var m32 : Float;
	var m33 : Float;
}
extern class SensorQuaternion {
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
}
typedef IOrientationSensorStatics = {
	function getDefault():Windows.Devices.Sensors.OrientationSensor;
};
extern class OrientationSensor {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.OrientationSensorReading;
	var onreadingchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.OrientationSensor;
}
typedef IOrientationSensor = {
	var minimumReportInterval : Float;
	var reportInterval : Float;
	function getCurrentReading():Windows.Devices.Sensors.OrientationSensorReading;
	var onreadingchanged : Dynamic;
};
extern class OrientationSensorReading {
	var quaternion : Windows.Devices.Sensors.SensorQuaternion;
	var rotationMatrix : Windows.Devices.Sensors.SensorRotationMatrix;
	var timestamp : Date;
}
extern class OrientationSensorReadingChangedEventArgs {
	var reading : Windows.Devices.Sensors.OrientationSensorReading;
}
typedef IOrientationSensorReading = {
	var quaternion : Windows.Devices.Sensors.SensorQuaternion;
	var rotationMatrix : Windows.Devices.Sensors.SensorRotationMatrix;
	var timestamp : Date;
};
typedef IOrientationSensorReadingChangedEventArgs = {
	var reading : Windows.Devices.Sensors.OrientationSensorReading;
};
@:enum abstract SimpleOrientation(Int) {
	var notRotated = 0;
	var rotated90DegreesCounterclockwise = 1;
	var rotated180DegreesCounterclockwise = 2;
	var rotated270DegreesCounterclockwise = 3;
	var faceup = 4;
	var facedown = 5;
}
typedef ISimpleOrientationSensorStatics = {
	function getDefault():Windows.Devices.Sensors.SimpleOrientationSensor;
};
extern class SimpleOrientationSensor {
	function getCurrentOrientation():Windows.Devices.Sensors.SimpleOrientation;
	var onorientationchanged : Dynamic;
	static function getDefault():Windows.Devices.Sensors.SimpleOrientationSensor;
}
typedef ISimpleOrientationSensor = {
	function getCurrentOrientation():Windows.Devices.Sensors.SimpleOrientation;
	var onorientationchanged : Dynamic;
};
extern class SimpleOrientationSensorOrientationChangedEventArgs {
	var orientation : Windows.Devices.Sensors.SimpleOrientation;
	var timestamp : Date;
}
typedef ISimpleOrientationSensorOrientationChangedEventArgs = {
	var orientation : Windows.Devices.Sensors.SimpleOrientation;
	var timestamp : Date;
};
