typedef IFlipsnap = {
	function hasPrev():Bool;
	function hasNext():Bool;
	function toPrev(?transitionDuration:Float):Void;
	function toNext(?transitionDuration:Float):Void;
	function moveToPoint(point:Float, ?transitionDuration:Float):Void;
	function refresh():Void;
	var element : HTMLElement;
};
typedef FlipsnapStatic = { };
typedef FlipsnapOptions = {
	@:optional
	var maxPoint : Float;
	@:optional
	var distance : Float;
	@:optional
	var transitionDuration : Float;
	@:optional
	var disableTouch : Bool;
	@:optional
	var disable3d : Bool;
};
typedef HTMLElement = {
	@:overload(function(type:Fstouchmove, listener:FlipsnapTouchMoveEvent -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Fstouchend, listener:FlipsnapTouchEndEvent -> Dynamic, ?useCapture:Bool):Void { })
	function addEventListener(type:Fstouchstart, listener:Event -> Dynamic, ?useCapture:Bool):Void;
};
typedef FlipsnapTouchMoveEvent = {
	>Event,
	var delta : Float;
	var direction : Float;
};
typedef FlipsnapTouchEndEvent = {
	>Event,
	var moved : Bool;
	var cancelled : Bool;
	var newPoint : Float;
	var originalPoint : Float;
};
extern class FlipsnapTopLevel {
	static var Flipsnap : FlipsnapStatic;
}
