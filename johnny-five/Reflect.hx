extern class Array {
	function new(option:ArrayOption):Void;
	function enable():Void;
	function disable():Void;
	function calibrate():Void;
	function calibrateUntil(predicate:Void -> Void):Void;
	function loadCalibration(option:LoadCalibrationOption):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:CalibratedData, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Line, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef JoystickOption = {
	var pins : Array<String>;
};
extern class Joystick {
	function new(option:JoystickOption):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	@:overload(function(event:Axismove, cb:Error -> Date -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	var axis : Array<Float>;
	var raw : Array<Float>;
}
typedef LCDGeneralOption = {
	@:optional
	var rows : Float;
	@:optional
	var cols : Float;
};
typedef LCDI2COption = {
	>LCDGeneralOption,
	var controller : String;
};
typedef LCDParallelOption = {
	>LCDGeneralOption,
	var pins : Array<Dynamic>;
};
extern class LCD {
	function new(option:haxe.extern.EitherType<LCDGeneralOption, haxe.extern.EitherType<LCDI2COption, LCDParallelOption>>):Void;
	function print(message:String):Void;
	function useChar(char:String):Void;
	function clear():Void;
	function cursor(row:Float, col:Float):Void;
	function home():Void;
	function display():Void;
	function noDisplay():Void;
	function blink():Void;
	function noBlink():Void;
	function autoscroll():Void;
	function noAutoscroll():Void;
}
typedef LedOption = {
	var pin : Float;
	@:optional
	var type : String;
	@:optional
	var controller : String;
	@:optional
	var address : Float;
	@:optional
	var isAnode : Bool;
};
extern class Led {
	function new(option:haxe.extern.EitherType<Float, LedOption>):Void;
	function on():Void;
	function off():Void;
	function toggle():Void;
	function strobe(ms:Float):Void;
	@:overload(function(ms:Float):Void { })
	function blink():Void;
	function brightness(val:Float):Void;
	function fade(brightness:Float, ms:Float):Void;
	function fadeIn(ms:Float):Void;
	function fadeOut(ms:Float):Void;
	function pulse(ms:Float):Void;
	function stop(ms:Float):Void;
}
