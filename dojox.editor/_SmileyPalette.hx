extern class Emoticon {
	function new(id:String):Void;
	var ascii : Dynamic;
	function fillCell(cell:HTMLElement, blankGif:String):Void;
	function fromAscii(str:String):Void;
	function getValue():Dynamic;
	function imgHtml(clazz:String):Dynamic;
}
extern class FindReplace extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:Dynamic):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function toggle():Void;
	function updateState():Void;
}
