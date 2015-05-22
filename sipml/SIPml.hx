extern class Event {
	var description : String;
	var type : String;
	function getContent():Dynamic;
	function getContentString():String;
	function getContentType():Dynamic;
	function getSipResponseCode():Float;
}
extern class EventTarget {
	function addEventListener(type:Dynamic, listener:haxe.Constraints.Function):Void;
	function removeEventListener(type:Dynamic):Void;
}
extern class Session extends EventTarget {
	function accept(?configuration:Session.Configuration):Float;
	function getId():Float;
	function getRemoteFriendlyName():String;
	function getRemoteUri():String;
	function reject(?configuration:Session.Configuration):Float;
	function setConfiguration(?configuration:Session.Configuration):Void;
}
