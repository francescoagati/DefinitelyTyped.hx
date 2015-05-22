extern class Client extends events.EventEmitter {
	var conn : net.Socket;
	var chans : { };
	var supported : { var channel : { var idlength : Array<String>; var length : Float; var limit : Array<String>; var modes : { }; var types : String; }; var kicklength : Float; var maxlist : Array<Float>; var maxtargets : Array<String>; var modes : Float; var nicklength : Float; var topiclength : Float; var usermodes : String; };
	var nick : String;
	var channellist : Array<IChannel>;
	var motd : String;
	var maxLineLength : Float;
	var opt : IClientOpts;
	var hostMask : String;
	function new(server:String, nick:String, ?opts:IClientOpts):Void;
	function send(command:String, args:haxe.extern.Rest<String>):Void;
	function join(channel:String, ?callback:handlers.IJoinChannel):Void;
	function part(channel:String, message:String, callback:handlers.IPartChannel):Void;
	function say(target:String, message:String):Void;
	function ctcp(target:String, type:String, text:String):Void;
	function action(target:String, message:String):Void;
	function notice(target:String, message:String):Void;
	function whois(nick:String, callback:handlers.IWhois):Void;
	function list(args:haxe.extern.Rest<String>):Void;
	function connect(?retryCount:Float, ?callback:handlers.IRaw):Void;
	function disconnect(message:String, callback:Void -> Void):Void;
	function activateFloodProtection(interval:Float):Void;
}
typedef IClientOpts = {
	@:optional
	var userName : String;
	@:optional
	var realName : String;
	@:optional
	var port : Float;
	@:optional
	var localAddress : String;
	@:optional
	var debug : Bool;
	@:optional
	var showErrors : Bool;
	@:optional
	var autoRejoin : Bool;
	@:optional
	var autoConnect : Bool;
	@:optional
	var channels : Array<String>;
	@:optional
	var secure : haxe.extern.EitherType<Bool, crypto.Credentials>;
	@:optional
	var selfSigned : Bool;
	@:optional
	var certExpired : Bool;
	@:optional
	var floodProtection : Bool;
	@:optional
	var floodProtectionDelay : Float;
	@:optional
	var sasl : Bool;
	@:optional
	var stripColors : Bool;
	@:optional
	var channelPrefixes : String;
	@:optional
	var messageSplit : Float;
	@:optional
	var encoding : String;
};
@:enum abstract CommandType(Int) {
	var normal = 0;
	var reply = 1;
	var error = 2;
}
typedef IMessage = {
	@:optional
	var prefix : String;
	var command : String;
	var rawCommand : String;
	var commandType : CommandType;
	var args : Array<String>;
};
typedef IWhoisData = {
	var nick : String;
	var user : String;
	var host : String;
	var realname : String;
	var channels : Array<String>;
	var server : String;
	var serverinfo : String;
	var operator : String;
};
typedef IChannel = {
	var name : String;
	var users : String;
	var topic : String;
};
