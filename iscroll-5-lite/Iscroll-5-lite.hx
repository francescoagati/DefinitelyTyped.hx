typedef IScrollOptions = {
	@:optional
	var scrollX : Bool;
	@:optional
	var scrollY : Bool;
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
};
extern class IScroll {
	@:overload(function(element:HTMLElement, ?options:IScrollOptions):Void { })
	function new(element:String, ?options:IScrollOptions):Void;
	function destroy():Void;
	function refresh():Void;
	function scrollTo(x:Float, y:Float, ?time:Float, ?relative:Bool):Void;
	@:overload(function(element:HTMLElement, ?time:Float):Void { })
	function scrollToElement(element:String, ?time:Float):Void;
	function disable():Void;
	function enable():Void;
	function stop():Void;
	var on : String -> Void -> Void -> Void;
}
