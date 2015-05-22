extern class _Plugin extends dijit.Destroyable {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var registry : Dynamic;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
