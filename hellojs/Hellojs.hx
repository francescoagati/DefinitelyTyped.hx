typedef HelloJSLoginOptions = {
	@:optional
	var redirect_uri : String;
	@:optional
	var display : String;
	@:optional
	var scope : String;
	@:optional
	var response_type : String;
	@:optional
	var force : Bool;
	@:optional
	var oauth_proxy : String;
	@:optional
	var timeout : Float;
	@:optional
	var default_service : String;
};
typedef HelloJSLogoutOptions = {
	@:optional
	var force : Bool;
};
typedef HelloJSEvent = {
	function on(event:String, callback:HelloJSEventArgument -> Void):HelloJSStatic;
	function off(event:String, callback:HelloJSEventArgument -> Void):HelloJSStatic;
	function findEvents(event:String, callback:String -> Float -> Void):Void;
	function emit(event:String, data:Dynamic):HelloJSStatic;
	function emitAfter():HelloJSStatic;
	function success(callback:?Dynamic -> Void):HelloJSStatic;
	function error(callback:?Dynamic -> Void):HelloJSStatic;
	function complete(callback:?Dynamic -> Void):HelloJSStatic;
};
typedef HelloJSEventArgument = {
	var network : String;
	@:optional
	var authResponse : Dynamic;
};
typedef HelloJSStatic = {
	>HelloJSEvent,
	@:overload(function(servicesDef:{ }):Void { })
	function init(serviceAppIds:{ }, ?options:HelloJSLoginOptions):Void;
	function login(network:String, ?options:HelloJSLoginOptions, ?callback:Void -> Void):Void;
	function logout(network:String, ?options:HelloJSLogoutOptions, ?callback:Void -> Void):Void;
	function getAuthResponse(network:String):Dynamic;
	function service(network:String):HelloJSServiceDef;
	var settings : HelloJSLoginOptions;
};
typedef HelloJSStaticNamed = {
	function login(?option:HelloJSLoginOptions, ?callback:Void -> Void):Void;
	function logout(?callback:Void -> Void):Void;
	function getAuthResponse():Dynamic;
	function api(?path:String, ?method:String, ?data:Dynamic, ?callback:?Dynamic -> Void):HelloJSStatic;
};
typedef HelloJSOAuthDef = {
	var version : Float;
	var auth : String;
	var request : String;
	var token : String;
};
typedef HelloJSServiceDef = {
	var name : String;
	var oauth : HelloJSOAuthDef;
	@:optional
	var scope : { };
	@:optional
	var scope_delim : String;
	@:optional
	var autorefresh : Bool;
	@:optional
	var base : String;
	@:optional
	var root : String;
	@:optional
	var get : { };
	@:optional
	var post : { };
	@:optional
	var del : { };
	@:optional
	var put : { };
	@:optional
	var wrap : { };
	@:optional
	var xhr : Dynamic -> Void;
	@:optional
	var jsonp : Dynamic -> Void;
	@:optional
	var form : Dynamic -> Void;
	@:optional
	var api : haxe.extern.Rest<Dynamic> -> Void;
};
extern class HellojsTopLevel {
	static var hello : HelloJSStatic;
}
