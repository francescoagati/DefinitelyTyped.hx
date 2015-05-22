typedef Configuration = {
	@:optional
	var audio_remote : HTMLElement;
	@:optional
	var bandwidth : Dynamic;
	@:optional
	var expires : Float;
	@:optional
	var from : String;
	@:optional
	var sip_caps : Array<Dynamic>;
	@:optional
	var sip_headers : Array<Dynamic>;
	@:optional
	var video_local : HTMLElement;
	@:optional
	var video_remote : HTMLElement;
	@:optional
	var video_size : Dynamic;
};
extern class Call extends Session {
	function acceptTransfer(?configuration:Session.Configuration):Float;
	function call(to:String, ?configuration:Session.Configuration):Float;
	function dtmf():Float;
	function hangup(?configuration:Session.Configuration):Float;
	function hold(?configuration:Session.Configuration):Float;
	function info():Float;
	function rejectTransfer():Float;
	function resume():Float;
	function transfer():Float;
}
extern class Event extends SIPml.Event {
	var session : Session;
	function getTransferDestinationFriendlyName():String;
}
extern class Message extends Session {
	function send(to:String, ?content:Dynamic, ?contentType:String, ?configuration:Session.Configuration):Float;
}
extern class Publish extends Session {
	function publish(?content:Dynamic, ?contentType:String, ?configuration:Session.Configuration):Float;
	function unpublish(?configuration:Session.Configuration):Void;
}
extern class Registration extends Session {
	function register(?configuration:Session.Configuration):Void;
	function unregister(?configuration:Session.Configuration):Void;
}
extern class Subscribe extends Session {
	function subscribe(to:String, ?configuration:Session.Configuration):Float;
	function unsubscribe(?configuration:Session.Configuration):Float;
}
extern class Stack extends EventTarget {
	function new(?configuration:Stack.Configuration):Void;
	function setConfiguration(configuration:Stack.Configuration):Float;
	function newSession(type:String, ?configuration:Session.Configuration):Dynamic;
	function start():Float;
	function stop(?timeout:Float):Float;
}
