typedef TlsOptions = {
	@:optional
	var pfx : Dynamic;
	@:optional
	var key : Dynamic;
	@:optional
	var passphrase : String;
	@:optional
	var cert : Dynamic;
	@:optional
	var ca : Dynamic;
	@:optional
	var crl : Dynamic;
	@:optional
	var ciphers : String;
	@:optional
	var honorCipherOrder : Dynamic;
	@:optional
	var requestCert : Bool;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var NPNProtocols : Dynamic;
	@:optional
	var SNICallback : String -> Dynamic;
};
typedef ConnectionOptions = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var socket : net.Socket;
	@:optional
	var pfx : Dynamic;
	@:optional
	var key : Dynamic;
	@:optional
	var passphrase : String;
	@:optional
	var cert : Dynamic;
	@:optional
	var ca : Dynamic;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var NPNProtocols : Dynamic;
	@:optional
	var servername : String;
};
typedef Server = {
	>net.Server,
	@:overload(function(path:String, ?listeningListener:haxe.Constraints.Function):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:haxe.Constraints.Function):Server { })
	@:overload(function(port:Float, ?host:String, ?callback:haxe.Constraints.Function):Server { })
	function listen(port:Float, ?host:String, ?backlog:Float, ?listeningListener:haxe.Constraints.Function):Server;
	function close():Server;
	function address():{ var port : Float; var family : String; var address : String; };
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
	var maxConnections : Float;
	var connections : Float;
};
typedef ClearTextStream = {
	>stream.Duplex,
	var authorized : Bool;
	var authorizationError : Error;
	function getPeerCertificate():Dynamic;
	var getCipher : { var name : String; var version : String; };
	var address : { var port : Float; var family : String; var address : String; };
	var remoteAddress : String;
	var remotePort : Float;
};
typedef SecurePair = {
	var encrypted : Dynamic;
	var cleartext : Dynamic;
};
extern class TlsTopLevel {
	static var CLIENT_RENEG_LIMIT : Float;
	static var CLIENT_RENEG_WINDOW : Float;
	static function createServer(options:TlsOptions, ?secureConnectionListener:ClearTextStream -> Void):Server;
	static function connect(options:TlsOptions, ?secureConnectionListener:Void -> Void):ClearTextStream;
	static function connect(port:Float, ?host:String, ?options:ConnectionOptions, ?secureConnectListener:Void -> Void):ClearTextStream;
	static function connect(port:Float, ?options:ConnectionOptions, ?secureConnectListener:Void -> Void):ClearTextStream;
	static function createSecurePair(?credentials:crypto.Credentials, ?isServer:Bool, ?requestCert:Bool, ?rejectUnauthorized:Bool):SecurePair;
}
