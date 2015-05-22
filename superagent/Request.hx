typedef SuperAgentStatic = {
	>SuperAgent<SuperAgentRequest>,
	function agent():SuperAgent<SuperAgentRequest>;
};
typedef SuperAgent<Req:(Request<Dynamic>)> = {
	>stream.Stream,
	function get(url:String, ?callback:CallbackHandler):Req;
	function post(url:String, ?callback:CallbackHandler):Req;
	function put(url:String, ?callback:CallbackHandler):Req;
	function head(url:String, ?callback:CallbackHandler):Req;
	function del(url:String, ?callback:CallbackHandler):Req;
	function options(url:String, ?callback:CallbackHandler):Req;
	function trace(url:String, ?callback:CallbackHandler):Req;
	function copy(url:String, ?callback:CallbackHandler):Req;
	function lock(url:String, ?callback:CallbackHandler):Req;
	function mkcol(url:String, ?callback:CallbackHandler):Req;
	function move(url:String, ?callback:CallbackHandler):Req;
	function purge(url:String, ?callback:CallbackHandler):Req;
	function propfind(url:String, ?callback:CallbackHandler):Req;
	function proppatch(url:String, ?callback:CallbackHandler):Req;
	function unlock(url:String, ?callback:CallbackHandler):Req;
	function report(url:String, ?callback:CallbackHandler):Req;
	function mkactivity(url:String, ?callback:CallbackHandler):Req;
	function checkout(url:String, ?callback:CallbackHandler):Req;
	function merge(url:String, ?callback:CallbackHandler):Req;
	function notify(url:String, ?callback:CallbackHandler):Req;
	function subscribe(url:String, ?callback:CallbackHandler):Req;
	function unsubscribe(url:String, ?callback:CallbackHandler):Req;
	function patch(url:String, ?callback:CallbackHandler):Req;
	function search(url:String, ?callback:CallbackHandler):Req;
	function connect(url:String, ?callback:CallbackHandler):Req;
	function parse(fn:haxe.Constraints.Function):Req;
	function saveCookies(res:Response):Void;
	function attachCookies(req:Req):Void;
};
typedef Response = {
	>NodeJS.ReadableStream,
	var text : String;
	var body : Dynamic;
	var files : Dynamic;
	var header : Dynamic;
	var type : String;
	var charset : String;
	var status : Float;
	var statusType : Float;
	var info : Bool;
	var ok : Bool;
	var redirect : Bool;
	var clientError : Bool;
	var serverError : Bool;
	var error : Error;
	var accepted : Bool;
	var noContent : Bool;
	var badRequest : Bool;
	var unauthorized : Bool;
	var notAcceptable : Bool;
	var notFound : Bool;
	var forbidden : Bool;
	function get(header:String):String;
};
typedef Request<Req:(Request<Dynamic>)> = {
	function abort():Void;
	function accept(type:String):Req;
	function attach(field:String, file:String, ?filename:String):Req;
	function auth(user:String, name:String):Req;
	function buffer(val:Bool):Req;
	function clearTimeout():Req;
	function end(?callback:CallbackHandler):Req;
	function field(name:String, val:String):Req;
	function get(field:String):String;
	@:overload(function(name:Error, handler:Dynamic -> Void):Req { })
	function on(name:String, handler:haxe.Constraints.Function):Req;
	function part():Req;
	function pipe(stream:NodeJS.WritableStream, ?options:Dynamic):stream.Writable;
	function query(val:Dynamic):Req;
	function redirects(n:Float):Req;
	@:overload(function(data:Dynamic):Req { })
	function send(data:String):Req;
	@:overload(function(field:Dynamic):Req { })
	function set(field:String, val:String):Req;
	function timeout(ms:Float):Req;
	function type(val:String):Req;
	function withCredentials():Req;
	@:overload(function(data:Buffer, ?encoding:String):Req { })
	function write(data:String, ?encoding:String):Req;
};
typedef SuperAgentRequest = {
	>Request<Request<Request<Request<Dynamic>>>>,
};
