typedef AuthCredentials = {
	var username : String;
	var password : String;
};
typedef HttpHeader = {
	var name : String;
	@:optional
	var value : String;
	@:optional
	var binaryValue : ArrayBuffer;
};
typedef BlockingResponse = {
	@:optional
	var cancel : Bool;
	@:optional
	var redirectUrl : String;
	@:optional
	var responseHeaders : Array<HttpHeader>;
	@:optional
	var authCredentials : AuthCredentials;
	@:optional
	var requestHeaders : Array<HttpHeader>;
};
typedef RequestFilter = {
	@:optional
	var tabId : Float;
	@:optional
	var types : Array<String>;
	var urls : Array<String>;
	@:optional
	var windowId : Float;
};
typedef UploadData = {
	@:optional
	var bytes : ArrayBuffer;
	@:optional
	var file : String;
};
typedef CallbackDetails = {
	var requestId : String;
	var url : String;
	var method : String;
	var tabId : Float;
	var frameId : Float;
	var parentFrameId : Float;
	var timeStamp : Float;
	var type : String;
};
typedef OnCompletedDetails = {
	>CallbackDetails,
	@:optional
	var ip : String;
	var statusLine : String;
	@:optional
	var responseHeaders : Array<HttpHeader>;
	var fromCache : Bool;
	var statusCode : Float;
};
typedef OnHeadersReceivedDetails = {
	>CallbackDetails,
	var statusLine : String;
	@:optional
	var responseHeaders : Array<HttpHeader>;
};
typedef OnBeforeRedirectDetails = {
	>CallbackDetails,
	@:optional
	var ip : String;
	var statusLine : String;
	@:optional
	var responseHeaders : Array<HttpHeader>;
	var fromCache : Bool;
	var redirectUrl : String;
	var statusCode : Float;
};
typedef Challenger = {
	var host : String;
	var port : Float;
};
typedef OnAuthRequiredDetails = {
	>CallbackDetails,
	var statusLine : String;
	var challenger : Challenger;
	@:optional
	var responseHeaders : Array<HttpHeader>;
	var isProxy : Bool;
	@:optional
	var realm : String;
	var scheme : String;
};
typedef OnBeforeSendHeadersDetails = {
	>CallbackDetails,
	@:optional
	var requestHeaders : Array<HttpHeader>;
};
typedef OnErrorOccurredDetails = {
	>CallbackDetails,
	@:optional
	var ip : String;
	var fromCache : Bool;
	var error : String;
};
typedef OnResponseStartedDetails = {
	>CallbackDetails,
	@:optional
	var ip : String;
	var statusLine : String;
	@:optional
	var responseHeaders : Array<HttpHeader>;
	var fromCache : Bool;
	var statusCode : Float;
};
typedef OnSendHeadersDetails = {
	>CallbackDetails,
	@:optional
	var requestHeaders : Array<HttpHeader>;
};
typedef FormData = { };
typedef RequestBody = {
	@:optional
	var raw : Array<UploadData>;
	@:optional
	var error : String;
	@:optional
	var formData : FormData;
};
typedef OnBeforeRequestDetails = {
	>CallbackDetails,
	@:optional
	var requestBody : RequestBody;
};
typedef WebRequestCompletedEvent = {
	>chrome.events.Event,
	function addListener(callback:OnCompletedDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnCompletedDetails -> BlockingResponse):Void;
};
typedef WebRequestHeadersReceivedEvent = {
	>chrome.events.Event,
	function addListener(callback:OnHeadersReceivedDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnHeadersReceivedDetails -> BlockingResponse):Void;
};
typedef WebRequestBeforeRedirectEvent = {
	>chrome.events.Event,
	function addListener(callback:OnBeforeRedirectDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnBeforeRedirectDetails -> BlockingResponse):Void;
};
typedef WebRequestAuthRequiredEvent = {
	>chrome.events.Event,
	function addListener(callback:OnAuthRequiredDetails -> ?BlockingResponse -> Void -> Void, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnAuthRequiredDetails -> ?BlockingResponse -> Void -> Void):Void;
};
typedef WebRequestBeforeSendHeadersEvent = {
	>chrome.events.Event,
	function addListener(callback:OnBeforeSendHeadersDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnBeforeSendHeadersDetails -> BlockingResponse):Void;
};
typedef WebRequestErrorOccurredEvent = {
	>chrome.events.Event,
	function addListener(callback:OnErrorOccurredDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnErrorOccurredDetails -> BlockingResponse):Void;
};
typedef WebRequestResponseStartedEvent = {
	>chrome.events.Event,
	function addListener(callback:OnResponseStartedDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnResponseStartedDetails -> BlockingResponse):Void;
};
typedef WebRequestSendHeadersEvent = {
	>chrome.events.Event,
	function addListener(callback:OnSendHeadersDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnSendHeadersDetails -> BlockingResponse):Void;
};
typedef WebRequestBeforeRequestEvent = {
	>chrome.events.Event,
	function addListener(callback:OnBeforeRequestDetails -> BlockingResponse, ?filter:RequestFilter, ?opt_extraInfoSpec:Array<String>):Void;
	function removeListener(callback:OnBeforeRequestDetails -> BlockingResponse):Void;
};
extern class Chrome.webRequestTopLevel {
	static var MAX_HANDLER_BEHAVIOR_CHANGED_CALLS_PER_10_MINUTES : Float;
	static function handlerBehaviorChanged(?callback:haxe.Constraints.Function):Void;
	static var onCompleted : WebRequestCompletedEvent;
	static var onHeadersReceived : WebRequestHeadersReceivedEvent;
	static var onBeforeRedirect : WebRequestBeforeRedirectEvent;
	static var onAuthRequired : WebRequestAuthRequiredEvent;
	static var onBeforeSendHeaders : WebRequestBeforeSendHeadersEvent;
	static var onErrorOccurred : WebRequestErrorOccurredEvent;
	static var onResponseStarted : WebRequestResponseStartedEvent;
	static var onSendHeaders : WebRequestSendHeadersEvent;
	static var onBeforeRequest : WebRequestBeforeRequestEvent;
}
