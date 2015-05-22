typedef SAXOptions = {
	@:optional
	var trim : Bool;
	@:optional
	var normalize : Bool;
	@:optional
	var lowercase : Bool;
	@:optional
	var xmlns : Bool;
	@:optional
	var noscript : Bool;
	@:optional
	var position : Bool;
};
typedef Tag = {
	var name : String;
	var attributes : { };
	@:optional
	var ns : { };
	@:optional
	var prefix : String;
	@:optional
	var local : String;
	@:optional
	var uri : String;
};
extern class SAXParser {
	function new(strict:Bool, opt:SAXOptions):Void;
	function end():Void;
	function write(s:String):SAXParser;
	function resume():SAXParser;
	function close():SAXParser;
	function flush():Void;
	var line : Float;
	var column : Float;
	var error : Error;
	var position : Float;
	var startTagPosition : Float;
	var closed : Bool;
	var strict : Bool;
	var opt : SAXOptions;
	var tag : String;
	function onerror(e:Error):Void;
	function ontext(t:String):Void;
	function ondoctype(doctype:String):Void;
	function onprocessinginstruction(node:{ var name : String; var body : String; }):Void;
	function onopentag(tag:Tag):Void;
	function onclosetag(tagName:String):Void;
	function onattribute(attr:{ var name : String; var value : String; }):Void;
	function oncomment(comment:String):Void;
	function onopencdata():Void;
	function oncdata(cdata:String):Void;
	function onclosecdata():Void;
	function onopennamespace(ns:{ var prefix : String; var uri : String; }):Void;
	function onclosenamespace(ns:{ var prefix : String; var uri : String; }):Void;
	function onend():Void;
	function onready():Void;
	function onscript(script:String):Void;
}
extern class SAXStream extends stream.Duplex {
	function new(strict:Bool, opt:SAXOptions):Void;
	var _parser : SAXParser;
}
extern class SaxTopLevel {
	static var EVENTS : Array<String>;
	static function parser(strict:Bool, opt:SAXOptions):SAXParser;
	static function createStream(strict:Bool, opt:SAXOptions):SAXStream;
}
extern class SaxTopLevel {
	static var EVENTS : Array<String>;
	static function parser(strict:Bool, opt:SAXOptions):SAXParser;
	static function createStream(strict:Bool, opt:SAXOptions):SAXStream;
}
