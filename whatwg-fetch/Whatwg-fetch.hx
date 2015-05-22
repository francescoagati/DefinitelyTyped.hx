extern class Request {
	function new(input:haxe.extern.EitherType<String, Request>, ?init:RequestInit):Void;
	var method : String;
	var url : String;
	var headers : Headers;
	var context : RequestContext;
	var referrer : String;
	var mode : RequestMode;
	var credentials : RequestCredentials;
	var cache : RequestCache;
}
typedef RequestInit = {
	@:optional
	var method : String;
	@:optional
	var headers : haxe.extern.EitherType<HeaderInit, { }>;
	@:optional
	var body : BodyInit;
	@:optional
	var mode : RequestMode;
	@:optional
	var credentials : RequestCredentials;
	@:optional
	var cache : RequestCache;
};
@:enum abstract RequestContext(Int) {
	var audio = 0;
	var beacon = 1;
	var cspreport = 2;
	var download = 3;
	var embed = 4;
	var eventsource = 5;
	var favicon = 6;
	var fetch = 7;
	var font = 8;
	var form = 9;
	var frame = 10;
	var hyperlink = 11;
	var iframe = 12;
	var image = 13;
	var imageset = 14;
	var import = 15;
	var internal = 16;
	var location = 17;
	var manifest = 18;
	var object = 19;
	var ping = 20;
	var plugin = 21;
	var prefetch = 22;
	var script = 23;
	var serviceworker = 24;
	var sharedworker = 25;
	var subresource = 26;
	var style = 27;
	var track = 28;
	var video = 29;
	var worker = 30;
	var xmlhttprequest = 31;
	var xslt = 32;
}
@:enum abstract RequestMode(Int) {
	var same-origin = 0;
	var no-cors = 1;
	var cors = 2;
}
@:enum abstract RequestCredentials(Int) {
	var omit = 0;
	var same-origin = 1;
	var include = 2;
}
@:enum abstract RequestCache(Int) {
	var default = 0;
	var no-store = 1;
	var reload = 2;
	var no-cache = 3;
	var force-cache = 4;
	var only-if-cached = 5;
}
extern class Headers {
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function get(name:String):String;
	function getAll(name:String):Array<String>;
	function has(name:String):Bool;
	function set(name:String, value:String):Void;
}
extern class Body {
	var bodyUsed : Bool;
	function arrayBuffer():Promise<ArrayBuffer>;
	function blob():Promise<Blob>;
	function formData():Promise<FormData>;
	function json():Promise<Dynamic>;
	function text():Promise<String>;
}
extern class Response extends Body {
	function new(?body:BodyInit, ?init:ResponseInit):Void;
	function error():Response;
	function redirect(url:String, status:Float):Response;
	var type : ResponseType;
	var url : String;
	var status : Float;
	var ok : Bool;
	var statusText : String;
	var headers : Headers;
	function clone():Response;
}
@:enum abstract ResponseType(Int) {
	var basic = 0;
	var cors = 1;
	var default = 2;
	var error = 3;
	var opaque = 4;
}
extern class ResponseInit {
	var status : Float;
	var statusText : String;
	var headers : HeaderInit;
}
typedef Window = {
	function fetch(url:String, ?init:RequestInit):Promise<Response>;
};
