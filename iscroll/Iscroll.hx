typedef IScrollEvent = { };
typedef IScrollOptions = {
	@:optional
	var hScroll : Bool;
	@:optional
	var vScroll : Bool;
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
	var onRefresh : IScrollEvent;
	@:optional
	var onBeforeScrollStart : IScrollEvent;
	@:optional
	var onScrollStart : IScrollEvent;
	@:optional
	var onBeforeScrollMove : IScrollEvent;
	@:optional
	var onScrollMove : IScrollEvent;
	@:optional
	var onBeforeScrollEnd : IScrollEvent;
	@:optional
	var onScrollEnd : IScrollEvent;
	@:optional
	var onTouchEnd : IScrollEvent;
	@:optional
	var onDestroy : IScrollEvent;
	@:optional
	var onZoomStart : IScrollEvent;
	@:optional
	var onZoom : IScrollEvent;
	@:optional
	var onZoomEnd : IScrollEvent;
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
}
