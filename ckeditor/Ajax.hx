extern class AjaxTopLevel {
	static function load(url:String, ?callback:haxe.Constraints.Function):String;
	static function loadXml(url:String, ?callback:haxe.Constraints.Function):Xml;
}
typedef Xml = { };
extern class Command extends Event {
	var contextSensitive : Bool;
	var editorFocus : Bool;
	var modes : Dynamic;
	var previousState : Float;
	var state : Float;
	var uiItems : Array<Dynamic>;
	function new(editor:Editor, commandDefinition:CommandDefinition):Void;
	function checkAllowed(noCache:Bool):Bool;
	function disable():Void;
	function enable():Void;
	function exec(?data:Dynamic):Bool;
	function refresh(editor:Editor, path:dom.ElementPath):Void;
	function setState(newState:Float):Bool;
	function toggleState():Void;
}
typedef FocusManager = { };
typedef KeystrokeHandler = { };
typedef ToolbarGroups = {
	@:optional
	var name : String;
	@:optional
	var groups : Array<String>;
};
typedef Config = {
	@:optional
	var startupMode : String;
	@:optional
	var removeButtons : String;
	@:optional
	var removePlugins : String;
	@:optional
	var toolbar : Dynamic;
	@:optional
	var toolbarGroups : Array<ToolbarGroups>;
	@:optional
	var skin : String;
	@:optional
	var language : String;
	@:optional
	var plugins : String;
	@:optional
	var font_names : String;
	@:optional
	var font_defaultLabel : String;
	@:optional
	var fontSize_sizes : String;
	@:optional
	var fontSize_defaultLabel : String;
	@:optional
	var colorButton_enableMore : Bool;
	@:optional
	var colorButton_colors : String;
	@:optional
	var startupFocus : Bool;
	@:optional
	var on : Dynamic;
};
typedef Feature = { };
typedef Style = { };
typedef Editable = { };
extern class Menu {
	function new():Void;
	function add(item:Dynamic):Void;
	function addListener(listenerFn:dom.Element -> dom.Selection -> dom.ElementPath -> Dynamic):Void;
	function hide(?returnFocus:Bool):Void;
	function removeAll():Void;
	function show(offsetParent:dom.Element, ?corner:Float, ?offsetX:Float, ?offsetY:Float):Void;
}
