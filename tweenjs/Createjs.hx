extern class CSSPlugin {
	function new():Void;
	static var cssSuffixMap : Dynamic;
	static function install():Void;
}
extern class Ease {
	static var backIn : Float -> Float;
	static var backInOut : Float -> Float;
	static var backOut : Float -> Float;
	static var bounceIn : Float -> Float;
	static var bounceInOut : Float -> Float;
	static var bounceOut : Float -> Float;
	static var circIn : Float -> Float;
	static var circInOut : Float -> Float;
	static var circOut : Float -> Float;
	static var cubicIn : Float -> Float;
	static var cubicInOut : Float -> Float;
	static var cubicOut : Float -> Float;
	static var elasticIn : Float -> Float;
	static var elasticInOut : Float -> Float;
	static var elasticOut : Float -> Float;
	static function get(amount:Float):Float -> Float;
	static function getBackIn(amount:Float):Float -> Float;
	static function getBackInOut(amount:Float):Float -> Float;
	static function getBackOut(amount:Float):Float -> Float;
	static function getElasticIn(amplitude:Float, period:Float):Float -> Float;
	static function getElasticInOut(amplitude:Float, period:Float):Float -> Float;
	static function getElasticOut(amplitude:Float, period:Float):Float -> Float;
	static function getPowIn(pow:Float):Float -> Float;
	static function getPowInOut(pow:Float):Float -> Float;
	static function getPowOut(pow:Float):Float -> Float;
	static var linear : Float -> Float;
	static var none : Float -> Float;
	static var quadIn : Float -> Float;
	static var quadInOut : Float -> Float;
	static var quadOut : Float -> Float;
	static var quartIn : Float -> Float;
	static var quartInOut : Float -> Float;
	static var quartOut : Float -> Float;
	static var quintIn : Float -> Float;
	static var quintInOut : Float -> Float;
	static var quintOut : Float -> Float;
	static var sineIn : Float -> Float;
	static var sineInOut : Float -> Float;
	static var sineOut : Float -> Float;
}
extern class MotionGuidePlugin {
	function new():Void;
	static function install():Dynamic;
}
extern class Timeline extends EventDispatcher {
	function new(tweens:Array<Tween>, labels:Dynamic, props:Dynamic):Void;
	var duration : Float;
	var ignoreGlobalPause : Bool;
	var loop : Bool;
	var position : Dynamic;
	function addLabel(label:String, position:Float):Void;
	function addTween(tween:haxe.extern.Rest<Tween>):Void;
	function getCurrentLabel():String;
	function getLabels():Array<Dynamic>;
	function gotoAndPlay(positionOrLabel:haxe.extern.EitherType<String, Float>):Void;
	function gotoAndStop(positionOrLabel:haxe.extern.EitherType<String, Float>):Void;
	function removeTween(tween:haxe.extern.Rest<Tween>):Void;
	function resolve(positionOrLabel:haxe.extern.EitherType<String, Float>):Float;
	function setLabels(o:Dynamic):Void;
	function setPaused(value:Bool):Void;
	function setPosition(value:Float, ?actionsMode:Float):Bool;
	function tick(delta:Float):Void;
	function updateDuration():Void;
}
extern class Tween extends EventDispatcher {
	function new(target:Dynamic, ?props:Dynamic, ?pluginData:Dynamic):Void;
	var duration : Float;
	static var IGNORE : Dynamic;
	var ignoreGlobalPause : Bool;
	static var LOOP : Float;
	var loop : Bool;
	static var NONE : Float;
	var onChange : haxe.Constraints.Function;
	var passive : Bool;
	var pluginData : Dynamic;
	var position : Float;
	static var REVERSE : Float;
	var target : Dynamic;
	@:overload(function(callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):Tween { })
	function call(callback:Tween -> Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):Tween;
	static function get(target:Dynamic, ?props:Dynamic, ?pluginData:Dynamic, ?override:Bool):Tween;
	static function hasActiveTweens(?target:Dynamic):Bool;
	static function installPlugin(plugin:Dynamic, properties:Array<Dynamic>):Void;
	function pause(tween:Tween):Tween;
	function play(tween:Tween):Tween;
	static function removeAllTweens():Void;
	static function removeTweens(target:Dynamic):Void;
	function set(props:Dynamic, ?target:Dynamic):Tween;
	function setPaused(value:Bool):Tween;
	function setPosition(value:Float, actionsMode:Float):Bool;
	@:overload(function(delta:Float):Void { })
	static function tick(delta:Float, paused:Bool):Void;
	function to(props:Dynamic, ?duration:Float, ?ease:Float -> Float):Tween;
	function wait(duration:Float, ?passive:Bool):Tween;
}
extern class TweenJS {
	static var buildDate : String;
	static var version : String;
}
