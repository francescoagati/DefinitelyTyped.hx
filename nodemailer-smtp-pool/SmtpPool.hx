typedef AuthOptions = {
	@:optional
	var user : String;
	@:optional
	var pass : String;
	@:optional
	var xoauth2 : Dynamic;
};
typedef SmtpPoolOptions = {
	@:optional
	var port : Float;
	@:optional
	var host : String;
	@:optional
	var secure : Bool;
	@:optional
	var auth : AuthOptions;
	@:optional
	var ignoreTLS : Bool;
	@:optional
	var name : String;
	@:optional
	var localAddress : String;
	@:optional
	var connectionTimeout : Float;
	@:optional
	var greetingTimeout : Float;
	@:optional
	var socketTimeout : Float;
	@:optional
	var debug : Bool;
	@:optional
	var authMethod : String;
	@:optional
	var tls : tls.ConnectionOptions;
	@:optional
	var maxConnections : Float;
	@:optional
	var maxMessages : Float;
};
