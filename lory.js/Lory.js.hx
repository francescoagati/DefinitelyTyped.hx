typedef LoryStatic = {
	function prev():Void;
	function next():Void;
	function slideTo(index:Float):Void;
	function setup():Void;
	function reset():Void;
};
typedef LoryOptions = {
	@:optional
	var slidesToScroll : Float;
	@:optional
	var slideSpeed : Float;
	@:optional
	var rewindSpeed : Float;
	@:optional
	var snapBackSpeed : Float;
	@:optional
	var ease : String;
	@:optional
	var rewind : Bool;
	@:optional
	var infinite : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var beforeInit : Void -> T;
	@:optional
	var afterInit : Void -> T;
	@:optional
	var beforePrev : Void -> T;
	@:optional
	var beforeNext : Void -> T;
	@:optional
	var beforeTouch : Void -> T;
	@:optional
	var beforeResize : Void -> T;
};
extern class Lory.jsTopLevel {
	static var lory : LoryStatic;
}
