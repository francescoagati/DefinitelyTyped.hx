typedef IScrollOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var bounce : Bool;
	@:optional
	var bounceLock : Bool;
	@:optional
	var momentum : Bool;
	@:optional
	var lockDirection : Bool;
	@:optional
	var useTransform : Bool;
	@:optional
	var useTransition : Bool;
	@:optional
	var topOffset : Float;
	@:optional
	var checkDOMChanges : Bool;
	@:optional
	var handleClick : Bool;
	@:optional
	var hScrollbar : Bool;
	@:optional
	var vScrollbar : Bool;
	@:optional
	var fixedScrollbar : Bool;
	@:optional
	var hideScrollbar : Bool;
	@:optional
	var fadeScrollbar : Bool;
	@:optional
	var scrollbarClass : String;
	@:optional
	var zoom : Bool;
	@:optional
	var zoomMin : Float;
	@:optional
	var zoomMax : Float;
	@:optional
	var doubleTapZoom : Float;
	@:optional
	var wheelAction : String;
	@:optional
	var snap : Dynamic;
	@:optional
	var snapThreshold : Float;
	@:optional
	var resizeIndicator : Bool;
	@:optional
	var mouseWheelSpeed : Float;
	@:optional
	var startX : Float;
	@:optional
	var startY : Float;
	@:optional
	var scrollX : Bool;
	@:optional
	var scrollY : Bool;
	@:optional
	var directionLockThreshold : Float;
	@:optional
	var bounceTime : Float;
	@:optional
	var bounceEasing : Dynamic;
	@:optional
	var preventDefault : Bool;
	@:optional
	var preventDefaultException : Bool;
	@:optional
	var HWCompositing : Bool;
	@:optional
	var freeScroll : Bool;
	@:optional
	var resizePolling : Float;
	@:optional
	var tap : Bool;
	@:optional
	var click : Bool;
	@:optional
	var invertWheelDirection : Bool;
	@:optional
	var eventPassthrough : Dynamic;
};
extern class IScroll {
	@:overload(function(element:HTMLElement, ?options:IScrollOptions):Void { })
	function new(element:String, ?options:IScrollOptions):Void;
	function destroy():Void;
	function refresh():Void;
	function scrollTo(x:Float, y:Float, ?time:Float, ?relative:Bool):Void;
	@:overload(function(element:HTMLElement, ?time:Float):Void { })
	function scrollToElement(element:String, ?time:Float):Void;
	function scrollToPage(pageX:Float, pageY:Float, ?time:Float):Void;
	function disable():Void;
	function enable():Void;
	function stop():Void;
	function zoom(x:Float, y:Float, scale:Float, ?time:Float):Void;
	function isReady():Bool;
	var on : String -> Void -> Void -> Void;
}
