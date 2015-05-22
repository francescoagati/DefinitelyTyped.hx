typedef MotionOption = {
	var pin : haxe.extern.EitherType<Float, String>;
};
extern class Motion {
	function new(option:haxe.extern.EitherType<Float, MotionOption>):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Motionstart, cb:Void -> Void):Void { })
	@:overload(function(event:Motionend, cb:Void -> Void):Void { })
	@:overload(function(event:Calibrated, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef PloximityOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	var controller : String;
};
extern class Proximity {
	function new(option:haxe.extern.EitherType<Float, PloximityOption>):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef ArrayOption = {
	var pins : haxe.extern.EitherType<Array<Float>, Array<String>>;
	var emitter : haxe.extern.EitherType<Float, String>;
	@:optional
	var freq : Float;
};
typedef LoadCalibrationOption = {
	var min : Array<Float>;
	var max : Array<Float>;
};
