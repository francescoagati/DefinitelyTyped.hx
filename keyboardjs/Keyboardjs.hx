typedef KeyboardJSSubBinding = {
	function clear():Void;
};
typedef KeyboardJSBinding = {
	function clear():Void;
	function on(eventName:String, ?callbacks:Dynamic):KeyboardJSSubBinding;
};
typedef KeyboardJSLocale = {
	var map : Dynamic;
	var macros : Array<Dynamic>;
};
typedef KeyboardJSStatic = {
	function enable():Void;
	function disable():Void;
	function activeKeys():Array<String>;
	function on(keyCombo:String, ?onDownCallback:Event -> Array<String> -> String -> Void, ?onUpCallback:Event -> Array<String> -> String -> Void):KeyboardJSBinding;
	var clear : { function key(keyName:String):Void; };
	var locale : { function register(localeName:String, localeDefinition:KeyboardJSLocale):Void; };
	var macro : { function remove(keyCombo:String):Void; };
	var key : { function name(keyCode:Float):Array<String>; function code(keyName:String):Dynamic; };
	var combo : { function active(keyCombo:String):Bool; function parse(keyCombo:Dynamic):Array<Dynamic>; function stringify(keyComboArray:Dynamic):String; };
};
extern class KeyboardjsTopLevel {
	static var KeyboardJS : KeyboardJSStatic;
}
