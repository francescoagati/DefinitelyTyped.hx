typedef IStringified = {
	var toString : haxe.extern.Rest<Dynamic> -> String;
};
typedef IConfig = {
	@:optional
	var maxReceivedFrameSize : Float;
	@:optional
	var maxReceivedMessageSize : Float;
	@:optional
	var fragmentOutgoingMessages : Bool;
	@:optional
	var fragmentationThreshold : Float;
	@:optional
	var assembleFragments : Bool;
	@:optional
	var closeTimeout : Float;
};
typedef IServerConfig = {
	>IConfig,
	var httpServer : http.Server;
	@:optional
	var maxReceivedFrameSize : Float;
	@:optional
	var maxReceivedMessageSize : Float;
	@:optional
	var keepalive : Bool;
	@:optional
	var keepaliveInterval : Float;
	@:optional
	var dropConnectionOnKeepaliveTimeout : Bool;
	@:optional
	var keepaliveGracePeriod : Float;
	@:optional
	var autoAcceptConnections : Bool;
	@:optional
	var disableNagleAlgorithm : Bool;
};
extern class Server extends events.EventEmitter {
	var config : IServerConfig;
	var connections : Array<Connection>;
	function new(?serverConfig:IServerConfig):Void;
	@:overload(function(data:IStringified):Void { })
	function broadcast(data:Buffer):Void;
	function broadcastBytes(data:Buffer):Void;
	function broadcastUTF(data:IStringified):Void;
	function mount(serverConfig:IServerConfig):Void;
	function unmount():Void;
	function closeAllConnections():Void;
	function shutDown():Void;
	@:overload(function(event:Request, cb:Request -> Void):Server { })
	@:overload(function(event:Connect, cb:Connection -> Void):Server { })
	@:overload(function(event:Close, cb:Connection -> Float -> String -> Void):Server { })
	function on(event:String, listener:Void -> Void):Server;
	@:overload(function(event:Request, cb:Request -> Void):Server { })
	@:overload(function(event:Connect, cb:Connection -> Void):Server { })
	@:overload(function(event:Close, cb:Connection -> Float -> String -> Void):Server { })
	function addListener(event:String, listener:Void -> Void):Server;
}
typedef ICookie = {
	var name : String;
	var value : String;
	@:optional
	var path : String;
	@:optional
	var domain : String;
	@:optional
	var expires : Date;
	@:optional
	var maxage : Float;
	@:optional
	var secure : Bool;
	@:optional
	var httponly : Bool;
};
typedef IExtension = {
	var name : String;
	var value : String;
};
extern class Request extends events.EventEmitter {
	var httpRequest : http.ClientRequest;
	var host : String;
	var resource : String;
	var key : String;
	var resourceURL : url.Url;
	var remoteAddress : String;
	var origin : String;
	var webSocketVersion : Float;
	var requestedExtensions : Array<Dynamic>;
	var cookies : Array<ICookie>;
	var socket : net.Socket;
	var requestedProtocols : Array<String>;
	var protocolFullCaseMap : { };
	function new(socket:net.Socket, httpRequest:http.ClientRequest, config:IServerConfig):Void;
	function accept(?acceptedProtocol:String, ?allowedOrigin:String, ?cookies:Array<ICookie>):Connection;
	function reject(?httpStatus:Float, ?reason:String):Void;
	@:overload(function(event:RequestAccepted, cb:Connection -> Void):Request { })
	@:overload(function(event:RequestRejected, cb:Void -> Void):Request { })
	function on(event:String, listener:Void -> Void):Request;
	@:overload(function(event:RequestAccepted, cb:Connection -> Void):Request { })
	@:overload(function(event:RequestRejected, cb:Void -> Void):Request { })
	function addListener(event:String, listener:Void -> Void):Request;
}
typedef IMessage = {
	var type : String;
	@:optional
	var utf8Data : String;
	@:optional
	var binaryData : Buffer;
};
typedef IBufferList = {
	>events.EventEmitter,
	var encoding : String;
	var length : Float;
	function write(buf:Buffer):Bool;
	function end(buf:Buffer):Void;
	function forEach(fn:Buffer -> Bool):Void;
	function join(start:Float, end:Float):Buffer;
	function joinInto(buf:Buffer, offset:Float, start:Float, end:Float):Buffer;
	function advance(n:Float):IBufferList;
	@:overload(function(?encoding:String):Dynamic { })
	function take(n:Float, ?encoding:String):Dynamic;
	@:overload(function(event:Advance, cb:Float -> Void):IBufferList { })
	@:overload(function(event:Write, cb:Buffer -> Void):IBufferList { })
	function on(event:String, listener:Void -> Void):IBufferList;
	@:overload(function(event:Advance, cb:Float -> Void):IBufferList { })
	@:overload(function(event:Write, cb:Buffer -> Void):IBufferList { })
	function addListener(event:String, listener:Void -> Void):IBufferList;
};
extern class Connection extends events.EventEmitter {
	static var CLOSE_REASON_NORMAL : Float;
	static var CLOSE_REASON_GOING_AWAY : Float;
	static var CLOSE_REASON_PROTOCOL_ERROR : Float;
	static var CLOSE_REASON_UNPROCESSABLE_INPUT : Float;
	static var CLOSE_REASON_RESERVED : Float;
	static var CLOSE_REASON_NOT_PROVIDED : Float;
	static var CLOSE_REASON_ABNORMAL : Float;
	static var CLOSE_REASON_INVALID_DATA : Float;
	static var CLOSE_REASON_POLICY_VIOLATION : Float;
	static var CLOSE_REASON_MESSAGE_TOO_BIG : Float;
	static var CLOSE_REASON_EXTENSION_REQUIRED : Float;
	var closeDescription : String;
	var closeReasonCode : Float;
	var protocol : String;
	var config : IConfig;
	var socket : net.Socket;
	var maskOutgoingPackets : Bool;
	var maskBytes : Buffer;
	var frameHeader : Buffer;
	var bufferList : IBufferList;
	var currentFrame : Frame;
	var fragmentationSize : Float;
	var frameQueue : Array<Frame>;
	var state : String;
	var waitingForCloseResponse : Bool;
	var closeTimeout : Float;
	var assembleFragments : Float;
	var maxReceivedMessageSize : Float;
	var outputPaused : Bool;
	var bytesWaitingToFlush : Float;
	var socketHadError : Bool;
	var extensions : Array<IExtension>;
	var remoteAddress : String;
	var webSocketVersion : Float;
	var connected : Bool;
	function new(socket:net.Socket, extensions:Array<IExtension>, protocol:String, maskOutgoingPackets:Bool, config:IConfig):Void;
	function close():Void;
	function drop(?reasonCode:Float, ?description:String):Void;
	function sendUTF(data:IStringified):Void;
	function sendBytes(buffer:Buffer):Void;
	@:overload(function(data:IStringified):Void { })
	function send(data:Buffer):Void;
	@:overload(function(data:IStringified):Void { })
	function ping(data:Buffer):Void;
	function pong(buffer:Buffer):Void;
	@:overload(function(frame:Frame, force:Bool, ?cb:String -> Void):Void { })
	@:overload(function(frame:Frame, ?cb:String -> Void):Void { })
	function sendFrame(frame:Frame):Void;
	function setKeepaliveTimer():Void;
	function setGracePeriodTimer():Void;
	function setCloseTimer():Void;
	function clearCloseTimer():Void;
	function processFrame(frame:Frame):Void;
	function fragmentAndSend(frame:Frame, ?cb:Error -> Void):Void;
	@:overload(function():Void { })
	function sendCloseFrame(reasonCode:Float, reasonText:String, force:Bool):Void;
	@:overload(function(event:Message, cb:IMessage -> Void):Connection { })
	@:overload(function(event:Frame, cb:Frame -> Void):Connection { })
	@:overload(function(event:Close, cb:Float -> String -> Void):Connection { })
	@:overload(function(event:Error, cb:Error -> Void):Connection { })
	function on(event:String, listener:Void -> Void):Connection;
	@:overload(function(event:Message, cb:IMessage -> Void):Connection { })
	@:overload(function(event:Frame, cb:Frame -> Void):Connection { })
	@:overload(function(event:Close, cb:Float -> String -> Void):Connection { })
	@:overload(function(event:Error, cb:Error -> Void):Connection { })
	function addListener(event:String, listener:Void -> Void):Connection;
}
extern class Frame {
	var fin : Bool;
	var rsv1 : Bool;
	var rsv2 : Bool;
	var rsv3 : Bool;
	var mask : Float;
	var opcode : Float;
	var length : Float;
	var binaryPayload : Buffer;
	var maskBytes : Buffer;
	var frameHeader : Buffer;
	var config : IConfig;
	var maxReceivedFrameSize : Float;
	var protocolError : Bool;
	var frameTooLarge : Bool;
	var invalidCloseFrameLength : Bool;
	var closeStatus : Float;
	function addData(bufferList:IBufferList):Bool;
	function throwAwayPayload(bufferList:IBufferList):Bool;
	function toBuffer(nullMask:Bool):Buffer;
}
typedef IClientConfig = {
	>IConfig,
	@:optional
	var webSocketVersion : Float;
	@:optional
	var maxReceivedFrameSize : Float;
	@:optional
	var maxReceivedMessageSize : Float;
};
extern class Client extends events.EventEmitter {
	var protocols : Array<String>;
	var origin : String;
	var url : url.Url;
	var secure : Bool;
	var socket : net.Socket;
	var response : http.ClientResponse;
	function new(?clientConfig:IClientConfig):Void;
	@:overload(function(requestUrl:String, ?protocols:Array<String>, ?origin:String, ?headers:Array<Dynamic>):Void { })
	@:overload(function(requestUrl:url.Url, ?protocols:String, ?origin:String, ?headers:Array<Dynamic>):Void { })
	@:overload(function(requestUrl:String, ?protocols:String, ?origin:String, ?headers:Array<Dynamic>):Void { })
	function connect(requestUrl:url.Url, ?protocols:Array<String>, ?origin:String, ?headers:Array<Dynamic>):Void;
	@:overload(function(event:Connect, cb:Connection -> Void):Client { })
	@:overload(function(event:ConnectFailed, cb:Error -> Void):Client { })
	function on(event:String, listener:Void -> Void):Client;
	@:overload(function(event:Connect, cb:Connection -> Void):Client { })
	@:overload(function(event:ConnectFailed, cb:Error -> Void):Client { })
	function addListener(event:String, listener:Void -> Void):Client;
}
extern class RouterRequest extends events.EventEmitter {
	var httpRequest : http.ClientRequest;
	var resource : String;
	var resourceURL : url.Url;
	var remoteAddress : String;
	var origin : String;
	var webSocketVersion : Float;
	var requestedExtensions : Array<Dynamic>;
	var cookies : Array<ICookie>;
	function new(webSocketRequest:Request, resolvedProtocol:String):Void;
	function accept(?acceptedProtocol:String, ?allowedOrigin:String, ?cookies:Array<ICookie>):Connection;
	function reject(?httpStatus:Float, ?reason:String):Void;
	@:overload(function(event:RequestAccepted, cb:Connection -> Void):Request { })
	@:overload(function(event:RequestRejected, cb:Void -> Void):Request { })
	function on(event:String, listener:Void -> Void):Request;
	@:overload(function(event:RequestAccepted, cb:Connection -> Void):Request { })
	@:overload(function(event:RequestRejected, cb:Void -> Void):Request { })
	function addListener(event:String, listener:Void -> Void):Request;
}
typedef IRouterConfig = {
	var server : Server;
};
extern class Router extends events.EventEmitter {
	function new(?config:IRouterConfig):Void;
	function attachServer(server:Server):Void;
	function detachServer():Void;
	@:overload(function(path:String, protocol:String, cb:RouterRequest -> Void):Void { })
	@:overload(function(path:js.RegExp, cb:RouterRequest -> Void):Void { })
	@:overload(function(path:js.RegExp, protocol:String, cb:RouterRequest -> Void):Void { })
	function mount(path:String, cb:RouterRequest -> Void):Void;
	@:overload(function(path:js.RegExp, ?protocol:String):Void { })
	function unmount(path:String, ?protocol:String):Void;
}
extern class WebsocketTopLevel {
	static var version : String;
	static var constants : { var DEBUG : Bool; };
}
extern class WebsocketTopLevel {
	static var version : String;
	static var constants : { var DEBUG : Bool; };
}
