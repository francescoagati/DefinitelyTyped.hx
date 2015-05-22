typedef EditorOptions<T:(Slick.SlickData)> = {
	var column : Column<T>;
	var container : HTMLElement;
	var grid : Grid<T>;
};
extern class Editor<T:(Slick.SlickData)> {
	function new(args:EditorOptions<T>):Void;
	function init():Void;
	function destroy():Void;
	function focus():Void;
	function loadValue(item:Dynamic):Void;
	function applyValue(item:Dynamic, state:String):Void;
	function isValueChanged():Bool;
	function serializeValue():Dynamic;
	function validate():ValidateResults;
}
extern class Text<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function getValue():String;
	function setValue(val:String):Void;
	function serializeValue():String;
}
extern class Integer<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function serializeValue():Float;
}
extern class Date<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function show():Void;
	function hide():Void;
	function position(position:Position):Void;
	function serializeValue():String;
}
extern class YesNoSelect<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function serializeValue():Bool;
}
extern class Checkbox<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function serializeValue():Bool;
}
extern class PercentComplete<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function serializeValue():Float;
}
extern class LongText<T:(Slick.SlickData)> extends Editor<T> {
	function new(args:EditorOptions<T>):Void;
	function handleKeyDown(e:DOMEvent):Void;
	function save():Void;
	function cancel():Void;
	function hide():Void;
	function show():Void;
	function position(position:Position):Void;
	function serializeValue():String;
}
typedef Formatter<T:(Slick.SlickData)> = { };
