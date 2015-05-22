typedef ExtendedKeyboardEvent = {
	>KeyboardEvent,
	var returnValue : Bool;
};
typedef MousetrapStatic = {
	var stopCallback : ExtendedKeyboardEvent -> Element -> String -> Bool;
	@:overload(function(keyArray:Array<String>, callback:ExtendedKeyboardEvent -> String -> Dynamic, ?action:String):Void { })
	function bind(keys:String, callback:ExtendedKeyboardEvent -> String -> Dynamic, ?action:String):Void;
	@:overload(function(keyArray:Array<String>, ?action:String):Void { })
	function unbind(keys:String, ?action:String):Void;
	function trigger(keys:String, ?action:String):Void;
	function reset():Void;
};
extern class MousetrapTopLevel {
	static var Mousetrap : MousetrapStatic;
}
extern class MousetrapTopLevel {
	static var Mousetrap : MousetrapStatic;
}
