extern class Socket.io-clientTopLevel {
	static var io : SocketIOClientStatic;
}
typedef SocketIOClientStatic = {
	@:overload(function(?details:Dynamic):SocketIOClient.Socket { })
	function connect(host:String, ?details:Dynamic):SocketIOClient.Socket;
	var protocol : Float;
	var Socket : { function new(args:haxe.extern.Rest<Dynamic>):SocketIOClient.Socket; };
	var Manager : SocketIOClient.ManagerStatic;
};
extern class Socket.io-clientTopLevel {
	static var io : SocketIOClientStatic;
}
