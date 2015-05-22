typedef IServerOptions = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var server : http.Server;
	@:optional
	var verifyClient : { };
	@:optional
	var handleProtocols : Dynamic;
	@:optional
	var path : String;
	@:optional
	var noServer : Bool;
	@:optional
	var disableHixie : Bool;
	@:optional
	var clientTracking : Bool;
};
extern class Server extends events.EventEmitter {
	var options : IServerOptions;
	var path : String;
	var clients : Array<WebSocket>;
	function new(?options:IServerOptions, ?callback:haxe.Constraints.Function):Void;
	function close():Void;
	function handleUpgrade(request:http.ServerRequest, socket:net.Socket, upgradeHead:Buffer, callback:WebSocket -> Void):Void;
	@:overload(function(event:Headers, cb:Array<String> -> Void):Server { })
	@:overload(function(event:Connection, cb:WebSocket -> Void):Server { })
	@:overload(function(event:String, listener:Void -> Void):Server { })
	function on(event:Error, cb:Error -> Void):Server;
	@:overload(function(event:Headers, cb:Array<String> -> Void):Server { })
	@:overload(function(event:Connection, cb:WebSocket -> Void):Server { })
	@:overload(function(event:String, listener:Void -> Void):Server { })
	function addListener(event:Error, cb:Error -> Void):Server;
}
extern class WebSocketTopLevel {
	static function createServer(?options:IServerOptions, ?connectionListener:WebSocket -> Void):Server;
	static function connect(address:String, ?openListener:haxe.Constraints.Function):Void;
	static function createConnection(address:String, ?openListener:haxe.Constraints.Function):Void;
}
