typedef BrowserifyObject = {
	>NodeJS.EventEmitter,
	function add(file:String):BrowserifyObject;
	function require(file:String, ?opts:{ var expose : String; }):BrowserifyObject;
	function bundle(?opts:{ @:optional
	var insertGlobals : Bool; @:optional
	var detectGlobals : Bool; @:optional
	var debug : Bool; @:optional
	var standalone : String; @:optional
	var insertGlobalVars : Dynamic; }, ?cb:Dynamic -> Dynamic -> Void):NodeJS.ReadableStream;
	function external(file:String):BrowserifyObject;
	function ignore(file:String):BrowserifyObject;
	@:overload(function(tr:haxe.Constraints.Function):BrowserifyObject { })
	function transform(tr:String):BrowserifyObject;
	@:overload(function(plugin:haxe.Constraints.Function, ?opts:Dynamic):BrowserifyObject { })
	function plugin(plugin:String, ?opts:Dynamic):BrowserifyObject;
};
typedef Browserify = { };
extern class BrowserifyTopLevel {
	static var browserify : Browserify;
}
extern class BrowserifyTopLevel {
	static var browserify : Browserify;
}
