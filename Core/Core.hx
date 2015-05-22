extern class Animation {
	function new(?duration:Float, ?vars:Dynamic):Void;
	var data : Dynamic;
	var timeline : SimpleTimeLine;
	var vars : Dynamic;
	@:overload(function(value:Float):Animation { })
	function delay():Float;
	@:overload(function(value:Float):Animation { })
	function duration():Float;
	@:overload(function(type:String, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic):Animation { })
	function eventCallback(type:String):haxe.Constraints.Function;
	function invalidate():Animation;
	function isActive():Bool;
	function kill(?vars:Dynamic, ?target:Dynamic):Animation;
	function pause(?atTime:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Bool):Animation { })
	function paused():Bool;
	function play(?from:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Float, ?suppressEvents:Bool):Animation { })
	function progress():Float;
	function restart(?includeDelay:Bool, ?suppressEvents:Bool):Animation;
	function resume(?from:Dynamic, ?suppressEvents:Bool):Animation;
	function reverse(?from:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Bool):Animation { })
	function reversed():Bool;
	function seek(time:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Float):Animation { })
	function startTime():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):Animation { })
	function time():Float;
	@:overload(function(value:Float):Animation { })
	function timeScale():Float;
	@:overload(function(value:Float):Animation { })
	function totalDuration():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):Animation { })
	function totalProgress():Float;
	@:overload(function(time:Float, ?suppressEvents:Bool):Animation { })
	function totalTime():Float;
}
extern class SimpleTimeLine extends Animation {
	function new(?vars:Dynamic):Void;
	var autoRemoveChildren : Bool;
	var smoothChildTiming : Bool;
	function add(child:Dynamic, ?position:Dynamic, ?align:String, ?stagger:Float):SimpleTimeLine;
	function render(time:Float, ?suppressEvents:Bool, ?force:Bool):SimpleTimeLine;
	@:overload(function(value:Float):SimpleTimeLine { })
	function delay():Float;
	@:overload(function(value:Float):SimpleTimeLine { })
	function duration():Float;
	@:overload(function(type:String, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic):SimpleTimeLine { })
	function eventCallback(type:String):haxe.Constraints.Function;
	function invalidate():SimpleTimeLine;
	function kill(?vars:Dynamic, ?target:Dynamic):SimpleTimeLine;
	function pause(?atTime:Dynamic, ?suppressEvents:Bool):SimpleTimeLine;
	@:overload(function(value:Bool):SimpleTimeLine { })
	function paused():Bool;
	function play(?from:Dynamic, ?suppressEvents:Bool):SimpleTimeLine;
	@:overload(function(value:Float, ?suppressEvents:Bool):SimpleTimeLine { })
	function progress():Float;
	function restart(?includeDelay:Bool, ?suppressEvents:Bool):SimpleTimeLine;
	function resume(?from:Dynamic, ?suppressEvents:Bool):SimpleTimeLine;
	function reverse(?from:Dynamic, ?suppressEvents:Bool):SimpleTimeLine;
	@:overload(function(value:Bool):SimpleTimeLine { })
	function reversed():Bool;
	function seek(time:Dynamic, ?suppressEvents:Bool):SimpleTimeLine;
	@:overload(function(value:Float):SimpleTimeLine { })
	function startTime():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):SimpleTimeLine { })
	function time():Float;
	@:overload(function(value:Float):SimpleTimeLine { })
	function timeScale():Float;
	@:overload(function(value:Float):SimpleTimeLine { })
	function totalDuration():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):SimpleTimeLine { })
	function totalProgress():Float;
	@:overload(function(time:Float, ?suppressEvents:Bool):SimpleTimeLine { })
	function totalTime():Float;
}
