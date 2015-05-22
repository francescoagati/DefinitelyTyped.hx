extern class WebSocket extends events.EventEmitter {
	static var CONNECTING : Float;
	static var OPEN : Float;
	static var CLOSING : Float;
	static var CLOSED : Float;
	var bytesReceived : Float;
	var readyState : Float;
	var protocolVersion : String;
	var url : String;
	var supports : Dynamic;
	var upgradeReq : http.ServerRequest;
	var onopen : { var target : WebSocket; } -> Void;
	var onerror : Error -> Void;
	var onclose : { var wasClean : Bool; var code : Float; var reason : String; var target : WebSocket; } -> Void;
	var onmessage : { var data : Dynamic; var type : String; var target : WebSocket; } -> Void;
	function new(address:String, ?options:{ @:optional
	var protocol : String; @:optional
	var agent : http.Agent; @:optional
	var headers : { }; @:optional
	var protocolVersion : Dynamic; @:optional
	var host : String; @:optional
	var origin : String; @:optional
	var pfx : Dynamic; @:optional
	var key : Dynamic; @:optional
	var passphrase : String; @:optional
	var cert : Dynamic; @:optional
	var ca : Array<Dynamic>; @:optional
	var ciphers : String; @:optional
	var rejectUnauthorized : Bool; }):Void;
	function close(?code:Float, ?data:Dynamic):Void;
	function pause():Void;
	function resume():Void;
	function ping(?data:Dynamic, ?options:{ @:optional
	var mask : Bool; @:optional
	var binary : Bool; }, ?dontFail:Bool):Void;
	function pong(?data:Dynamic, ?options:{ @:optional
	var mask : Bool; @:optional
	var binary : Bool; }, ?dontFail:Bool):Void;
	@:overload(function(data:Dynamic, options:{ @:optional
	var mask : Bool; @:optional
	var binary : Bool; }, ?cb:Error -> Void):Void { })
	function send(data:Dynamic, ?cb:Error -> Void):Void;
	@:overload(function(?cb:Error -> Bool -> Void):Void { })
	function stream(options:{ @:optional
	var mask : Bool; @:optional
	var binary : Bool; }, ?cb:Error -> Bool -> Void):Void;
	function terminate():Void;
	@:overload(function(method:Close, ?cb:{ var wasClean : Bool; var code : Float; var reason : String; var target : WebSocket; } -> Void):Void { })
	@:overload(function(method:Error, ?cb:Error -> Void):Void { })
	@:overload(function(method:Open, ?cb:{ var target : WebSocket; } -> Void):Void { })
	@:overload(function(method:String, ?listener:Void -> Void):Void { })
	function addEventListener(method:Message, ?cb:{ var data : Dynamic; var type : String; var target : WebSocket; } -> Void):Void;
	@:overload(function(event:Close, cb:Float -> String -> Void):WebSocket { })
	@:overload(function(event:Message, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Ping, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Pong, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Open, cb:Void -> Void):WebSocket { })
	@:overload(function(event:String, listener:Void -> Void):WebSocket { })
	function on(event:Error, cb:Error -> Void):WebSocket;
	@:overload(function(event:Close, cb:Float -> String -> Void):WebSocket { })
	@:overload(function(event:Message, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Ping, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Pong, cb:Dynamic -> { var binary : Bool; } -> Void):WebSocket { })
	@:overload(function(event:Open, cb:Void -> Void):WebSocket { })
	@:overload(function(event:String, listener:Void -> Void):WebSocket { })
	function addListener(event:Error, cb:Error -> Void):WebSocket;
}
