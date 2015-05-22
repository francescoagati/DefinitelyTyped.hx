extern class TweenLite {
	function new(target:Dynamic, duration:Float, vars:Dynamic):Void;
	static var defaultEase : Ease;
	static var defaultOverwrite : String;
	static var selector : String -> Dynamic;
	var target : Dynamic;
	static var ticker : Dynamic;
	static function delayedCall(delay:Float, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenLite;
	static function from(target:Dynamic, duration:Float, vars:Dynamic):TweenLite;
	static function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenLite;
	static function getTweensOf(target:Dynamic, ?onlyActive:Bool):Array<TweenLite>;
	function invalidate():TweenLite;
	static function killDelayedCallsTo(func:haxe.Constraints.Function):Void;
	static function killTweensOf(target:Dynamic, ?onlyActive:Bool, ?vars:Dynamic):Void;
	static function lagSmoothing(threshold:Float, adjustedLag:Float):Void;
	static function render():Void;
	static function set(target:Dynamic, vars:Dynamic):TweenLite;
	static function to(target:Dynamic, duration:Float, vars:Dynamic):TweenLite;
	@:overload(function(value:Float):TweenLite { })
	function delay():Float;
	@:overload(function(value:Float):TweenLite { })
	function duration():Float;
	@:overload(function(type:String, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic):TweenLite { })
	function eventCallback(type:String):haxe.Constraints.Function;
	function kill(?vars:Dynamic, ?target:Dynamic):TweenLite;
	function pause(?atTime:Dynamic, ?suppressEvents:Bool):TweenLite;
	@:overload(function(value:Bool):TweenLite { })
	function paused():Bool;
	function play(?from:Dynamic, ?suppressEvents:Bool):TweenLite;
	@:overload(function(value:Float, ?suppressEvents:Bool):TweenLite { })
	function progress():Float;
	function restart(?includeDelay:Bool, ?suppressEvents:Bool):TweenLite;
	function resume(?from:Dynamic, ?suppressEvents:Bool):TweenLite;
	function reverse(?from:Dynamic, ?suppressEvents:Bool):TweenLite;
	@:overload(function(value:Bool):TweenLite { })
	function reversed():Bool;
	function seek(time:Dynamic, ?suppressEvents:Bool):TweenLite;
	@:overload(function(value:Float):TweenLite { })
	function startTime():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):TweenLite { })
	function time():Float;
	@:overload(function(value:Float):TweenLite { })
	function timeScale():Float;
	@:overload(function(value:Float):TweenLite { })
	function totalDuration():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):TweenLite { })
	function totalProgress():Float;
	@:overload(function(time:Float, ?suppressEvents:Bool):TweenLite { })
	function totalTime():Float;
}
