typedef IRoute = {
	var path : String;
	var stack : Dynamic;
	function all(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function get(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function post(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function put(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function delete(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function patch(handler:haxe.extern.Rest<RequestHandler>):IRoute;
	function options(handler:haxe.extern.Rest<RequestHandler>):IRoute;
};
typedef IRouterMatcher<T> = { };
typedef IRouter<T> = {
	>RequestHandler,
	@:overload(function(name:String, matcher:js.RegExp):T { })
	@:overload(function(name:String, mapper:Dynamic -> Dynamic):T { })
	@:overload(function(callback:String -> js.RegExp -> RequestParamHandler):T { })
	function param(name:String, handler:RequestParamHandler):T;
	var all : IRouterMatcher<T>;
	var get : IRouterMatcher<T>;
	var post : IRouterMatcher<T>;
	var put : IRouterMatcher<T>;
	var delete : IRouterMatcher<T>;
	var patch : IRouterMatcher<T>;
	var options : IRouterMatcher<T>;
	function route(path:String):IRoute;
	@:overload(function(handler:ErrorRequestHandler):T { })
	@:overload(function(path:String, handler:haxe.extern.Rest<RequestHandler>):T { })
	@:overload(function(path:String, handler:ErrorRequestHandler):T { })
	function use(handler:haxe.extern.Rest<RequestHandler>):T;
};
typedef Router = {
	>IRouter<Router>,
};
typedef CookieOptions = {
	@:optional
	var maxAge : Float;
	@:optional
	var signed : Bool;
	@:optional
	var expires : Date;
	@:optional
	var httpOnly : Bool;
	@:optional
	var path : String;
	@:optional
	var domain : String;
	@:optional
	var secure : Bool;
};
typedef Errback = { };
typedef Request = {
	>http.ServerRequest,
	>Express.Request,
	function get(name:String):String;
	function header(name:String):String;
	var headers : { };
	@:overload(function(type:Array<String>):String { })
	function accepts(type:String):String;
	function acceptsCharset(charset:String):Bool;
	function acceptsLanguage(lang:String):Bool;
	function range(size:Float):Array<Dynamic>;
	var accepted : Array<MediaType>;
	var acceptedLanguages : Array<Dynamic>;
	var acceptedCharsets : Array<Dynamic>;
	function param(name:String, ?defaultValue:Dynamic):String;
	function is(type:String):Bool;
	var protocol : String;
	var secure : Bool;
	var ip : String;
	var ips : Array<String>;
	var subdomains : Array<String>;
	var path : String;
	var host : String;
	var fresh : Bool;
	var stale : Bool;
	var xhr : Bool;
	var body : Dynamic;
	var cookies : Dynamic;
	var method : String;
	var params : Dynamic;
	var user : Dynamic;
	var authenticatedUser : Dynamic;
	var files : Dynamic;
	function clearCookie(name:String, ?options:Dynamic):Response;
	var query : Dynamic;
	var route : Dynamic;
	var signedCookies : Dynamic;
	var originalUrl : String;
	var url : String;
};
typedef MediaType = {
	var value : String;
	var quality : Float;
	var type : String;
	var subtype : String;
};
typedef Send = { };
typedef Response = {
	>http.ServerResponse,
	>Express.Response,
	function status(code:Float):Response;
	function sendStatus(code:Float):Response;
	function links(links:Dynamic):Response;
	var send : Send;
	var json : Send;
	var jsonp : Send;
	@:overload(function(path:String, options:Dynamic):Void { })
	@:overload(function(path:String, fn:Errback):Void { })
	@:overload(function(path:String, options:Dynamic, fn:Errback):Void { })
	function sendFile(path:String):Void;
	@:overload(function(path:String, options:Dynamic):Void { })
	@:overload(function(path:String, fn:Errback):Void { })
	@:overload(function(path:String, options:Dynamic, fn:Errback):Void { })
	function sendfile(path:String):Void;
	@:overload(function(path:String, filename:String):Void { })
	@:overload(function(path:String, fn:Errback):Void { })
	@:overload(function(path:String, filename:String, fn:Errback):Void { })
	function download(path:String):Void;
	function contentType(type:String):Response;
	function type(type:String):Response;
	function format(obj:Dynamic):Response;
	function attachment(?filename:String):Response;
	@:overload(function(field:String, ?value:String):Response { })
	function set(field:Dynamic):Response;
	@:overload(function(field:String, ?value:String):Response { })
	function header(field:Dynamic):Response;
	var headersSent : Bool;
	function get(field:String):String;
	function clearCookie(name:String, ?options:Dynamic):Response;
	@:overload(function(name:String, val:Dynamic, options:CookieOptions):Response { })
	@:overload(function(name:String, val:Dynamic):Response { })
	function cookie(name:String, val:String, options:CookieOptions):Response;
	function location(url:String):Response;
	@:overload(function(status:Float, url:String):Void { })
	@:overload(function(url:String, status:Float):Void { })
	function redirect(url:String):Void;
	@:overload(function(view:String, ?callback:Error -> String -> Void):Void { })
	function render(view:String, ?options:Dynamic, ?callback:Error -> String -> Void):Void;
	var locals : Dynamic;
	var charset : String;
};
typedef ErrorRequestHandler = { };
typedef RequestHandler = { };
typedef Handler = {
	>RequestHandler,
};
typedef RequestParamHandler = { };
typedef Application = {
	>IRouter<Application>,
	>Express.Application,
	function init():Void;
	function defaultConfiguration():Void;
	function engine(ext:String, fn:haxe.Constraints.Function):Application;
	function set(setting:String, val:Dynamic):Application;
	var get : { };
	function path():String;
	function enabled(setting:String):Bool;
	function disabled(setting:String):Bool;
	function enable(setting:String):Application;
	function disable(setting:String):Application;
	@:overload(function(env0:String, fn:haxe.Constraints.Function):Application { })
	@:overload(function(env0:String, env1:String, fn:haxe.Constraints.Function):Application { })
	@:overload(function(env0:String, env1:String, env2:String, fn:haxe.Constraints.Function):Application { })
	@:overload(function(env0:String, env1:String, env2:String, env3:String, fn:haxe.Constraints.Function):Application { })
	@:overload(function(env0:String, env1:String, env2:String, env3:String, env4:String, fn:haxe.Constraints.Function):Application { })
	function configure(fn:haxe.Constraints.Function):Application;
	@:overload(function(name:String, callback:Error -> String -> Void):Void { })
	function render(name:String, ?options:Dynamic, ?callback:Error -> String -> Void):Void;
	@:overload(function(port:Float, hostname:String, ?callback:haxe.Constraints.Function):http.Server { })
	@:overload(function(port:Float, ?callback:haxe.Constraints.Function):http.Server { })
	@:overload(function(path:String, ?callback:haxe.Constraints.Function):http.Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):http.Server { })
	function listen(port:Float, hostname:String, backlog:Float, ?callback:haxe.Constraints.Function):http.Server;
	function route(path:String):IRoute;
	var router : String;
	var settings : Dynamic;
	var resource : Dynamic;
	var map : Dynamic;
	var locals : Dynamic;
	var routes : Dynamic;
};
typedef Express = {
	>Application,
	var version : String;
	var mime : String;
	function createApplication():Application;
	function createServer():Application;
	var application : Dynamic;
	var request : Request;
	var response : Response;
};
extern class ETopLevel {
	static function Router(?options:Dynamic):Router;
	static function static(root:String, ?options:Dynamic):RequestHandler;
}
