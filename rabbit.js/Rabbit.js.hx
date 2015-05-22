extern class Context extends events.EventEmitter {
	function socket<T>(type:String, ?options:SocketOptions):T;
	function close(callback:haxe.Constraints.Function):Dynamic;
}
typedef SocketOptions = {
	@:optional
	var prefetch : Dynamic;
	@:optional
	var expiration : Dynamic;
	@:optional
	var persistent : Dynamic;
	@:optional
	var topic : Dynamic;
	@:optional
	var task : Dynamic;
};
typedef Socket = {
	function connect(destination:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
};
extern class PubSocket extends stream.Writable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(destination:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
	@:overload(function(topic:String, chunk:Buffer, ?encoding:String):Dynamic { })
	function publish(topic:String, chunk:String, ?encoding:String):Dynamic;
}
extern class SubSocket extends stream.Readable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(source:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
}
extern class PushSocket extends stream.Writable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(destination:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
}
extern class PullSocket extends stream.Readable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(source:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
}
extern class WorkerSocket extends stream.Readable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(source:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
	function ack():Dynamic;
	function requeue():Dynamic;
	function discard():Dynamic;
}
typedef RequestMessage = {
	var properties : { var correlationId : Float; };
	var content : Dynamic;
};
extern class ReqSocket extends stream.Duplex {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(destination:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
	function handleReply(msg:RequestMessage):Dynamic;
}
extern class RepSocket extends stream.Duplex {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(source:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
	function requeue():Dynamic;
	function discard():Dynamic;
}
extern class TaskSocket extends stream.Writable {
	function new(channel:String, opts:SocketOptions):Void;
	function connect(destination:String, ?callback:haxe.Constraints.Function):Dynamic;
	function setsockopt(opt:String, value:String):Dynamic;
	function close():Dynamic;
	@:overload(function(task:String, chunk:Buffer, ?encoding:String):Dynamic { })
	function post(task:String, chunk:String, ?encoding:String):Dynamic;
}
extern class Rabbit.jsTopLevel {
	static function createContext(?url:String):Context;
}
extern class Rabbit.jsTopLevel {
	static function createContext(?url:String):Context;
}
