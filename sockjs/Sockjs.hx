typedef SockJSSimpleEvent = {
	var type : String;
	function toString():String;
};
typedef SJSOpenEvent = {
	>SockJSSimpleEvent,
};
typedef SJSCloseEvent = {
	>SockJSSimpleEvent,
	var code : Float;
	var reason : String;
	var wasClean : Bool;
};
typedef SJSMessageEvent = {
	>SockJSSimpleEvent,
	var data : String;
};
typedef SockJS = {
	>EventTarget,
	var protocol : String;
	var readyState : Float;
	var onopen : SJSOpenEvent -> Dynamic;
	var onmessage : SJSMessageEvent -> Dynamic;
	var onclose : SJSCloseEvent -> Dynamic;
	function send(data:Dynamic):Void;
	function close(?code:Float, ?reason:String):Void;
	var OPEN : Float;
	var CLOSING : Float;
	var CONNECTING : Float;
	var CLOSED : Float;
};
extern class SockjsTopLevel {
	static var SockJS : { var prototype : SockJS; function new(url:String, ?_reserved:Dynamic, ?options:{ @:optional
	var debug : Bool; @:optional
	var devel : Bool; @:optional
	var protocols_whitelist : Array<String>; @:optional
	var server : String; @:optional
	var rtt : Float; @:optional
	var rto : Float; @:optional
	var info : { @:optional
	var websocket : Bool; @:optional
	var cookie_needed : Bool; @:optional
	var null_origin : Bool; }; }):SockJS; };
}
