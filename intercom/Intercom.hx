typedef Intercom = {
	function emit(name:String, ?message:Dynamic):Void;
	function on(name:String, fn:haxe.Constraints.Function):Void;
	function off(name:String, fn:haxe.Constraints.Function):Void;
	function once(key:String, fn:haxe.Constraints.Function, ?ttl:Float):Void;
	function bind(socket:Dynamic, ?options:intercom.SocketBindingOptions):Void;
};
typedef SocketBindingOptions = {
	@:optional
	var send : Dynamic;
	@:optional
	var receive : Dynamic;
};
typedef IntercomStatic = {
	function getInstance():intercom.Intercom;
	function destroy():Void;
};
extern class IntercomTopLevel {
	static var Intercom : IntercomStatic;
}
