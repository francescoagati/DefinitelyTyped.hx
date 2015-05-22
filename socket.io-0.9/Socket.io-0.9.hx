typedef Socket = {
	var id : String;
	var json : Dynamic;
	var log : Dynamic;
	var volatile : Dynamic;
	var broadcast : Dynamic;
	var handshake : Dynamic;
	function in(room:String):Socket;
	function to(room:String):Socket;
	function join(name:String, fn:haxe.Constraints.Function):Socket;
	function leave(name:String, fn:haxe.Constraints.Function):Socket;
	function set(key:String, value:Dynamic, fn:haxe.Constraints.Function):Socket;
	function get(key:String, fn:haxe.Constraints.Function):Socket;
	function has(key:String, fn:haxe.Constraints.Function):Socket;
	function del(key:String, fn:haxe.Constraints.Function):Socket;
	function disconnect():Socket;
	function send(data:Dynamic, fn:haxe.Constraints.Function):Socket;
	function emit(ev:Dynamic, data:haxe.extern.Rest<Dynamic>):Socket;
	function on(ns:String, fn:haxe.Constraints.Function):Socket;
};
typedef SocketNamespace = {
	function clients(room:String):Array<Socket>;
	var log : Dynamic;
	var store : Dynamic;
	var json : Dynamic;
	var volatile : Dynamic;
	function in(room:String):SocketNamespace;
	function on(evt:String, fn:Socket -> Void):SocketNamespace;
	function to(room:String):SocketNamespace;
	function except(id:Dynamic):SocketNamespace;
	function send(data:Dynamic):Dynamic;
	function emit(ev:Dynamic, data:haxe.extern.Rest<Dynamic>):Socket;
	function socket(sid:Dynamic, readable:Bool):Socket;
	function authorization(fn:haxe.Constraints.Function):SocketNamespace;
};
typedef SocketManager = {
	function get(key:Dynamic):Dynamic;
	function set(key:Dynamic, value:Dynamic):SocketManager;
	function enable(key:Dynamic):SocketManager;
	function disable(key:Dynamic):SocketManager;
	function enabled(key:Dynamic):Bool;
	function disabled(key:Dynamic):Bool;
	@:overload(function(fn:haxe.Constraints.Function):SocketManager { })
	function configure(env:String, fn:haxe.Constraints.Function):SocketManager;
	function of(nsp:String):SocketNamespace;
	function on(ns:String, fn:haxe.Constraints.Function):SocketManager;
	var sockets : SocketNamespace;
};
extern class Socket.io-0.9TopLevel {
	static function listen(server:http.Server, options:Dynamic, fn:haxe.Constraints.Function):SocketManager;
	static function listen(server:http.Server, ?fn:haxe.Constraints.Function):SocketManager;
	static function listen(port:Number):SocketManager;
}
extern class Socket.io-0.9TopLevel {
	static function listen(server:http.Server, options:Dynamic, fn:haxe.Constraints.Function):SocketManager;
	static function listen(server:http.Server, ?fn:haxe.Constraints.Function):SocketManager;
	static function listen(port:Number):SocketManager;
}
