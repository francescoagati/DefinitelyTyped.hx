typedef CreateInfo = {
	var socketId : Float;
};
typedef SendInfo = {
	var resultCode : Float;
	@:optional
	var bytesSent : Float;
};
typedef Event<T> = {
	function addListener(callback:T -> Void):Void;
};
typedef ReceiveEventArgs = {
	var socketId : Float;
	var data : ArrayBuffer;
};
typedef ReceiveErrorEventArgs = {
	var socketId : Float;
	var resultCode : Float;
};
typedef SocketProperties = {
	@:optional
	var persistent : Bool;
	@:optional
	var name : String;
	@:optional
	var bufferSize : Float;
};
typedef SocketInfo = {
	var socketId : Float;
	var persistent : Bool;
	@:optional
	var name : String;
	@:optional
	var bufferSize : Float;
	var paused : Bool;
	var connected : Bool;
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	var peerAddress : String;
	@:optional
	var peerPort : Float;
};
extern class Chrome.sockets.tcpTopLevel {
	static function create(callback:CreateInfo -> Void):Void;
	static function create(properties:SocketProperties, callback:CreateInfo -> Void):Void;
	static function update(socketId:Float, properties:SocketProperties, ?callback:Void -> Void):Void;
	static function setPaused(socketId:Float, paused:Bool, ?callback:Void -> Void):Void;
	static function setKeepAlive(socketId:Float, enable:Bool, callback:Float -> Void):Void;
	static function setKeepAlive(socketId:Float, enable:Bool, delay:Float, callback:Float -> Void):Void;
	static function setNoDelay(socketId:Float, noDelay:Bool, callback:Float -> Void):Void;
	static function connect(socketId:Float, peerAddress:String, peerPort:Float, callback:Float -> Void):Void;
	static function disconnect(socketId:Float, ?callback:Void -> Void):Void;
	static function send(socketId:Float, data:ArrayBuffer, callback:SendInfo -> Void):Void;
	static function close(socketId:Float, ?callback:Void -> Void):Void;
	static function getInfo(socketId:Float, callback:SocketInfo -> Void):Void;
	static function getSockets(socketId:Float, callback:Array<SocketInfo> -> Void):Void;
	static var onReceive : Event<ReceiveEventArgs>;
	static var onReceiveError : Event<ReceiveErrorEventArgs>;
}
