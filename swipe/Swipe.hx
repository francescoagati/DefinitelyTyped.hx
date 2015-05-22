typedef SwipeOptions = {
	@:optional
	var startSlide : Float;
	@:optional
	var speed : Float;
	@:optional
	var auto : Float;
	@:optional
	var continuous : Bool;
	@:optional
	var disableScroll : Bool;
	@:optional
	var stopPropagation : Bool;
	@:optional
	var callback : Float -> HTMLElement -> Void;
	@:optional
	var transitionEnd : Float -> HTMLElement -> Void;
};
extern class Swipe {
	function new(container:HTMLElement, ?options:SwipeOptions):Void;
	function prev():Void;
	function next():Void;
	function getPos():Float;
	function getNumSlides():Float;
	function kill():Void;
	function attachEvents():Void;
	function setup():Void;
	function slide(index:Float, duration:Float):Void;
}
