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
	var remoteAddress : String;
	var remotePort : Float;
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
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
};
extern class Chrome.sockets.udpTopLevel {
	static function create(callback:CreateInfo -> Void):Void;
	static function create(properties:SocketProperties, callback:CreateInfo -> Void):Void;
	static function update(socketId:Float, properties:SocketProperties, ?callback:Void -> Void):Void;
	static function setPaused(socketId:Float, paused:Bool, ?callback:Void -> Void):Void;
	static function bind(socketId:Float, address:String, port:Float, callback:Float -> Void):Void;
	static function send(socketId:Float, data:ArrayBuffer, address:String, port:Float, callback:SendInfo -> Void):Void;
	static function close(socketId:Float, ?callback:Void -> Void):Void;
	static function getInfo(socketId:Float, callback:SocketInfo -> Void):Void;
	static function getSockets(callback:Array<SocketInfo> -> Void):Void;
	static function joinGroup(socketId:Float, address:String, callback:Float -> Void):Void;
	static function leaveGroup(socketId:Float, address:String, callback:Float -> Void):Void;
	static function setMulticastTimeToLive(socketId:Float, ttl:Float, callback:Float -> Void):Void;
	static function setMulticastLoopbackMode(socketId:Float, enabled:Bool, callback:Float -> Void):Void;
	static function getJoinedGroups(socketId:Float, callback:Array<String> -> Void):Void;
	static var onReceive : Event<ReceiveEventArgs>;
	static var onReceiveError : Event<ReceiveErrorEventArgs>;
}
