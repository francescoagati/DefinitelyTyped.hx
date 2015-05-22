typedef Server = {
	>events.EventEmitter,
	@:overload(function(port:Float, ?hostname:String, ?callback:haxe.Constraints.Function):Server { })
	@:overload(function(path:String, ?callback:haxe.Constraints.Function):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):Server { })
	function listen(port:Float, ?hostname:String, ?backlog:Float, ?callback:haxe.Constraints.Function):Server;
	function close(?cb:Dynamic):Server;
	function address():{ var port : Float; var family : String; var address : String; };
	var maxHeadersCount : Float;
};
typedef ServerRequest = {
	>IncomingMessage,
	var connection : net.Socket;
};
typedef ServerResponse = {
	>events.EventEmitter,
	>stream.Writable,
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?fd:String):Bool { })
	@:overload(function(chunk:Dynamic, ?encoding:String):Dynamic { })
	function write(buffer:Buffer):Bool;
	function writeContinue():Void;
	@:overload(function(statusCode:Float, ?headers:Dynamic):Void { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:Dynamic):Void;
	var statusCode : Float;
	function setHeader(name:String, value:String):Void;
	var sendDate : Bool;
	function getHeader(name:String):String;
	function removeHeader(name:String):Void;
	function addTrailers(headers:Dynamic):Void;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(?data:Dynamic, ?encoding:String):Void { })
	function end():Void;
};
typedef ClientRequest = {
	>events.EventEmitter,
	>stream.Writable,
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?fd:String):Bool { })
	@:overload(function(chunk:Dynamic, ?encoding:String):Void { })
	function write(buffer:Buffer):Bool;
	function abort():Void;
	function setTimeout(timeout:Float, ?callback:haxe.Constraints.Function):Void;
	function setNoDelay(?noDelay:Bool):Void;
	function setSocketKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(?data:Dynamic, ?encoding:String):Void { })
	function end():Void;
};
typedef IncomingMessage = {
	>events.EventEmitter,
	>stream.Readable,
	var httpVersion : String;
	var headers : Dynamic;
	var rawHeaders : Array<String>;
	var trailers : Dynamic;
	var rawTrailers : Dynamic;
	function setTimeout(msecs:Float, callback:haxe.Constraints.Function):NodeJS.Timer;
	@:optional
	var method : String;
	@:optional
	var url : String;
	@:optional
	var statusCode : Float;
	@:optional
	var statusMessage : String;
	var socket : net.Socket;
};
typedef ClientResponse = {
	>IncomingMessage,
};
typedef AgentOptions = {
	@:optional
	var keepAlive : Bool;
	@:optional
	var keepAliveMsecs : Float;
	@:optional
	var maxSockets : Float;
	@:optional
	var maxFreeSockets : Float;
};
extern class Agent {
	var maxSockets : Float;
	var sockets : Dynamic;
	var requests : Dynamic;
	function new(?opts:AgentOptions):Void;
	function destroy():Void;
}
extern class HttpTopLevel {
	static var STATUS_CODES : { };
	static function createServer(?requestListener:IncomingMessage -> ServerResponse -> Void):Server;
	static function createClient(?port:Float, ?host:String):Dynamic;
	static function request(options:Dynamic, ?callback:IncomingMessage -> Void):ClientRequest;
	static function get(options:Dynamic, ?callback:IncomingMessage -> Void):ClientRequest;
	static var globalAgent : Agent;
}
