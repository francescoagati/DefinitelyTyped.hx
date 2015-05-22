typedef Options = {
	@:optional
	var connection : Dynamic;
	@:optional
	var url : String;
	@:optional
	var exchangeInstance : Dynamic;
	@:optional
	var exchange : String;
	@:optional
	var exchange_options : { @:optional
	var exclusive : Bool; @:optional
	var autoDelete : Bool; };
	@:optional
	var ipml_options : { @:optional
	var defaultExchangeName : String; };
	@:optional
	var conn_options : Dynamic;
};
typedef CallOptions = {
	@:optional
	var correlationId : String;
	@:optional
	var autoDeleteCallback : Dynamic;
};
typedef HandlerOptions = {
	@:optional
	var queueName : String;
	@:optional
	var durable : Bool;
	@:optional
	var exclusive : Bool;
	@:optional
	var autoDelete : Bool;
};
typedef BroadcastOptions = {
	@:optional
	var ttl : Float;
	@:optional
	var onResponse : Dynamic;
	@:optional
	var context : Dynamic;
	@:optional
	var onComplete : Dynamic;
};
typedef CommandInfo = {
	@:optional
	var cmd : String;
	@:optional
	var exchange : String;
	@:optional
	var contentType : String;
	@:optional
	var size : Float;
};
typedef Callback = { };
typedef CallbackWithError = { };
extern class AmqpRPC {
	function new(?opt:Options):Void;
	function generateQueueName(type:String):String;
	function disconnect():Void;
	function call<T>(cmd:String, params:T, ?cb:Callback, ?context:Dynamic, ?options:CallOptions):String;
	function on<T>(cmd:String, cb:?T -> ?Callback -> ?CommandInfo -> Void, ?context:Dynamic, ?options:HandlerOptions):Bool;
	function off(cmd:String):Bool;
	function callBroadcast<T>(cmd:String, params:T, ?options:BroadcastOptions):Void;
	function onBroadcast<T>(cmd:String, ?cb:?T -> ?CallbackWithError -> Void, ?context:Dynamic, ?options:Dynamic):Bool;
	function offBroadcast(cmd:String):Bool;
}
extern class Amqp-rpcTopLevel {
	static function factory(?opt:Options):AmqpRPC;
}
extern class Amqp-rpcTopLevel {
	static function factory(?opt:Options):AmqpRPC;
}
