typedef TetherStatic = {
	function new(options:ITetherOptions):Tether;
};
typedef ITetherOptions = {
	@:optional
	var attachment : String;
	@:optional
	var classes : { };
	@:optional
	var classPrefix : String;
	@:optional
	var constraints : Array<ITetherConstraint>;
	@:optional
	var element : haxe.extern.EitherType<HTMLElement, haxe.extern.EitherType<String, Dynamic>>;
	@:optional
	var enabled : Bool;
	@:optional
	var offset : String;
	@:optional
	var optimizations : Dynamic;
	@:optional
	var target : haxe.extern.EitherType<HTMLElement, haxe.extern.EitherType<String, Dynamic>>;
	@:optional
	var targetAttachment : String;
	@:optional
	var targetOffset : String;
	@:optional
	var targetModifier : String;
};
typedef ITetherConstraint = {
	@:optional
	var attachment : String;
	@:optional
	var outOfBoundsClass : String;
	@:optional
	var pin : haxe.extern.EitherType<Bool, Array<String>>;
	@:optional
	var pinnedClass : String;
	@:optional
	var to : haxe.extern.EitherType<String, haxe.extern.EitherType<HTMLElement, Array<Float>>>;
};
typedef Tether = {
	function setOptions(options:ITetherOptions):Void;
	function disable():Void;
	function enable():Void;
	function destroy():Void;
	function position():Void;
};
extern class TetherTopLevel {
	static var Tether : tether.TetherStatic;
}
