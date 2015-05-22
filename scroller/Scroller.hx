typedef ScrollerOptions = {
	@:optional
	var scrollingX : Bool;
	@:optional
	var scrollingY : Bool;
	@:optional
	var animating : Bool;
	@:optional
	var animationDuration : Float;
	@:optional
	var bouncing : Bool;
	@:optional
	var locking : Bool;
	@:optional
	var paging : Bool;
	@:optional
	var snapping : Bool;
	@:optional
	var zooming : Bool;
	@:optional
	var minZoom : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var speedMultiplier : Float;
};
typedef ScrollValues = {
	var left : Float;
	var top : Float;
};
typedef ScrollValuesWithZoom = {
	>ScrollValues,
	var zoom : Float;
};
extern class Scroller {
	function new(callback:Float -> Float -> Float -> Void, options:ScrollerOptions):Void;
	function setDimensions(clientWidth:Float, clientHeight:Float, contentWidth:Float, contentHeight:Float):Void;
	function setPosition(left:Float, top:Float):Void;
	function setSnapSize(width:Float, height:Float):Void;
	function activatePullToRefresh(height:Float, activateCallback:haxe.Constraints.Function, deactivateCallback:haxe.Constraints.Function, startCallback:haxe.Constraints.Function):Void;
	function finishPullToRefresh():Void;
	function getValues():ScrollValuesWithZoom;
	function getScrollMax():ScrollValues;
	function zoomTo(level:Float, ?animate:Bool, ?originLeft:Float, ?originTop:Float, ?callback:haxe.Constraints.Function):Void;
	function zoomBy(factor:Float, ?animate:Bool, ?originLeft:Float, ?originTop:Float, ?callback:haxe.Constraints.Function):Void;
	function scrollTo(?left:Float, ?top:Float, ?animate:Bool, ?zoom:Float):Void;
	function scrollBy(?left:Float, ?top:Float, ?animate:Bool):Void;
	function doMouseZoom(wheelDelta:Float, timeStamp:Float, pageX:Float, pageY:Float):Void;
	function doTouchStart(touches:Array<Dynamic>, timeStamp:Float):Void;
	function doTouchMove(touches:Array<Dynamic>, timeStamp:Float, ?scale:Float):Void;
	function doTouchEnd(timeStamp:Float):Void;
}
