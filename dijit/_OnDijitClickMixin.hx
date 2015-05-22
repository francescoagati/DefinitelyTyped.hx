typedef A11yclick = {
	function click(node:Dynamic, listener:Dynamic):Void;
	function move(node:Dynamic, listener:Dynamic):Void;
	function press(node:Dynamic, listener:Dynamic):Void;
	function release(node:Dynamic, listener:Dynamic):Void;
};
extern class _PaletteMixin extends dijit._CssStateMixin {
	function new():Void;
	var active : Bool;
	var cellClass : String;
	var cssStateNodes : Dynamic;
	var defaultTimeout : Float;
	var dyeClass : Dynamic;
	var hovering : Bool;
	var tabIndex : String;
	var timeoutChangeRate : Float;
	var value : String;
	function focus():Void;
	function postCreate():Void;
	function onChange(value:String):Void;
}
