typedef EventEmitter = { };
typedef SocketTypes = {
	var pub : Float;
	var xpub : Float;
	var sub : Float;
	var xsub : Float;
	var req : Float;
	var xreq : Float;
	var rep : Float;
	var xrep : Float;
	var push : Float;
	var pull : Float;
	var dealer : Float;
	var router : Float;
	var pair : Float;
};
typedef SocketOptions = {
	var _fd : Float;
	var _ioevents : Float;
	var _receiveMore : Float;
	var _subscribe : Float;
	var _unsubscribe : Float;
	var affinity : Float;
	var backlog : Float;
	var hwm : Float;
	var identity : Float;
	var linger : Float;
	var mcast_loop : Float;
	var rate : Float;
	var rcvbuf : Float;
	var last_endpoint : Float;
	var reconnect_ivl : Float;
	var recovery_ivl : Float;
	var sndbuf : Float;
	var swap : Float;
};
typedef Socket = {
	>EventEmitter,
	@:overload(function(opt:String, val:Dynamic):Socket { })
	function setsocketopt(opt:Float, val:Dynamic):Socket;
	@:overload(function(opt:String):Dynamic { })
	function getsocketopt(opt:Float):Dynamic;
	function bind(addr:String, ?callback:String -> Void):Socket;
	function bindSync(addr:String):Socket;
	function unbind(addr:String, ?callback:String -> Void):Socket;
	function unbindSync(addr:String):Socket;
	function connect(addr:String):Socket;
	function disconnect(addr:String):Socket;
	function subscribe(filter:String):Socket;
	function unsubscribe(filter:String):Socket;
	@:overload(function(msg:Buffer, ?flags:Float):Socket { })
	@:overload(function(msg:Array<Dynamic>, ?flags:Float):Socket { })
	function send(msg:String, ?flags:Float):Socket;
	function monitor(?interval:Float):Socket;
	function close():Socket;
	function on(eventName:String, callback:Buffer -> Void):Void;
	var _fd : Dynamic;
	var _ioevents : Dynamic;
	var _receiveMore : Dynamic;
	var _subscribe : Dynamic;
	var _unsubscribe : Dynamic;
	var affinity : Dynamic;
	function backlog():Dynamic;
	var hwm : Dynamic;
	var identity : Dynamic;
	var linger : Dynamic;
	var mcast_loop : Dynamic;
	var rate : Dynamic;
	var rcvbuf : Dynamic;
	var last_endpoint : Dynamic;
	var reconnect_ivl : Dynamic;
	var recovery_ivl : Dynamic;
	var sndbuf : Dynamic;
	var swap : Dynamic;
};
extern class ZmqTopLevel {
	static var version : String;
	static var types : SocketTypes;
	static var options : SocketOptions;
	static function socket(type:String, ?options:Dynamic):Socket;
	static function socket(type:Float, ?options:Dynamic):Socket;
	static function createSocket(type:String, ?options:Dynamic):Socket;
}
extern class ZmqTopLevel {
	static var version : String;
	static var types : SocketTypes;
	static var options : SocketOptions;
	static function socket(type:String, ?options:Dynamic):Socket;
	static function socket(type:Float, ?options:Dynamic):Socket;
	static function createSocket(type:String, ?options:Dynamic):Socket;
}
