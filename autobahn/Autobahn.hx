extern class Session {
	var id : Float;
	var realm : String;
	var isOpen : Bool;
	var features : Dynamic;
	var caller_disclose_me : Bool;
	var publisher_disclose_me : Bool;
	var subscriptions : Array<Array<ISubscription>>;
	var registrations : Array<IRegistration>;
	function new(transport:ITransport, defer:DeferFactory, challenge:OnChallengeHandler):Void;
	function join(realm:String, authmethods:Array<String>, authid:String):Void;
	function leave(reason:String, message:String):Void;
	function call<TResult>(procedure:String, ?args:Array<Dynamic>, ?kwargs:Dynamic, ?options:ICallOptions):When.Promise<TResult>;
	function publish(topic:String, ?args:Array<Dynamic>, ?kwargs:Dynamic, ?options:IPublishOptions):When.Promise<IPublication>;
	function subscribe(topic:String, handler:SubscribeHandler, ?options:ISubscribeOptions):When.Promise<ISubscription>;
	function register(procedure:String, endpoint:RegisterEndpoint, ?options:IRegisterOptions):When.Promise<IRegistration>;
	function unsubscribe(subscription:ISubscription):When.Promise<Dynamic>;
	function unregister(registration:IRegistration):When.Promise<Dynamic>;
	function prefix(prefix:String, uri:String):Void;
	function resolve(curie:String):String;
	var onjoin : Dynamic -> Void;
	var onleave : String -> Dynamic -> Void;
}
typedef IInvocation = {
	@:optional
	var caller : Float;
	@:optional
	var progress : Bool;
	var procedure : String;
};
typedef IEvent = {
	var publication : Float;
	@:optional
	var publisher : Float;
	var topic : String;
};
typedef IResult = {
	var args : Array<Dynamic>;
	var kwargs : Dynamic;
};
typedef IError = {
	var error : String;
	var args : Array<Dynamic>;
	var kwargs : Dynamic;
};
typedef ISubscription = {
	var topic : String;
	var handler : SubscribeHandler;
	var options : ISubscribeOptions;
	var session : Session;
	var id : Float;
	var active : Bool;
	function unsubscribe():When.Promise<Dynamic>;
};
typedef IRegistration = {
	var procedure : String;
	var endpoint : RegisterEndpoint;
	var options : IRegisterOptions;
	var session : Session;
	var id : Float;
	var active : Bool;
	function unregister():When.Promise<Dynamic>;
};
typedef IPublication = {
	var id : Float;
};
typedef ICallOptions = {
	@:optional
	var timeout : Float;
	@:optional
	var receive_progress : Bool;
	@:optional
	var disclose_me : Bool;
};
typedef IPublishOptions = {
	@:optional
	var exclude : Array<Float>;
	@:optional
	var eligible : Array<Float>;
	@:optional
	var disclose_me : Boolean;
};
typedef ISubscribeOptions = {
	@:optional
	var match : String;
};
typedef IRegisterOptions = {
	@:optional
	var disclose_caller : Bool;
};
extern class Connection {
	function new(?options:IConnectionOptions):Void;
	function open():Void;
	function close(reason:String, message:String):Void;
	var onopen : Session -> Dynamic -> Void;
	var onclose : String -> Dynamic -> Bool;
}
typedef ITransportDefinition = {
	@:optional
	var url : String;
	@:optional
	var protocols : Array<String>;
	var type : String;
};
typedef IConnectionOptions = {
	@:optional
	var use_es6_promises : Bool;
	@:optional
	var use_deferred : DeferFactory;
	@:optional
	var transports : Array<ITransportDefinition>;
	@:optional
	var retry_if_unreachable : Bool;
	@:optional
	var max_retries : Float;
	@:optional
	var initial_retry_delay : Float;
	@:optional
	var max_retry_delay : Float;
	@:optional
	var retry_delay_growth : Float;
	@:optional
	var retry_delay_jitter : Float;
	@:optional
	var url : String;
	@:optional
	var protocols : Array<String>;
	@:optional
	var onchallenge : Session -> String -> Dynamic -> OnChallengeHandler;
	@:optional
	var realm : String;
	@:optional
	var authmethods : Array<String>;
	@:optional
	var authid : String;
};
typedef ICloseEventDetails = {
	var wasClean : Bool;
	var reason : String;
	var code : Float;
};
typedef ITransport = {
	var onopen : Void -> Void;
	var onmessage : Array<Dynamic> -> Void;
	var onclose : ICloseEventDetails -> Void;
	function send(message:Array<Dynamic>):Void;
	function close(errorCode:Float, ?reason:String):Void;
};
typedef ITransportFactory = {
	var type : String;
	function create():ITransport;
};
typedef ITransports = {
	function register(name:String, factory:Dynamic):Void;
	function isRegistered(name:String):Bool;
	function get(name:String):Dynamic;
	function list():Array<Dynamic>;
};
typedef ILog = {
	function debug(args:haxe.extern.Rest<Dynamic>):Void;
};
typedef IUtil = {
	function assert(condition:Bool, message:String):Void;
};
extern class AutobahnTopLevel {
	static var util : IUtil;
	static var log : ILog;
	static var transports : ITransports;
}
extern class AutobahnTopLevel {
	static var util : IUtil;
	static var log : ILog;
	static var transports : ITransports;
}
