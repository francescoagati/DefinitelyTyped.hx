typedef Server = {
	function serveClient(v:Bool):Server;
	function path(v:String):Server;
	function adapter(v:Dynamic):Server;
	function origins(v:String):Server;
	var sockets : Namespace;
	@:overload(function(port:Float, ?opts:Dynamic):Server { })
	function attach(srv:Dynamic, ?opts:Dynamic):Server;
	@:overload(function(port:Float, ?opts:Dynamic):Server { })
	function listen(srv:Dynamic, ?opts:Dynamic):Server;
	function bind(srv:Dynamic):Server;
	function onconnection(socket:Dynamic):Server;
	function of(nsp:String):Namespace;
	function emit(name:String, args:haxe.extern.Rest<Dynamic>):Socket;
	function use(fn:haxe.Constraints.Function):Namespace;
	@:overload(function(event:Connect, listener:Socket -> Void):Namespace { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Namespace { })
	function on(event:Connection, listener:Socket -> Void):Namespace;
};
typedef Namespace = {
	>NodeJS.EventEmitter,
	var name : String;
	var connected : { };
	function use(fn:haxe.Constraints.Function):Namespace;
	function in(room:String):Namespace;
	@:overload(function(event:Connect, listener:Socket -> Void):Namespace { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Namespace { })
	function on(event:Connection, listener:Socket -> Void):Namespace;
};
typedef Socket = {
	var rooms : Array<String>;
	var client : Client;
	var conn : Dynamic;
	var request : Dynamic;
	var id : String;
	var handshake : { var headers : Dynamic; var time : String; var address : Dynamic; var xdomain : Bool; var secure : Bool; var issued : Float; var url : String; var query : Dynamic; };
	function emit(name:String, args:haxe.extern.Rest<Dynamic>):Socket;
	function join(name:String, ?fn:haxe.Constraints.Function):Socket;
	function leave(name:String, ?fn:haxe.Constraints.Function):Socket;
	function to(room:String):Socket;
	function in(room:String):Socket;
	function send(args:haxe.extern.Rest<Dynamic>):Socket;
	function write(args:haxe.extern.Rest<Dynamic>):Socket;
	function on(event:String, listener:haxe.Constraints.Function):Socket;
	function once(event:String, listener:haxe.Constraints.Function):Socket;
	function removeListener(event:String, listener:haxe.Constraints.Function):Socket;
	function removeAllListeners(event:String):Socket;
	var broadcast : Socket;
	var volatile : Socket;
	var connected : Bool;
	function disconnect(?close:Bool):Socket;
};
typedef Client = {
	var conn : Dynamic;
	var request : Dynamic;
};
