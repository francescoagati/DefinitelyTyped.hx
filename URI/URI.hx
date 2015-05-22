typedef URIOptions = {
	@:optional
	var protocol : String;
	@:optional
	var username : String;
	@:optional
	var password : String;
	@:optional
	var hostname : String;
	@:optional
	var port : String;
	@:optional
	var path : String;
	@:optional
	var query : String;
	@:optional
	var fragment : String;
};
extern class URI {
	@:overload(function(uri:String):Void { })
	@:overload(function(options:URIOptions):Void { })
	function new():Void;
	function clone():URI;
	@:overload(function(url:String):Void { })
	function href():String;
	function valueOf():String;
	@:overload(function(protocol:String):URI { })
	function scheme():String;
	@:overload(function(protocol:String):URI { })
	function protocol():String;
	@:overload(function(uname:String):URI { })
	function username():String;
	@:overload(function(pw:String):URI { })
	function password():String;
	@:overload(function(port:String):URI { })
	function port():String;
	@:overload(function(hostname:String):URI { })
	function hostname():String;
	@:overload(function(host:String):URI { })
	function host():String;
	@:overload(function(userinfo:String):URI { })
	function userinfo():String;
	@:overload(function(authority:String):URI { })
	function authority():String;
	@:overload(function(domain:Bool):String { })
	@:overload(function(domain:String):URI { })
	function domain():String;
	@:overload(function(subdomain:String):URI { })
	function subdomain():String;
	@:overload(function(tld:Bool):String { })
	@:overload(function(tld:String):URI { })
	function tld():String;
	@:overload(function(path:Bool):String { })
	@:overload(function(path:String):URI { })
	function path():String;
	@:overload(function(path:Bool):String { })
	@:overload(function(path:String):URI { })
	function pathname():String;
	@:overload(function(dir:Bool):String { })
	@:overload(function(dir:String):URI { })
	function directory():String;
	@:overload(function(file:Bool):String { })
	@:overload(function(file:String):URI { })
	function filename():String;
	@:overload(function(suffix:Bool):String { })
	@:overload(function(suffix:String):URI { })
	function suffix():String;
	@:overload(function(segments:Array<String>):String { })
	@:overload(function(position:Float):String { })
	@:overload(function(position:Float, level:String):String { })
	@:overload(function(level:String):String { })
	function segment():Array<String>;
	@:overload(function(qry:String):URI { })
	@:overload(function(qry:Bool):Dynamic { })
	@:overload(function(qry:Dynamic):URI { })
	function search():String;
	@:overload(function(qry:String):URI { })
	@:overload(function(qry:Bool):Dynamic { })
	@:overload(function(qry:Dynamic):URI { })
	function query():String;
	@:overload(function(hash:String):URI { })
	function hash():String;
	@:overload(function(fragment:String):URI { })
	function fragment():String;
	@:overload(function(resource:String):URI { })
	function resource():String;
	function is(qry:String):Bool;
	@:overload(function(qry:Dynamic):URI { })
	function addSearch(qry:String):URI;
	@:overload(function(qry:Dynamic):URI { })
	@:overload(function(data:Dynamic, prop:String, value:String):Dynamic { })
	@:overload(function(data:Dynamic, qryObj:Dynamic):Dynamic { })
	function addQuery(qry:String):URI;
	@:overload(function(qry:Dynamic):URI { })
	function removeSearch(qry:String):URI;
	@:overload(function(qry:Dynamic):URI { })
	@:overload(function(data:Dynamic, prop:String, value:String):Dynamic { })
	@:overload(function(data:Dynamic, props:Array<String>):Dynamic { })
	@:overload(function(data:Dynamic, props:Dynamic):Dynamic { })
	function removeQuery(qry:String):URI;
	function addFragment(fragment:String):URI;
	function fragmentPrefix(prefix:String):URI;
	function normalize():URI;
	function normalizeProtocol():URI;
	function normalizeHostname():URI;
	function normalizePort():URI;
	function normalizePathname():URI;
	function normalizePath():URI;
	function normalizeSearch():URI;
	function normalizeQuery():URI;
	function normalizeHash():URI;
	function normalizeFragment():URI;
	@:overload(function():Void { })
	function iso8859():URI;
	@:overload(function():Void { })
	function unicode():URI;
	function readable():String;
	function relativeTo(path:String):URI;
	function absoluteTo(path:String):URI;
	@:overload(function(url:String):Bool { })
	function equals():Bool;
	static function parse(url:String):{ var protocol : String; var username : String; var password : String; var hostname : String; var port : String; var path : String; var query : String; var fragment : String; };
	static function parseAuthority(url:String, parts:{ @:optional
	var username : String; @:optional
	var password : String; @:optional
	var hostname : String; @:optional
	var port : String; }):String;
	static function parseUserinfo(url:String, parts:{ @:optional
	var username : String; @:optional
	var password : String; }):String;
	static function parseHost(url:String, parts:{ @:optional
	var hostname : String; @:optional
	var port : String; }):String;
	static function parseQuery(url:String):Dynamic;
	static function build(parts:{ var protocol : String; var username : String; var password : String; var hostname : String; var port : String; var path : String; var query : String; var fragment : String; }):String;
	static function buildAuthority(parts:{ @:optional
	var username : String; @:optional
	var password : String; @:optional
	var hostname : String; @:optional
	var port : String; }):String;
	static function buildUserinfo(parts:{ @:optional
	var username : String; @:optional
	var password : String; }):String;
	static function buildHost(parts:{ @:optional
	var hostname : String; @:optional
	var port : String; }):String;
	@:overload(function(qry:Dynamic, duplicates:Bool):String { })
	static function buildQuery(qry:Dynamic):String;
	static function encode(str:String):String;
	static function decode(str:String):String;
	static function encodeReserved(str:String):String;
	static function encodeQuery(qry:String):String;
	static function decodeQuery(qry:String):String;
	static function commonPath(path1:String, path2:String):String;
	static function withinString(source:String, func:String -> String):String;
	static function expand(template:String, vals:Dynamic):URI;
}
typedef JQuery = {
	function uri():URI;
};
