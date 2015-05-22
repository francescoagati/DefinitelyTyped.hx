typedef EventEmitter = {
	function emit(name:String, data:haxe.extern.Rest<Dynamic>):Dynamic;
	function on(ns:String, fn:haxe.Constraints.Function):EventEmitter;
	function addListener(ns:String, fn:haxe.Constraints.Function):EventEmitter;
	function removeListener(ns:String, fn:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(ns:String):EventEmitter;
	function once(ns:String, fn:haxe.Constraints.Function):EventEmitter;
	function listeners(ns:String):Array<haxe.Constraints.Function>;
};
typedef SocketNamespace = {
	>EventEmitter,
	function of(name:String):SocketNamespace;
	function send(data:Dynamic, fn:haxe.Constraints.Function):SocketNamespace;
	function emit(name:String):SocketNamespace;
};
typedef Socket = {
	>EventEmitter,
	function of(name:String):SocketNamespace;
	function connect(fn:haxe.Constraints.Function):Socket;
	function packet(data:Dynamic):Socket;
	function flushBuffer():Void;
	function disconnect():Socket;
};
