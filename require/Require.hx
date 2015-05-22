typedef RequireError = {
	>Error,
	var requireType : String;
	var requireModules : Array<String>;
	var originalError : Error;
};
typedef RequireShim = {
	@:optional
	var deps : Array<String>;
	@:optional
	var exports : String;
	@:optional
	var init : haxe.extern.Rest<Dynamic> -> Dynamic;
};
typedef RequireConfig = {
	@:optional
	var baseUrl : String;
	@:optional
	var paths : { };
	@:optional
	var shim : { };
	@:optional
	var map : { };
	@:optional
	var config : { };
	@:optional
	var packages : { };
	@:optional
	var waitSeconds : Float;
	@:optional
	var context : String;
	@:optional
	var deps : Array<String>;
	@:optional
	var callback : haxe.extern.Rest<Dynamic> -> Void;
	@:optional
	var enforceDefine : Bool;
	@:optional
	var xhtml : Bool;
	@:optional
	var urlArgs : String;
	@:optional
	var scriptType : String;
};
typedef RequireModule = {
	function config():{ };
};
typedef RequireMap = {
	var prefix : String;
	var name : String;
	var parentMap : RequireMap;
	var url : String;
	var originalName : String;
	var fullName : String;
};
typedef Require = {
	function config(config:RequireConfig):Require;
	function toUrl(module:String):String;
	function defined(module:String):Bool;
	function specified(module:String):Bool;
	function onError(err:RequireError, ?errback:RequireError -> Void):Void;
	function undef(module:String):Void;
	function onResourceLoad(context:Dynamic, map:RequireMap, depArray:Array<RequireMap>):Void;
};
typedef RequireDefine = {
	var amd : Dynamic;
};
extern class RequireTopLevel {
	static var requirejs : Require;
	static var require : Require;
	static var define : RequireDefine;
}
