typedef Transition = {
	var duration : { };
	var delay : { };
	var attr : { };
	var style : { };
	function call(callback:Transition -> haxe.extern.Rest<Dynamic> -> Void, args:haxe.extern.Rest<Dynamic>):Transition;
	var select : { };
	var selectAll : { };
	var each : { };
	var transition : Void -> Transition;
	var ease : String -> haxe.extern.Rest<Dynamic> -> Transition;
	function attrTween(name:String, tween:Dynamic -> Float -> Dynamic -> BaseInterpolate):Transition;
	function styleTween(name:String, tween:Dynamic -> Float -> Dynamic -> BaseInterpolate, ?priority:String):Transition;
	var text : { };
	function tween(name:String, factory:InterpolateFactory):Transition;
	var filter : { };
	function remove():Transition;
};
typedef InterpolateFactory = { };
typedef BaseInterpolate = { };
typedef Interpolate = { };
