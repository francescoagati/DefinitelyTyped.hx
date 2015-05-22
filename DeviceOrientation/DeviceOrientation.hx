typedef Navigator = {
	var compass : Compass;
};
typedef Compass = {
	function getCurrentHeading(onSuccess:CompassHeading -> Void, onError:CompassError -> Void, ?options:CompassOptions):Void;
	function watchHeading(onSuccess:CompassHeading -> Void, onError:CompassError -> Void, ?options:CompassOptions):Float;
	function clearWatch(id:Float):Void;
};
typedef CompassHeading = {
	var magneticHeading : Float;
	var trueHeading : Float;
	var headingAccuracy : Float;
	var timestamp : Float;
};
typedef CompassOptions = {
	@:optional
	var filter : Float;
	@:optional
	var frequency : Float;
};
typedef CompassError = {
	var code : Float;
};
extern class DeviceOrientationTopLevel {
	static var CompassError : { function new(code:Float):CompassError; var COMPASS_INTERNAL_ERR : Float; var COMPASS_NOT_SUPPORTED : Float; };
}
