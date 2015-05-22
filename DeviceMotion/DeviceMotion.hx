typedef Navigator = {
	var accelerometer : Accelerometer;
};
typedef Accelerometer = {
	function clearWatch(watchID:WatchHandle):Void;
	function getCurrentAcceleration(accelerometerSuccess:Acceleration -> Void, accelerometerError:Void -> Void):Void;
	function watchAcceleration(accelerometerSuccess:Acceleration -> Void, accelerometerError:Void -> Void, ?accelerometerOptions:AccelerometerOptions):WatchHandle;
};
typedef Acceleration = {
	var x : Float;
	var y : Float;
	var z : Float;
	var timestamp : Float;
};
typedef AccelerometerOptions = {
	@:optional
	var frequency : Float;
};
typedef WatchHandle = { };
