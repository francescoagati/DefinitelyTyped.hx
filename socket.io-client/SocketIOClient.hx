typedef Socket = {
	function on(event:String, fn:haxe.Constraints.Function):Socket;
	function once(event:String, fn:haxe.Constraints.Function):Socket;
	function off(?event:String, ?fn:haxe.Constraints.Function):Socket;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Socket;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function hasListeners(event:String):Bool;
	var connected : Bool;
};
typedef ManagerStatic = {
	function new(url:String, opts:Dynamic):SocketIOClient.Manager;
};
typedef Manager = {
	function reconnection(v:Bool):Manager;
	function reconnectionAttempts(v:Bool):Manager;
	function reconnectionDelay(v:Bool):Manager;
	function reconnectionDelayMax(v:Bool):Manager;
	function timeout(v:Bool):Manager;
};
