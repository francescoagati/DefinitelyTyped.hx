typedef Server = {
	>events.NodeEventEmitter,
	@:overload(function(path:String, ?callback:haxe.Constraints.Function):Void { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):Void { })
	function listen(port:Float, ?hostname:String, ?backlog:Float, ?callback:haxe.Constraints.Function):Void;
	function close(?cb:Dynamic):Void;
	var maxHeadersCount : Float;
};
typedef ServerRequest = {
	>events.NodeEventEmitter,
	>stream.ReadableStream,
	var method : String;
	var url : String;
	var headers : String;
	var trailers : String;
	var httpVersion : String;
	function setEncoding(?encoding:String):Void;
	function pause():Void;
	function resume():Void;
	var connection : net.NodeSocket;
};
typedef ServerResponse = {
	>events.NodeEventEmitter,
	>stream.WritableStream,
	@:overload(function(buffer:Buffer):Bool { })
	@:overload(function(chunk:Dynamic, ?encoding:String):Dynamic { })
	function write(str:String, ?encoding:String, ?fd:String):Bool;
	function writeContinue():Void;
	@:overload(function(statusCode:Float, ?headers:Dynamic):Void { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:Dynamic):Void;
	var statusCode : Float;
	function setHeader(name:String, value:String):Void;
	var sendDate : Bool;
	function getHeader(name:String):String;
	function removeHeader(name:String):Void;
	function addTrailers(headers:Dynamic):Void;
	function end(?data:Dynamic, ?encoding:String):Void;
};
typedef ClientRequest = {
	>events.NodeEventEmitter,
	>stream.WritableStream,
	@:overload(function(buffer:Buffer):Bool { })
	@:overload(function(chunk:Dynamic, ?encoding:String):Void { })
	function write(str:String, ?encoding:String, ?fd:String):Bool;
	function end(?data:Dynamic, ?encoding:String):Void;
	function abort():Void;
	function setTimeout(timeout:Float, ?callback:haxe.Constraints.Function):Void;
	function setNoDelay(?noDelay:haxe.Constraints.Function):Void;
	function setSocketKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
};
typedef ClientResponse = {
	>events.NodeEventEmitter,
	>stream.ReadableStream,
	var statusCode : Float;
	var httpVersion : String;
	var headers : Dynamic;
	var trailers : Dynamic;
	function setEncoding(?encoding:String):Void;
	function pause():Void;
	function resume():Void;
};
typedef Agent = {
	var maxSockets : Float;
	var sockets : Dynamic;
	var requests : Dynamic;
};
extern class HttpTopLevel {
	static var STATUS_CODES : Dynamic;
	static function createServer(?requestListener:ServerRequest -> ServerResponse -> Void):Server;
	static function createClient(?port:Float, ?host:String):Dynamic;
	static function request(options:Dynamic, ?callback:haxe.Constraints.Function):ClientRequest;
	static function get(options:Dynamic, ?callback:haxe.Constraints.Function):ClientRequest;
	static var globalAgent : Agent;
}
