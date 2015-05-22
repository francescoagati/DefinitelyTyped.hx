typedef CreateInfo = {
	var socketId : Float;
};
typedef Event<T> = {
	function addListener(callback:T -> Void):Void;
};
typedef AcceptEventArgs = {
	var socketId : Float;
	var clientSocketId : Float;
};
typedef AcceptErrorEventArgs = {
	var socketId : Float;
	var resultCode : Float;
};
typedef SocketProperties = {
	@:optional
	var persistent : Bool;
	@:optional
	var name : String;
};
typedef SocketInfo = {
	var socketId : Float;
	var persistent : Bool;
	@:optional
	var name : String;
	var paused : Bool;
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
};
extern class Chrome.sockets.tcpServerTopLevel {
	static function create(callback:CreateInfo -> Void):Void;
	static function create(properties:SocketProperties, callback:CreateInfo -> Void):Void;
	static function update(socketId:Float, properties:SocketProperties, ?callback:Void -> Void):Void;
	static function setPaused(socketId:Float, paused:Bool, ?callback:Void -> Void):Void;
	static function listen(socketId:Float, address:String, port:Float, backlog:Float, callback:Float -> Void):Void;
	static function listen(socketId:Float, address:String, port:Float, callback:Float -> Void):Void;
	static function disconnect(socketId:Float, ?callback:Void -> Void):Void;
	static function close(socketId:Float, ?callback:Void -> Void):Void;
	static function getInfo(socketId:Float, callback:Array<SocketInfo> -> Void):Void;
	static var onAccept : Event<AcceptEventArgs>;
	static var onAcceptError : Event<AcceptErrorEventArgs>;
}
