typedef ServerOptions = {
	@:optional
	var sockjs_url : String;
	@:optional
	var prefix : String;
	@:optional
	var response_limit : Float;
	@:optional
	var websocket : Bool;
	@:optional
	var jsessionid : Dynamic;
	@:optional
	var log : String -> String -> Void;
	@:optional
	var heartbeat_delay : Float;
	@:optional
	var disconnect_delay : Float;
};
typedef Server = {
	>NodeJS.EventEmitter,
	function installHandlers(server:http.Server, ?options:ServerOptions):Dynamic;
	@:overload(function(event:String, listener:haxe.Constraints.Function):Server { })
	function on(event:Connection, listener:Connection -> Dynamic):Server;
};
typedef Connection = {
	>NodeJS.ReadWriteStream,
	var remoteAddress : String;
	var remotePort : Float;
	var address : { };
	var headers : { };
	var url : String;
	var pathname : String;
	var prefix : String;
	var protocol : String;
	var readyState : Float;
	var id : String;
	function close(?code:String, ?reason:String):Bool;
	function destroy():Void;
	@:overload(function(event:Close, listener:Void -> Void):Connection { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Connection { })
	function on(event:Data, listener:String -> Dynamic):Connection;
};
extern class SockjsTopLevel {
	static function createServer(?options:ServerOptions):Server;
}
