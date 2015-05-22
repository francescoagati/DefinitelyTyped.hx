typedef Socket = {
	>events.NodeEventEmitter,
	function send(buf:Buffer, offset:Float, length:Float, port:Float, address:String, ?callback:haxe.Constraints.Function):Void;
	function bind(port:Float, ?address:String):Void;
	function close():Void;
	var address : { var address : String; var family : String; var port : Float; };
	function setBroadcast(flag:Bool):Void;
	function setMulticastTTL(ttl:Float):Void;
	function setMulticastLoopback(flag:Bool):Void;
	function addMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function dropMembership(multicastAddress:String, ?multicastInterface:String):Void;
};
extern class DgramTopLevel {
	static function createSocket(type:String, ?callback:haxe.Constraints.Function):Socket;
}
