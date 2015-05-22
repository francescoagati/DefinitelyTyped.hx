extern class PooledConnection extends tedious.Connection {
	function release():Void;
}
typedef ConnectionCallback = { };
typedef PoolConfig = {
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var log : Bool;
	@:optional
	var idleTimeout : Float;
	@:optional
	var retryDelay : Float;
	@:optional
	var acquireTimeout : Float;
};
extern class Tcp {
	function new(poolConfig:tcp.PoolConfig, connectionConfig:tedious.ConnectionConfig):Void;
	function acquire(callback:tcp.ConnectionCallback):Void;
	function on(event:String, callback:haxe.Constraints.Function):Void;
	function drain():Void;
}
