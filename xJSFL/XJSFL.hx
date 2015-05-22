typedef _xjsfl = {
	function init(_this:Dynamic):Void;
	var uri : String;
};
extern class _File {
	function new(path:String):Void;
	function copy(path:String):_File;
	function write(data:String):_File;
	var contents : String;
}
extern class _Folder {
	function new(path:String):Void;
	var contents : Array<_File>;
}
extern class _Context {
	static function create():_Context;
	static function from(frame:FlashFrame):_Context;
	var layer : FlashLayer;
	var frame : FlashFrame;
	var keyframes : Array<FlashFrame>;
	var elements : Array<FlashElement>;
	function setLayer(index:Float):Dynamic;
	function update():Dynamic;
	function goto():Dynamic;
}
typedef GenericCollection<T> = {
	var elements : Array<T>;
	function rename(pattern:String):GenericCollection<T>;
	function update():GenericCollection<T>;
	function select():GenericCollection<T>;
	function toGrid(x:Float, y:Float):GenericCollection<T>;
	function randomize(info:Dynamic):GenericCollection<T>;
	function each(callback:T -> ?Float -> ?Array<T> -> Void):Dynamic;
};
typedef ElementCollection = {
	>GenericCollection<FlashElement>,
};
typedef ItemCollection = {
	>GenericCollection<FlashItem>,
};
extern class _URI {
	function new(path:String):Void;
	var uri : String;
	var folder : String;
	var name : String;
	var extension : String;
	var path : String;
	var type : String;
	function toURI(string:String):String;
}
extern class XJSFLTopLevel {
	static var xjsfl : _xjsfl;
	static var $dom : FlashDocument;
	static var $timeline : FlashTimeline;
	static var $library : FlashLibrary;
	static var $selection : Array<FlashElement>;
	static function trace(args:haxe.extern.Rest<Dynamic>):Void;
	static function clear():Void;
	static function format(format:String, params:haxe.extern.Rest<Dynamic>):Void;
	static function inspect(item:Dynamic):Void;
	static function list(item:Dynamic):Void;
	static function debug(item:Dynamic):Void;
	static function include(className:String):Void;
	static function require(className:String):Void;
	static function load(filePath:String):String;
	static function save(filePath:String, data:String):Void;
	static function $(selector:String):ElementCollection;
	static function $$(selector:String):ItemCollection;
}
