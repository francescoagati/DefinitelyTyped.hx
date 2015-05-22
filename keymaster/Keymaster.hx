typedef KeymasterEvent = {
	var key : String;
	var method : KeyHandler;
	var mods : Array<Float>;
	var scope : String;
	var shortcut : String;
};
typedef KeyHandler = { };
typedef FilterEvent = {
	@:optional
	var target : { @:optional
	var tagName : String; };
	@:optional
	var srcElement : { @:optional
	var tagName : String; };
};
typedef Keymaster = {
	var shift : Bool;
	var alt : Bool;
	var option : Bool;
	var ctrl : Bool;
	var control : Bool;
	var command : Bool;
	function setScope(scopeName:String):Void;
	function getScope():String;
	function deleteScope(scopeName:String):Void;
	function noConflict():Void;
	@:overload(function(key:String, scopeName:String):Void { })
	function unbind(key:String):Void;
	function isPressed(keyCode:Float):Bool;
	function getPressedKeyCodes():Array<Float>;
	function filter(event:FilterEvent):Void;
};
extern class KeymasterTopLevel {
	static var key : Keymaster;
}
extern class KeymasterTopLevel {
	static var key : Keymaster;
}
