typedef Item = {
	var src : String;
	var w : Float;
	var h : Float;
	@:optional
	var loadError : Bool;
	@:optional
	var vGap : { var top : Float; var bottom : Float; };
	@:optional
	var fitRatio : Float;
	@:optional
	var initialZoomLevel : Float;
	@:optional
	var bounds : Dynamic;
	@:optional
	var initialPosition : Dynamic;
};
typedef Options = {
	@:optional
	var index : Float;
	@:optional
	var getThumbBoundsFn : Float -> { var x : Float; var y : Float; var w : Float; };
	@:optional
	var showAnimationDuration : Float;
	@:optional
	var hideAnimationDuration : Float;
	@:optional
	var showHideOpacity : Bool;
	@:optional
	var bgOpacity : Float;
	@:optional
	var spacing : Float;
	@:optional
	var allowNoPanText : Bool;
	@:optional
	var maxSpreadZoom : Float;
	@:optional
	var getDoubleTapZoom : Bool -> Item -> Float;
	@:optional
	var loop : Bool;
	@:optional
	var pinchToClose : Bool;
	@:optional
	var closeOnScroll : Bool;
	@:optional
	var closeOnVerticalDrag : Bool;
	@:optional
	var mouseUsed : Bool;
	@:optional
	var escKey : Bool;
	@:optional
	var arrowKeys : Bool;
	@:optional
	var history : Bool;
	@:optional
	var galleryUID : Float;
	@:optional
	var errorMsg : String;
	@:optional
	var preload : Array<Float>;
	@:optional
	var mainClass : String;
	@:optional
	var getNumItemsFn : Void -> Float;
	@:optional
	var focus : Bool;
	@:optional
	var isClickableElement : HTMLElement -> Bool;
};
typedef UIFramework = { };
typedef UI<T:(Options)> = {
	var init : Void -> Void;
};
extern class PhotoSwipe<T:(PhotoSwipe.Options)> {
	function new(pswpElement:HTMLElement, uiConstructor:haxe.extern.EitherType<Dynamic, Bool>, items:Array<PhotoSwipe.Item>, options:T):Void;
	var currItem : PhotoSwipe.Item;
	var items : Array<PhotoSwipe.Item>;
	var viewportSize : { var x : Float; var y : Float; };
	var framework : PhotoSwipe.UIFramework;
	var ui : PhotoSwipe.UI<T>;
	var bg : HTMLElement;
	var container : HTMLElement;
	var options : T;
	function getCurrentIndex():Float;
	function getZoomLevel():Float;
	function isDragging():Bool;
	function isZooming():Bool;
	function isMainScrollAnimating():Bool;
	function init():Void;
	function goTo(index:Float):Void;
	function next():Void;
	function prev():Void;
	function updateSize(force:Bool):Void;
	function close():Void;
	function destroy():Void;
	function zoomTo(destZoomLevel:Float, centerPoint:{ var x : Float; var y : Float; }, speed:Float, ?easingFn:Float -> Float, ?updateFn:Float -> Void):Void;
	function applyZoomPan(zoomLevel:Float, panX:Float, panY:Float):Void;
	function invalidateCurrItems():Void;
	@:overload(function(eventName:BeforeChange, callback:Void -> Void):Void { })
	@:overload(function(eventName:AfterChange, callback:Void -> Void):Void { })
	@:overload(function(eventName:ImageLoadComplete, callback:Float -> PhotoSwipe.Item -> Void):Void { })
	@:overload(function(eventName:Resize, callback:Void -> Void):Void { })
	@:overload(function(eventName:GettingData, callback:Float -> PhotoSwipe.Item -> Void):Void { })
	@:overload(function(eventName:MouseUsed, callback:Void -> Void):Void { })
	@:overload(function(eventName:InitialZoomIn, callback:Void -> Void):Void { })
	@:overload(function(eventName:InitialZoomInEnd, callback:Void -> Void):Void { })
	@:overload(function(eventName:InitialZoomOut, callback:Void -> Void):Void { })
	@:overload(function(eventName:InitialZoomOutEnd, callback:Void -> Void):Void { })
	@:overload(function(eventName:ParseVerticalMargin, callback:PhotoSwipe.Item -> Void):Void { })
	@:overload(function(eventName:Close, callback:Void -> Void):Void { })
	@:overload(function(eventName:UnbindEvents, callback:Void -> Void):Void { })
	@:overload(function(eventName:Destroy, callback:Void -> Void):Void { })
	@:overload(function(eventName:PreventDragEvent, callback:MouseEvent -> Bool -> { var prevent : Bool; } -> Void):Void { })
	function listen(eventName:String, callback:haxe.extern.Rest<Dynamic> -> Void):Void;
	function shout(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
}
extern class PhotoSwipeUI_Default {
	function new(pswp:PhotoSwipe<PhotoSwipeUI_Default.Options>, framework:PhotoSwipe.UIFramework):Void;
	function init():Void;
	function update():Void;
}
