extern class AlwaysShowToolbar extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(e:Dynamic):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class FontChoice extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
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
