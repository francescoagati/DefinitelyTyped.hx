typedef HTTPRequest = {
	@:optional
	var content : String;
	@:optional
	var data : Dynamic;
	@:optional
	var query : String;
	@:optional
	var params : { };
	@:optional
	var auth : String;
	@:optional
	var headers : { };
	@:optional
	var timeout : Float;
	@:optional
	var followRedirects : Bool;
};
typedef HTTPResponse = {
	@:optional
	var statusCode : Float;
	@:optional
	var headers : { };
	@:optional
	var content : String;
	@:optional
	var data : Dynamic;
};
extern class HTTPTopLevel {
	static function call(method:String, url:String, ?options:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function del(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function get(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function post(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function put(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function call(method:String, url:String, ?options:{ @:optional
	var content : String; @:optional
	var data : Dynamic; @:optional
	var query : String; @:optional
	var params : Dynamic; @:optional
	var auth : String; @:optional
	var headers : Dynamic; @:optional
	var timeout : Float; @:optional
	var followRedirects : Bool; @:optional
	var npmRequestOptions : Dynamic; }, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function del(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function get(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function post(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function put(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
}
extern class HTTPTopLevel {
	static function call(method:String, url:String, ?options:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function del(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function get(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function post(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function put(url:String, ?callOptions:HTTP.HTTPRequest, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function call(method:String, url:String, ?options:{ @:optional
	var content : String; @:optional
	var data : Dynamic; @:optional
	var query : String; @:optional
	var params : Dynamic; @:optional
	var auth : String; @:optional
	var headers : Dynamic; @:optional
	var timeout : Float; @:optional
	var followRedirects : Bool; @:optional
	var npmRequestOptions : Dynamic; }, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function del(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function get(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function post(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
	static function put(url:String, ?callOptions:Dynamic, ?asyncCallback:haxe.Constraints.Function):HTTP.HTTPResponse;
}
