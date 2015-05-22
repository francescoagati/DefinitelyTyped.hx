typedef ServerOptions = {
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
	var honorCipherOrder : Bool;
	@:optional
	var requestCert : Bool;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var NPNProtocols : Dynamic;
	@:optional
	var SNICallback : String -> Dynamic;
};
typedef RequestOptions = {
	@:optional
	var host : String;
	@:optional
	var hostname : String;
	@:optional
	var port : Float;
	@:optional
	var path : String;
	@:optional
	var method : String;
	@:optional
	var headers : Dynamic;
	@:optional
	var auth : String;
	@:optional
	var agent : Dynamic;
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
	var ciphers : String;
	@:optional
	var rejectUnauthorized : Bool;
};
typedef Agent = {
	var maxSockets : Float;
	var sockets : Dynamic;
	var requests : Dynamic;
};
typedef Server = {
	>tls.Server,
};
extern class HttpsTopLevel {
	static var Agent : { function new(?options:RequestOptions):Agent; };
	static function createServer(options:ServerOptions, ?requestListener:haxe.Constraints.Function):Server;
	static function request(options:RequestOptions, ?callback:http.IncomingMessage -> Void):http.ClientRequest;
	static function get(options:RequestOptions, ?callback:http.IncomingMessage -> Void):http.ClientRequest;
	static var globalAgent : Agent;
}
