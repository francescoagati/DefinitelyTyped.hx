typedef CreateInfo = {
	var socketId : Float;
};
typedef AcceptInfo = {
	var resultCode : Float;
	@:optional
	var socketId : Float;
};
typedef ReadInfo = {
	var resultCode : Float;
	var data : ArrayBuffer;
};
typedef WriteInfo = {
	var bytesWritten : Float;
};
typedef RecvFromInfo = {
	var resultCode : Float;
	var data : ArrayBuffer;
	var port : Float;
	var address : String;
};
typedef SocketInfo = {
	var socketType : String;
	@:optional
	var localPort : Float;
	@:optional
	var peerAddress : String;
	@:optional
	var peerPort : Float;
	@:optional
	var localAddress : String;
	var connected : Bool;
};
typedef NetworkInterface = {
	var name : String;
	var address : String;
};
extern class Chrome.socketTopLevel {
	static function create(type:String, ?options:Dynamic, ?callback:CreateInfo -> Void):Void;
	static function destroy(socketId:Float):Void;
	static function connect(socketId:Float, hostname:String, port:Float, callback:Float -> Void):Void;
	static function bind(socketId:Float, address:String, port:Float, callback:Float -> Void):Void;
	static function disconnect(socketId:Float):Void;
	static function read(socketId:Float, ?bufferSize:Float, ?callback:ReadInfo -> Void):Void;
	static function write(socketId:Float, data:ArrayBuffer, ?callback:WriteInfo -> Void):Void;
	static function recvFrom(socketId:Float, ?bufferSize:Float, ?callback:RecvFromInfo -> Void):Void;
	static function sendTo(socketId:Float, data:ArrayBuffer, address:String, port:Float, ?callback:WriteInfo -> Void):Void;
	static function listen(socketId:Float, address:String, port:Float, ?backlog:Float, ?callback:Float -> Void):Void;
	static function accept(socketId:Float, ?callback:AcceptInfo -> Void):Void;
	static function setKeepAlive(socketId:Float, enable:Bool, ?delay:Float, ?callback:Bool -> Void):Void;
	static function setNoDelay(socketId:Float, noDelay:Bool, ?callback:Bool -> Void):Void;
	static function getInfo(socketId:Float, callback:SocketInfo -> Void):Void;
	static function getNetworkList(callback:Array<NetworkInterface> -> Void):Void;
}
