typedef IMessageOptions = {
	@:optional
	var collapseKey : String;
	@:optional
	var delayWhileIdle : Bool;
	@:optional
	var timeToLive : Float;
	@:optional
	var dryRun : Bool;
};
extern class Message {
	function new(?options:IMessageOptions):Void;
	var collapseKey : String;
	var delayWhileIdle : Bool;
	var timeToLive : Float;
	var dryRun : Bool;
	@:overload(function(data:Dynamic):Void { })
	function addData(key:String, value:String):Void;
}
typedef ISenderOptions = {
	@:optional
	var proxy : Dynamic;
	@:optional
	var maxSockets : Float;
	@:optional
	var timeout : Float;
};
typedef ISenderSendOptions = {
	@:optional
	var retries : Float;
	@:optional
	var backoff : Float;
};
extern class Sender {
	function new(key:String, ?options:ISenderOptions):Void;
	var key : String;
	var options : ISenderOptions;
	@:overload(function(message:Message, registrationIds:haxe.extern.EitherType<String, Array<String>>, retries:Float, callback:Dynamic -> IResponseBody -> Void):Void { })
	@:overload(function(message:Message, registrationIds:haxe.extern.EitherType<String, Array<String>>, options:ISenderSendOptions, callback:Dynamic -> IResponseBody -> Void):Void { })
	function send(message:Message, registrationIds:haxe.extern.EitherType<String, Array<String>>, callback:Dynamic -> IResponseBody -> Void):Void;
	function sendNoRetry(message:Message, registrationIds:haxe.extern.EitherType<String, Array<String>>, callback:Dynamic -> IResponseBody -> Void):Void;
}
typedef IResponseBody = {
	var success : Float;
	var failure : Float;
	var canonical_ids : Float;
	@:optional
	var multicast_id : Float;
	@:optional
	var results : Array<{ @:optional
	var message_id : String; @:optional
	var registration_id : String; @:optional
	var error : String; }>;
};
