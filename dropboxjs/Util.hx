extern class EventSource {
	function new(options:{ var cancelable : Bool; }):Void;
	function addListener(listener:Dynamic -> Void):EventSource;
	function removeListener(listener:Dynamic -> Void):EventSource;
	function dispatch(event:{ }):Bool;
}
extern class Oauth {
	static function queryParamsFromUrl(url:String):QueryParams;
	static function randomAuthStateParam():String;
	function checkAuthStateParam(stateParam:String):Bool;
}
extern class Xhr {
	var xhr : XMLHttpRequest;
	var onError : ApiError -> ApiError -> Void -> Void;
	function new(method:String, baseUrl:String):Void;
	static function urlEncode(obj:{ }):String;
	static function urlEncodeValue(obj:{ }):String;
	static function urlDecode(string:{ }):QueryParams;
	function setParams(params:QueryParams):Xhr;
	function setCallback(callback:ApiError -> String -> { } -> { } -> Void):Xhr;
	function signWithOauth(oauth:Oauth, cacheFriendly:Bool):Xhr;
	function addOauthParams(oauth:Oauth):Xhr;
	function addOauthHeader(oauth:Oauth):Xhr;
	@:overload(function(body:Blob):Xhr { })
	@:overload(function(body:ArrayBuffer):Xhr { })
	function setBody(body:String):Xhr;
	function setResponseType(responseType:String):Xhr;
	function setHeader(headerName:String, value:String):Xhr;
	function reportResponseHeaders():Xhr;
	@:overload(function(fieldName:String, fileName:String, fileData:Blob, ?contentType:String):Void { })
	@:overload(function(fieldName:String, fileName:String, fileData:File, ?contentType:String):Void { })
	function setFileField(fieldName:String, fileName:String, fileData:String, ?contentType:String):Void;
	function prepare():Xhr;
	function send(callback:ApiError -> String -> { } -> Void):Xhr;
	function onReadyStateChange():Void;
	function onXdrLoad():Void;
	function onXdrError():Void;
}
