extern class Tween {
	function new(?object:Dynamic):Void;
	function to(properties:Dynamic, duration:Float):Tween;
	function start(?time:Float):Tween;
	function stop():Tween;
	function delay(amount:Float):Tween;
	function easing(easing:Float -> Float):Tween;
	function interpolation(interpolation:Array<Float> -> Float -> Float):Tween;
	function chain(tweens:haxe.extern.Rest<Tween>):Tween;
	function onStart(callback:?Dynamic -> Void):Tween;
	function onUpdate(callback:?Dynamic -> Void):Tween;
	function onComplete(callback:?Dynamic -> Void):Tween;
	function update(time:Float):Bool;
	function repeat(times:Float):Tween;
	function yoyo(enable:Bool):Tween;
}
extern class TWEENTopLevel {
	static var REVISION : String;
	static function getAll():Array<Tween>;
	static function removeAll():Void;
	static function add(tween:Tween):Void;
	static function remove(tween:Tween):Void;
	static function update(?time:Float):Bool;
	static var Easing : TweenEasing;
	static var Interpolation : TweenInterpolation;
}
typedef TweenEasing = {
	var Linear : { function None(k:Float):Float; };
	var Quadratic : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Cubic : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Quartic : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Quintic : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Sinusoidal : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Exponential : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Circular : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Elastic : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Back : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
	var Bounce : { function In(k:Float):Float; function Out(k:Float):Float; function InOut(k:Float):Float; };
};
typedef TweenInterpolation = {
	function Linear(v:Array<Float>, k:Float):Float;
	function Bezier(v:Array<Float>, k:Float):Float;
	function CatmullRom(v:Array<Float>, k:Float):Float;
	var Utils : { function Linear(p0:Float, p1:Float, t:Float):Float; function Bernstein(n:Float, i:Float):Float; function Factorial(n:Dynamic):Float; };
};
