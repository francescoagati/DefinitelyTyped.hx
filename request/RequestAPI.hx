typedef Options = {
	@:optional
	var url : String;
	@:optional
	var uri : String;
	@:optional
	var callback : Dynamic -> Dynamic -> Dynamic -> Void;
	@:optional
	var jar : Dynamic;
	@:optional
	var form : Dynamic;
	@:optional
	var oauth : OAuthOptions;
	@:optional
	var aws : AWSOptions;
	@:optional
	var hawk : HawkOptions;
	@:optional
	var qs : Dynamic;
	@:optional
	var json : Dynamic;
	@:optional
	var multipart : Array<RequestPart>;
	@:optional
	var agentOptions : Dynamic;
	@:optional
	var agentClass : Dynamic;
	@:optional
	var forever : Dynamic;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var method : String;
	@:optional
	var headers : Headers;
	@:optional
	var body : Dynamic;
	@:optional
	var followRedirect : Bool;
	@:optional
	var followAllRedirects : Bool;
	@:optional
	var maxRedirects : Float;
	@:optional
	var encoding : String;
	@:optional
	var pool : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var proxy : Dynamic;
	@:optional
	var strictSSL : Bool;
};
typedef RequestPart = {
	@:optional
	var headers : Headers;
	var body : Dynamic;
};
typedef Request = {
	>stream.Stream,
	var readable : Bool;
	var writable : Bool;
	function getAgent():http.Agent;
	function pipeDest(dest:Dynamic):Void;
	function setHeader(name:String, value:String, ?clobber:Bool):Request;
	function setHeaders(headers:Headers):Request;
	function qs(q:Dynamic, ?clobber:Bool):Request;
	@:overload(function(form:Dynamic):Request { })
	function form():FormData.FormData;
	function multipart(multipart:Array<RequestPart>):Request;
	function json(val:Dynamic):Request;
	function aws(opts:AWSOptions, ?now:Bool):Request;
	function oauth(oauth:OAuthOptions):Request;
	function jar(jar:CookieJar):Request;
	function on(event:String, listener:haxe.Constraints.Function):Request;
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?fd:String):Bool { })
	function write(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool;
	@:overload(function(chunk:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(chunk:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(chunk:String, encoding:String, ?cb:haxe.Constraints.Function):Void { })
	function end():Void;
	function pause():Void;
	function resume():Void;
	function abort():Void;
	function destroy():Void;
	function toJSON():String;
};
typedef Headers = { };
typedef AuthOptions = {
	@:optional
	var user : String;
	@:optional
	var username : String;
	@:optional
	var pass : String;
	@:optional
	var password : String;
	@:optional
	var sendImmediately : Bool;
};
typedef OAuthOptions = {
	@:optional
	var callback : String;
	@:optional
	var consumer_key : String;
	@:optional
	var consumer_secret : String;
	@:optional
	var token : String;
	@:optional
	var token_secret : String;
	@:optional
	var verifier : String;
};
typedef HawkOptions = {
	var credentials : Dynamic;
};
typedef AWSOptions = {
	var secret : String;
	@:optional
	var bucket : String;
};
typedef CookieJar = {
	function add(cookie:Cookie):Void;
	function get(req:Request):Cookie;
	function cookieString(req:Request):String;
};
typedef CookieValue = {
	var name : String;
	var value : Dynamic;
	var httpOnly : Bool;
};
typedef Cookie = {
	>Array<CookieValue>,
	function new(name:String, req:Request):Void;
	var str : String;
	var expires : Date;
	var path : String;
	function toString():String;
};
extern class RequestAPITopLevel {
	static function defaults(options:Options):Dynamic;
	static function request(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function request(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function request(?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function get(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function get(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function get(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function post(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function post(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function post(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function put(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function put(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function put(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function head(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function head(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function head(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function patch(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function patch(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function patch(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function del(uri:String, ?options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function del(uri:String, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function del(options:Options, ?callback:Dynamic -> Dynamic -> Dynamic -> Void):Request;
	static function forever(agentOptions:Dynamic, optionsArg:Dynamic):Request;
	static function jar():CookieJar;
	static function cookie(str:String):Cookie;
	static var initParams : Dynamic;
}
