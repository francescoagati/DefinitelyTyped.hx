extern class WebRequest {
	function get_url():String;
	function set_url(value:String):Void;
	function get_httpVerb():String;
	function set_httpVerb(value:String):Void;
	function get_timeout():Float;
	function set_timeout(value:Float):Void;
	function get_body():String;
	function set_body(value:String):Void;
	function get_headers():{ };
	function get_userContext():Dynamic;
	function set_userContext(value:Dynamic):Void;
	function get_executor():WebRequestExecutor;
	function set_executor(value:WebRequestExecutor):Void;
	function getResolvedUrl():Dynamic;
	var string : Dynamic;
	function invoke():Void;
	function completed(args:Sys.EventArgs):Void;
	function add_completed(handler:WebRequestExecutor -> Sys.EventArgs -> Void):Void;
	function remove_completed(handler:WebRequestExecutor -> Sys.EventArgs -> Void):Void;
}
extern class WebRequestExecutor {
	function get_aborted():Bool;
	function get_responseAvailable():Bool;
	function get_responseData():String;
	function get_object():Dynamic;
	function get_started():Bool;
	function get_statusCode():Float;
	function get_statusText():String;
	function get_timedOut():Bool;
	function get_xml():Document;
	function get_webRequest():WebRequest;
	function abort():Void;
	function executeRequest():Void;
	function getAllResponseHeaders():String;
	function getResponseHeader(key:String):String;
}
extern class NetworkRequestEventArgs extends EventArgs {
	function get_webRequest():WebRequest;
}
extern class WebRequestManager {
	static function get_defaultExecutorType():String;
	static function set_defaultExecutorType(value:String):Void;
	static function get_defaultTimeout():Float;
	static function set_defaultTimeout(value:Float):Void;
	static function executeRequest(request:WebRequest):Void;
	static function add_completedRequest(handler:WebRequestExecutor -> Sys.EventArgs -> Void):Void;
	static function remove_completedRequest(handler:WebRequestExecutor -> Sys.EventArgs -> Void):Void;
	static function add_invokingRequest(handler:WebRequestExecutor -> NetworkRequestEventArgs -> Void):Void;
	static function remove_invokingRequest(handler:WebRequestExecutor -> NetworkRequestEventArgs -> Void):Void;
}
extern class WebServiceProxy {
	static function invoke(servicePath:String, methodName:String, ?useGet:Bool, ?params:Dynamic, ?onSuccess:String -> EventArgs -> Void, ?onFailure:WebServiceError -> Void, ?userContext:Dynamic, ?timeout:Float, ?enableJsonp:Bool, ?jsonpCallbackParameter:String):WebRequest;
}
extern class WebServiceError {
	function get_errorObject():Dynamic;
	function get_exceptionType():Dynamic;
	function get_message():String;
	function get_stackTrace():String;
	function get_statusCode():Float;
	function get_timedOut():Bool;
}
typedef IDisposable = {
	function dispose():Void;
};
