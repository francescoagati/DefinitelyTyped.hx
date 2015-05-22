extern class Channel {
	function new(token:String):Void;
	function open(?handler:haxe.Constraints.Function):Socket;
}
extern class Socket {
	function close():Void;
	var onopen : Void -> Void;
	var onmessage : Dynamic -> Void;
	var onerror : haxe.Constraints.Function;
	var onclose : Void -> Void;
}
