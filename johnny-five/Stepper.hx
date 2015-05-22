extern class TYPE {
	static var DRIVER : Float;
	static var TWO_WIRE : Float;
	static var FOUR_WIRE : Float;
}
extern class Stepper {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, StepperOption>>):Void;
	function step(stepsOrOpts:Dynamic, cb:Void -> Void):Void;
	@:overload(function(value:Float):Stepper { })
	function rpm():Stepper;
	@:overload(function(value:Float):Stepper { })
	function speed():Stepper;
	@:overload(function(value:Float):Stepper { })
	function direction():Stepper;
	@:overload(function(value:Float):Stepper { })
	function accel():Stepper;
	@:overload(function(value:Float):Stepper { })
	function decel():Stepper;
	function cw():Stepper;
	function ccw():Stepper;
	@:overload(function(range:Array<Float>, unit:String, cb:Void -> Void):Void { })
	function within(range:Array<Float>, cb:Void -> Void):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef TemperatureOption = {
	@:optional
	var controller : String;
	var pin : haxe.extern.EitherType<String, Float>;
	@:optional
	var toCelsius : Float -> Float;
	@:optional
	var freq : Float;
};
extern class Temperature {
	function new(option:TemperatureOption):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
