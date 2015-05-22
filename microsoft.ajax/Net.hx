extern class NetWorkRequestEventArgs {
	function new(value:WebRequest):Void;
	function get_webRequest():WebRequest;
}
extern class WebRequest {
	function new():Void;
	function add_completed(handler:Dynamic -> Sys.EventArgs -> Void):Void;
	function remove_completed(handler:Dynamic -> Sys.EventArgs -> Void):Void;
	function getResolvedUrl():String;
	function invoke():Void;
	function completed(eventArgs:Sys.EventArgs):Void;
}
extern class WebRequestExecutor {
	function new():Void;
	function abort():Void;
	function executeRequest():Void;
	function getAllResponseHeaders():String;
	function getResponseHeader():String;
	function object():Dynamic;
	function get_aborted():Bool;
	function get_responseAvailable():Bool;
	function get_responseData():String;
	function get_started():Bool;
	function get_statusCode():Float;
	function get_statusText():String;
	function get_timedOut():Bool;
	function get_xml():XMLDocument;
	function get_webRequest():Sys.Net.WebRequest;
}
extern class IWebRequestManager {
	function new():Void;
	function add_completedRequest(handler:Dynamic -> Dynamic -> Void):Void;
	function add_invokingRequest(handler:Dynamic -> Dynamic -> Void):Void;
	function executeRequest(WebRequest:Sys.Net.WebRequest):Void;
	function remove_completedRequest(handler:haxe.Constraints.Function):Void;
	function remove_invokingRequest(handler:haxe.Constraints.Function):Void;
	function get_defaultExecutorType():Sys.Net.WebRequestExecutor;
	function set_defaultExecutorType(value:Sys.Net.WebRequestExecutor):Void;
	function get_defaultTimeout():Float;
	function set_defaultTimeout(value:Float):Void;
}
extern class NetTopLevel {
	static var WebRequestManager : IWebRequestManager;
}
