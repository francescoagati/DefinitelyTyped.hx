typedef NodeSocket = {
	>stream.ReadWriteStream,
	@:overload(function(buffer:Buffer):Bool { })
	@:overload(function(data:Dynamic, ?encoding:String, ?callback:haxe.Constraints.Function):Void { })
	function write(str:String, ?encoding:String, ?fd:String):Bool;
	@:overload(function(path:String, ?connectionListener:haxe.Constraints.Function):Void { })
	function connect(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Void;
	var bufferSize : Float;
	function setEncoding(?encoding:String):Void;
	function end(?data:Dynamic, ?encoding:String):Void;
	function destroy():Void;
	function pause():Void;
	function resume():Void;
	function setTimeout(timeout:Float, ?callback:haxe.Constraints.Function):Void;
	function setNoDelay(?noDelay:Bool):Void;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
	function address():{ var port : Float; var family : String; var address : String; };
	var remoteAddress : String;
	var remotePort : Float;
	var bytesRead : Float;
	var bytesWritten : Float;
};
typedef Server = {
	>NodeSocket,
	@:overload(function(path:String, ?listeningListener:haxe.Constraints.Function):Void { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):Void { })
	function listen(port:Float, ?host:String, ?backlog:Float, ?listeningListener:haxe.Constraints.Function):Void;
	function close(?callback:haxe.Constraints.Function):Void;
	function address():{ var port : Float; var family : String; var address : String; };
	var maxConnections : Float;
	var connections : Float;
};
extern class NetTopLevel {
	static var Socket : { function new(?options:{ @:optional
	var fd : String; @:optional
	var type : String; @:optional
	var allowHalfOpen : Bool; }):NodeSocket; };
	static function createServer(?connectionListener:NodeSocket -> Void):Server;
	static function createServer(?options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:NodeSocket -> Void):Server;
	static function connect(options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:haxe.Constraints.Function):Void;
	static function connect(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Void;
	static function connect(path:String, ?connectionListener:haxe.Constraints.Function):Void;
	static function createConnection(options:{ @:optional
	var allowHalfOpen : Bool; }, ?connectionListener:haxe.Constraints.Function):Void;
	static function createConnection(port:Float, ?host:String, ?connectionListener:haxe.Constraints.Function):Void;
	static function createConnection(path:String, ?connectionListener:haxe.Constraints.Function):Void;
	static function isIP(input:String):Float;
	static function isIPv4(input:String):Bool;
	static function isIPv6(input:String):Bool;
}
