typedef Socket = {
	>stream.Duplex,
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?fd:String):Bool { })
	@:overload(function(data:Dynamic, ?encoding:String, ?callback:haxe.Constraints.Function):Void { })
	function write(buffer:Buffer):Bool;
	@:overload(function(path:String, ?connectionListener:haxe.Constraints.Function):Void { })
	function connect(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Void;
	var bufferSize : Float;
	function setEncoding(?encoding:String):Void;
	function destroy():Void;
	function pause():Void;
	function resume():Void;
	function setTimeout(timeout:Float, ?callback:haxe.Constraints.Function):Void;
	function setNoDelay(?noDelay:Bool):Void;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
	function address():{ var port : Float; var family : String; var address : String; };
	function unref():Void;
	function ref():Void;
	var remoteAddress : String;
	var remotePort : Float;
	var bytesRead : Float;
	var bytesWritten : Float;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(?data:Dynamic, ?encoding:String):Void { })
	function end():Void;
};
typedef Server = {
	>Socket,
	@:overload(function(path:String, ?listeningListener:haxe.Constraints.Function):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):Server { })
	function listen(port:Float, ?host:String, ?backlog:Float, ?listeningListener:haxe.Constraints.Function):Server;
	function close(?callback:haxe.Constraints.Function):Server;
	function address():{ var port : Float; var family : String; var address : String; };
	var maxConnections : Float;
	var connections : Float;
};
extern class NetTopLevel {
	static var Socket : { function new(?options:{ @:optional
	var fd : String; @:optional
	var type : String; @:optional
	var allowHalfOpen : Bool; }):Socket; };
	static function createServer(?connectionListener:Socket -> Void):Server;
	static function createServer(?options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:Socket -> Void):Server;
	static function connect(options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:haxe.Constraints.Function):Socket;
	static function connect(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Socket;
	static function connect(path:String, ?connectionListener:haxe.Constraints.Function):Socket;
	static function createConnection(options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:haxe.Constraints.Function):Socket;
	static function createConnection(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Socket;
	static function createConnection(path:String, ?connectionListener:haxe.Constraints.Function):Socket;
	static function isIP(input:String):Float;
	static function isIPv4(input:String):Bool;
	static function isIPv6(input:String):Bool;
}
