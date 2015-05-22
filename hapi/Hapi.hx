typedef IDictionary<T> = { };
typedef IBoom = {
	>Error,
	var isBoom : Bool;
	var isServer : Bool;
	var message : String;
	var output : { var statusCode : Float; var headers : IDictionary<String>; var payload : { var statusCode : Float; var error : String; var message : String; }; };
	function reformat():Void;
};
typedef ICatBoxCacheOptions = {
	var engine : Dynamic;
	@:optional
	var name : String;
	@:optional
	var shared : Bool;
};
typedef ISeverConnectionOptions = {
	>IConnectionConfigurationServerDefaults,
	@:optional
	var host : String;
	@:optional
	var address : String;
	@:optional
	var port : haxe.extern.EitherType<String, Float>;
	@:optional
	var uri : String;
	@:optional
	var listener : Dynamic;
	@:optional
	var autoListen : Bool;
	@:optional
	var cache : { var statuses : Array<Float>; };
	@:optional
	var labels : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var tls : Bool;
};
typedef IConnectionConfigurationServerDefaults = {
	@:optional
	var app : Dynamic;
	@:optional
	var load : { var maxHeapUsedBytes : Float; var maxRssBytes : Float; var maxEventLoopDelay : Float; };
	@:optional
	var plugins : Dynamic;
	@:optional
	var router : { var isCaseSensitive : Bool; var stripTrailingSlash : Bool; };
	@:optional
	var routes : IRouteAdditionalConfigurationOptions;
	@:optional
	var state : IServerState;
};
typedef IServerOptions = {
	@:optional
	var app : Dynamic;
	@:optional
	var cache : haxe.extern.EitherType<String, haxe.extern.EitherType<ICatBoxCacheOptions, haxe.extern.EitherType<Array<ICatBoxCacheOptions>, Dynamic>>>;
	@:optional
	var connections : IConnectionConfigurationServerDefaults;
	@:optional
	var debug : haxe.extern.EitherType<Bool, { var log : Array<String>; var request : Array<String>; }>;
	@:optional
	var files : { @:optional
	var etagsCacheMaxSize : Float; };
	@:optional
	var load : { @:optional
	var sampleInterval : Float; };
	@:optional
	var mime : Dynamic;
	@:optional
	var minimal : Bool;
	@:optional
	var plugins : IDictionary<Dynamic>;
};
typedef IServerViewCompile = { };
typedef IServerViewsAdditionalOptions = {
	@:optional
	var path : String;
	@:optional
	var partialsPath : String;
	@:optional
	var helpersPath : String;
	@:optional
	var relativeTo : String;
	@:optional
	var layout : Bool;
	@:optional
	var layoutPath : String;
	@:optional
	var layoutKeywork : String;
	@:optional
	var encoding : String;
	@:optional
	var isCached : Bool;
	@:optional
	var allowAbsolutePaths : Bool;
	@:optional
	var allowInsecureAccess : Bool;
	@:optional
	var compileOptions : Dynamic;
	@:optional
	var runtimeOptions : Dynamic;
	@:optional
	var contentType : String;
	@:optional
	var compileMode : String;
	@:optional
	var context : Dynamic;
};
typedef IServerViewsEnginesOptions = {
	>IServerViewsAdditionalOptions,
	var module : { @:optional
	@:overload(function(template:Dynamic, options:Dynamic, callback:Dynamic -> Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void -> Void -> Void):Void { })
	function compile(template:Dynamic, options:Dynamic):Dynamic -> Dynamic -> Void; };
};
typedef IServerViewsConfiguration = {
	>IServerViewsAdditionalOptions,
	var engines : haxe.extern.EitherType<IDictionary<Dynamic>, IServerViewsEnginesOptions>;
	@:optional
	var defaultExtension : String;
};
typedef IReply = {
	function file(path:String, ?options:{ @:optional
	var filename : String; @:optional
	var mode : haxe.extern.EitherType<Bool, String>; var lookupCompressed : Bool; }):Void;
	function view(template:String, ?context:{ }, ?options:Dynamic):Response;
	function close(?options:{ @:optional
	var end : Bool; }):Void;
	function proxy(options:IProxyHandlerConfig):Void;
	function redirect(uri:String):Response;
};
typedef ISessionHandler = { };
typedef IRequestHandler<T> = { };
typedef IFailAction = { };
typedef IProxyHandlerConfig = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var protocol : String;
	@:optional
	var uri : String;
	@:optional
	var passThrough : Bool;
	@:optional
	var localStatePassThrough : Bool;
	@:optional
	var acceptEncoding : Bool;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var xforward : Bool;
	@:optional
	var redirects : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var timeout : Float;
	@:optional
	var mapUri : Request -> Dynamic -> String -> ?{ } -> Void -> Void;
	@:optional
	var onResponse : Dynamic -> http.ServerResponse -> Request -> Void -> Void -> IProxyHandlerConfig -> Float -> Void;
	@:optional
	var ttl : Float;
	@:optional
	var agent : http.Agent;
	@:optional
	var maxSockets : haxe.extern.EitherType<Bool, Float>;
};
typedef IJoi = { };
typedef IValidationFunction = { };
typedef IRouteFailFunction = { };
typedef IRouteAdditionalConfigurationOptions = {
	@:optional
	var app : Dynamic;
	@:optional
	var auth : haxe.extern.EitherType<Bool, haxe.extern.EitherType<String, { var mode : String; var strategies : haxe.extern.EitherType<String, Array<String>>; @:optional
	var payload : String; @:optional
	var scope : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, Bool>>; @:optional
	var entity : String; }>>;
	@:optional
	var bind : Dynamic;
	@:optional
	var cache : { var privacy : String; var expiresIn : Float; var expiresAt : String; };
	@:optional
	var cors : { @:optional
	var origin : Array<String>; @:optional
	var matchOrigin : Bool; @:optional
	var isOriginExposed : Bool; @:optional
	var maxAge : Float; @:optional
	var headers : Array<String>; @:optional
	var additionalHeaders : Array<String>; @:optional
	var methods : Array<String>; @:optional
	var additionalMethods : Array<String>; @:optional
	var exposedHeaders : Array<String>; @:optional
	var additionalExposedHeaders : Array<String>; @:optional
	var credentials : Bool; @:optional
	var override : Bool; };
	@:optional
	var files : { var relativeTo : String; };
	@:optional
	var handler : haxe.extern.EitherType<ISessionHandler, haxe.extern.EitherType<String, IRouteHandlerConfig>>;
	@:optional
	var id : Float;
	@:optional
	var json : { @:optional
	var replacer : haxe.extern.EitherType<haxe.Constraints.Function, Array<String>>; @:optional
	var space : haxe.extern.EitherType<Float, String>; @:optional
	var suffix : String; };
	@:optional
	var jsonp : String;
	@:optional
	var payload : { @:optional
	var output : String; @:optional
	var parse : haxe.extern.EitherType<String, Bool>; @:optional
	var allow : haxe.extern.EitherType<String, Array<String>>; @:optional
	var override : String; @:optional
	var maxBytes : Float; @:optional
	var timeout : Float; @:optional
	var uploads : String; @:optional
	var failAction : String; };
	@:optional
	var plugins : IDictionary<Dynamic>;
	@:optional
	var pre : Array<Dynamic>;
	@:optional
	var response : { var schema : haxe.extern.EitherType<Bool, Dynamic>; var status : Float; var sample : Float; var failAction : String; var modify : Bool; var options : Dynamic; };
	@:optional
	var security : haxe.extern.EitherType<Bool, { var hsts : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Float, { @:optional
	var maxAge : Float; @:optional
	var includeSubdomains : Bool; }>>; var xframe : { var rule : String; var source : String; }; var xss : Bool; var noOpen : Bool; var noSniff : Bool; }>;
	@:optional
	var state : { var parse : Bool; var failAction : String; };
	@:optional
	var validate : { @:optional
	var headers : haxe.extern.EitherType<Bool, haxe.extern.EitherType<IJoi, IValidationFunction>>; @:optional
	var params : haxe.extern.EitherType<Bool, haxe.extern.EitherType<IJoi, IValidationFunction>>; @:optional
	var query : haxe.extern.EitherType<Bool, haxe.extern.EitherType<IJoi, IValidationFunction>>; @:optional
	var payload : haxe.extern.EitherType<Bool, haxe.extern.EitherType<IJoi, IValidationFunction>>; @:optional
	var errorFields : Dynamic; @:optional
	var failAction : haxe.extern.EitherType<String, IRouteFailFunction>; @:optional
	var options : Dynamic; };
	@:optional
	var timeout : { var server : haxe.extern.EitherType<Bool, Float>; var socket : haxe.extern.EitherType<Bool, Float>; };
	@:optional
	var description : String;
	@:optional
	var notes : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var tags : Array<String>;
};
typedef IServerRealm = {
	var modifiers : { var route : { var prefix : String; var vhost : String; }; };
	var plugin : String;
	var plugins : IDictionary<Dynamic>;
	var settings : { var files : { var relativeTo : Dynamic; }; var bind : Dynamic; };
};
typedef IServerState = {
	var name : String;
	var options : { var ttl : Float; var isSecure : Bool; var isHttpOnly : Bool; var path : Dynamic; var domain : Dynamic; var autoValue : Request -> Dynamic -> Dynamic -> Void -> Void; var encoding : String; var sign : { var integrity : Dynamic; var password : String; }; var password : String; var iron : Dynamic; var ignoreErrors : Bool; var clearInvalid : Bool; var strictHeader : Bool; var passThrough : Dynamic; };
};
typedef IFileHandlerConfig = {
	var path : String;
	@:optional
	var filename : String;
	@:optional
	var mode : haxe.extern.EitherType<Bool, String>;
	var lookupCompressed : Bool;
};
typedef IRouteHandlerConfig = {
	@:optional
	var file : haxe.extern.EitherType<String, haxe.extern.EitherType<IRequestHandler<Void>, IFileHandlerConfig>>;
	@:optional
	var directory : { var path : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<IRequestHandler<String>, IRequestHandler<Array<String>>>>>; @:optional
	var index : Bool; @:optional
	var listing : Bool; @:optional
	var showHidden : Bool; @:optional
	var redirectToSlash : Bool; @:optional
	var lookupCompressed : Bool; @:optional
	var defaultExtension : String; };
	@:optional
	var proxy : IProxyHandlerConfig;
	@:optional
	var view : haxe.extern.EitherType<String, { var template : String; var context : { var payload : Dynamic; var params : Dynamic; var query : Dynamic; var pre : Dynamic; }; }>;
	@:optional
	var config : { var handler : Dynamic; var bind : Dynamic; var app : Dynamic; var plugins : { }; var pre : Array<Void -> Void>; var validate : { var headers : Dynamic; var params : Dynamic; var query : Dynamic; var payload : Dynamic; @:optional
	var errorFields : Dynamic; @:optional
	var failAction : haxe.extern.EitherType<String, IFailAction>; }; var payload : { var output : { var data : Dynamic; var stream : Dynamic; var file : Dynamic; }; @:optional
	var parse : Dynamic; @:optional
	var allow : haxe.extern.EitherType<String, Array<String>>; @:optional
	var override : String; @:optional
	var maxBytes : Float; @:optional
	var uploads : Float; @:optional
	var failAction : String; }; var response : { var schema : Dynamic; var sample : Float; var failAction : String; }; var cache : { var privacy : String; var expiresIn : Float; var expiresAt : Float; }; var auth : haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, { var mode : String; var strategies : Array<String>; @:optional
	var payload : haxe.extern.EitherType<Bool, String>; @:optional
	var tos : haxe.extern.EitherType<Bool, String>; @:optional
	var scope : haxe.extern.EitherType<String, Array<String>>; var entity : String; }>>; @:optional
	var cors : Bool; @:optional
	var jsonp : String; @:optional
	var description : String; @:optional
	var notes : haxe.extern.EitherType<String, Array<String>>; @:optional
	var tags : Array<String>; };
};
typedef IRouteConfiguration = {
	var path : String;
	var method : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var vhost : String;
	var handler : haxe.extern.EitherType<ISessionHandler, haxe.extern.EitherType<String, IRouteHandlerConfig>>;
	@:optional
	var config : IRouteAdditionalConfigurationOptions;
};
typedef IRoute = {
	var method : String;
	var path : String;
	@:optional
	var vhost : haxe.extern.EitherType<String, Array<String>>;
	var realm : IServerRealm;
	var settings : IRouteAdditionalConfigurationOptions;
};
typedef IServerAuthScheme = {
	function authenticate(request:Request, reply:IReply):Void;
	@:optional
	function payload(request:Request, reply:IReply):Void;
	@:optional
	function response(request:Request, reply:IReply):Void;
	@:optional
	var options : { var payload : Bool; };
};
typedef IServerInject = { };
typedef IConnectionTable = {
	var info : Dynamic;
	var labels : Dynamic;
	var table : Array<IRoute>;
};
typedef ICookieSettings = {
	@:optional
	var ttl : Float;
	@:optional
	var isSecure : Bool;
	@:optional
	var isHttpOnly : Bool;
	@:optional
	var path : String;
	@:optional
	var domain : Dynamic;
	@:optional
	var autoValue : Request -> Dynamic -> Dynamic -> Void -> Void;
	@:optional
	var encoding : String;
	@:optional
	var sign : { var integrity : Dynamic; var password : String; };
	@:optional
	var password : String;
	@:optional
	var iron : Dynamic;
	@:optional
	var ignoreErrors : Bool;
	@:optional
	var clearInvalid : Bool;
	@:optional
	var strictHeader : Bool;
	@:optional
	var passThrough : Dynamic;
};
typedef IServerMethod = { };
typedef IServerMethodOptions = {
	@:optional
	var bind : Dynamic;
	@:optional
	var cache : ICatBoxCacheOptions;
	@:optional
	var callback : Bool;
	@:optional
	function generateKey(args:Array<Dynamic>):String;
};
extern class Request extends Events.EventEmitter {
	var app : Dynamic;
	var auth : { var isAuthenticated : Bool; var credentials : Dynamic; var artifacts : Dynamic; var mode : Dynamic; var error : Dynamic; var session : Dynamic; };
	var domain : Dynamic;
	var headers : IDictionary<String>;
	var id : Float;
	var info : { var received : Float; var responded : Float; var remoteAddress : String; var remotePort : Float; var referrer : String; var host : String; var hostname : String; };
	var method : String;
	var mime : String;
	var orig : { var params : Dynamic; var query : Dynamic; var payload : Dynamic; };
	var params : IDictionary<String>;
	var paramsArray : Array<String>;
	var path : String;
	var payload : Dynamic;
	var plugins : Dynamic;
	var pre : IDictionary<Dynamic>;
	var response : Response;
	var preResponses : Dynamic;
	var query : Dynamic;
	var raw : { var req : http.ClientRequest; var res : http.ServerResponse; };
	var route : IRoute;
	var server : Server;
	var session : Dynamic;
	var state : Dynamic;
	var url : { var auth : Dynamic; var hash : Dynamic; var host : Dynamic; var hostname : Dynamic; var href : String; var path : String; var pathname : String; var port : Dynamic; var protocol : Dynamic; var query : IDictionary<String>; var search : String; var slashes : Dynamic; };
	function setUrl(url:String):Void;
	function setMethod(method:String):Void;
	function log(tags:haxe.extern.EitherType<String, Array<String>>, ?data:String, ?timestamp:Float):Void;
	function getLog(?tags:String, ?internal:Bool):Array<String>;
	function tail(?name:String):haxe.Constraints.Function;
}
extern class Response extends Events.EventEmitter {
	var statusCode : Float;
	var headers : IDictionary<String>;
	var source : Dynamic;
	var variety : String;
	var app : Dynamic;
	var plugins : Dynamic;
	var settings : { var charset : String; var encoding : String; var passThrough : Bool; var stringify : Dynamic; var ttl : Float; var varyEtag : Bool; };
	function bytes(length:Float):Void;
	function charset(charset:String):Void;
	function code(statusCode:Float):Void;
	function created(uri:String):Void;
	function encoding(encoding:String):Void;
	function etag(tag:String, options:{ var weak : Bool; var vary : Bool; }):Void;
	function header(name:String, value:String, ?options:{ var append : Bool; var separator : String; var override : Bool; }):Void;
	function location(uri:String):Void;
	function redirect(uri:String):Void;
	function replacer(method:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):Void;
	function spaces(count:Float):Void;
	function state(name:String, value:String, ?options:Dynamic):Void;
}
extern class Server extends Events.EventEmitter {
	function new(?options:IServerOptions):Void;
	var app : Dynamic;
	var connections : Array<ISeverConnectionOptions>;
	var info : { var id : String; var created : Float; var started : Float; var port : Float; var host : String; var address : String; var protocol : String; var uri : String; };
	var load : { var eventLoopDelay : Float; var heapUsed : Float; };
	var listener : http.Server;
	var methods : IDictionary<haxe.Constraints.Function>;
	var mime : Dynamic;
	var plugins : IDictionary<Dynamic>;
	var realm : IServerRealm;
	var root : Server;
	var settings : IServerOptions;
	var version : String;
	function after(method:Dynamic -> Dynamic -> Void -> Void, dependencies:haxe.extern.EitherType<String, Array<String>>):Void;
	var auth : { function default(options:String):Void; function scheme(name:String, scheme:Server -> Dynamic -> IServerAuthScheme):Void; function strategy(name:String, scheme:Dynamic, ?mode:Bool, ?options:Dynamic):Void; function test(strategy:String, request:Request, next:Dynamic -> Dynamic -> Void):Void; };
	function bind(context:Dynamic):Void;
	function cache(options:ICatBoxCacheOptions):Void;
	function connection(options:ISeverConnectionOptions):Server;
	function decorate(type:String, property:String, method:haxe.Constraints.Function):Void;
	function dependency(dependencies:haxe.extern.EitherType<String, Array<String>>, ?after:Server -> Dynamic -> Void -> Void):Void;
	@:overload(function(obj:Dynamic):Void { })
	function expose(key:String, value:Dynamic):Void;
	function ext(event:String, method:Request -> IReply -> ?Dynamic -> Void, ?options:{ var before : haxe.extern.EitherType<String, Array<String>>; var after : haxe.extern.EitherType<String, Array<String>>; @:optional
	var bind : Dynamic; }):Void;
	function handler<THandlerConfig>(name:String, method:IRoute -> THandlerConfig -> ISessionHandler):Void;
	var inject : IServerInject;
	function log(tags:haxe.extern.EitherType<String, Array<String>>, ?data:haxe.extern.EitherType<String, Dynamic>, ?timestamp:Float):Void;
	function lookup(id:String):IRoute;
	function match(method:String, path:String, ?host:String):IRoute;
	@:overload(function(methods:haxe.extern.EitherType<{ var name : String; var method : IServerMethod; @:optional
	var options : IServerMethodOptions; }, Array<{ var name : String; var method : IServerMethod; @:optional
	var options : IServerMethodOptions; }>>):Void { })
	function method(name:String, method:IServerMethod, ?options:IServerMethodOptions):Void;
	function path(relativeTo:String):Void;
	@:overload(function(plugins:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, callback:Dynamic -> Void):Void { })
	function register(plugins:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, options:{ var select : haxe.extern.EitherType<String, Array<String>>; var routes : { var prefix : String; @:optional
	var vhost : haxe.extern.EitherType<String, Array<String>>; }; }, callback:Dynamic -> Void):Void;
	function render(template:String, context:Dynamic, options:Dynamic, callback:Dynamic -> Dynamic -> Dynamic -> Void):Void;
	@:overload(function(options:Array<IRouteConfiguration>):Void { })
	function route(options:IRouteConfiguration):Void;
	function select(labels:haxe.extern.EitherType<String, Array<String>>):Void;
	function start(?callback:Dynamic -> Void):Void;
	function state(name:String, ?options:ICookieSettings):Void;
	function stop(?options:{ var timeout : Float; }, ?callback:Void -> Void):Void;
	function table(?host:Dynamic):IConnectionTable;
	function views(options:IServerViewsConfiguration):Void;
}
