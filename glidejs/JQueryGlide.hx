typedef IGlideOptions = {
	@:optional
	var autoplay : Dynamic;
	@:optional
	var hoverpause : Bool;
	@:optional
	var circular : Bool;
	@:optional
	var animationDuration : Float;
	@:optional
	var animationTimingFunc : String;
	@:optional
	var arrows : Dynamic;
	@:optional
	var arrowsWrapperClass : String;
	@:optional
	var arrowMainClass : String;
	@:optional
	var arrowRightClass : String;
	@:optional
	var arrowRightText : String;
	@:optional
	var arrowLeftClass : String;
	@:optional
	var arrowLeftText : String;
	@:optional
	var navigation : Dynamic;
	@:optional
	var navigationCenter : Bool;
	@:optional
	var navigationClass : String;
	@:optional
	var navigationItemClass : String;
	@:optional
	var navigationCurrentItemClass : String;
	@:optional
	var keyboard : Bool;
	@:optional
	var touchDistance : Dynamic;
	@:optional
	var beforeInit : haxe.Constraints.Function;
	@:optional
	var afterInit : haxe.Constraints.Function;
	@:optional
	var beforeTransition : haxe.Constraints.Function;
	@:optional
	var afterTransition : haxe.Constraints.Function;
};
typedef IGlideApi = {
	function current():Float;
	function reinit():Void;
	function destroy():Void;
	function play():Void;
	function pause():Void;
	function next(callback:haxe.Constraints.Function):Void;
	function prev(callback:haxe.Constraints.Function):Void;
	function jump(distance:Float, callback:haxe.Constraints.Function):Void;
	function nav(target:String):Void;
	function arrows(target:String):Void;
};
