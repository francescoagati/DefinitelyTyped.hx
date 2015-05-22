typedef Notification = {
	function vibrate(time:Float):Void;
	function vibrateWithPattern(pattern:Array<Float>, repeat:Float):Void;
	function cancelVibration():Void;
};
