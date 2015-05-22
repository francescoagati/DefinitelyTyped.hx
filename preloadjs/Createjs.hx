extern class AbstractLoader extends EventDispatcher {
	static var BINARY : String;
	var canceled : Bool;
	static var CSS : String;
	var GET : String;
	static var IMAGE : String;
	static var JAVASCRIPT : String;
	static var JSON : String;
	static var JSONP : String;
	var loaded : Bool;
	static var MANIFEST : String;
	var POST : String;
	var progress : Float;
	var resultFormatter : Void -> Dynamic;
	static var SOUND : String;
	static var SPRITESHEET : String;
	static var SVG : String;
	static var TEXT : String;
	var type : String;
	static var VIDEO : String;
	static var XML : String;
	function cancel():Void;
	function destroy():Void;
	function getItem(?value:String):Dynamic;
	function getLoadedItems():Array<Dynamic>;
	function getResult(?value:Dynamic, ?rawResult:Bool):Dynamic;
	function getTag():Dynamic;
	function load():Void;
	function setTag(tag:Dynamic):Void;
	function toString():String;
}
extern class AbstractMediaLoader {
	function new(loadItem:Dynamic, preferXHR:Bool, type:String):Void;
}
extern class AbstractRequest {
	function new(item:LoadItem):Void;
	function cancel():Void;
	function destroy():Void;
	function load():Void;
}
extern class BinaryLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class CSSLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	function canLoadItem(item:Dynamic):Bool;
}
