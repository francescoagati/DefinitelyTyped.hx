typedef RemoteInfo = {
	var address : String;
	var port : Float;
	var size : Float;
};
typedef AddressInfo = {
	var address : String;
	var family : String;
	var port : Float;
};
typedef Socket = {
	>events.EventEmitter,
	function send(buf:Buffer, offset:Float, length:Float, port:Float, address:String, ?callback:Error -> Float -> Void):Void;
	function bind(port:Float, ?address:String, ?callback:Void -> Void):Void;
	function close():Void;
	function address():AddressInfo;
	function setBroadcast(flag:Bool):Void;
	function setMulticastTTL(ttl:Float):Void;
	function setMulticastLoopback(flag:Bool):Void;
	function addMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function dropMembership(multicastAddress:String, ?multicastInterface:String):Void;
};
extern class DgramTopLevel {
	static function createSocket(type:String, ?callback:Buffer -> RemoteInfo -> Void):Socket;
}
