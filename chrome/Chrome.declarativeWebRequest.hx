typedef HeaderFilter = {
	@:optional
	var nameEquals : String;
	@:optional
	var valueContains : Dynamic;
	@:optional
	var nameSuffix : String;
	@:optional
	var valueSuffix : String;
	@:optional
	var valuePrefix : String;
	@:optional
	var nameContains : Dynamic;
	@:optional
	var valueEquals : String;
	@:optional
	var namePrefix : String;
};
typedef AddResponseHeader = {
	var name : String;
	var value : String;
};
typedef RemoveResponseCookie = {
	var filter : ResponseCookie;
};
typedef RemoveResponseHeader = {
	var name : String;
	@:optional
	var value : String;
};
typedef RequestMatcher = {
	@:optional
	var contentType : Array<String>;
	@:optional
	var url : chrome.events.UrlFilter;
	@:optional
	var excludeContentType : Array<String>;
	@:optional
	var excludeResponseHeader : Array<HeaderFilter>;
	@:optional
	var resourceType : String;
	@:optional
	var responseHeaders : Array<HeaderFilter>;
};
typedef IgnoreRules = {
	var lowerPriorityThan : Float;
};
typedef RedirectToEmptyDocument = { };
typedef RedirectRequest = {
	var redirectUrl : String;
};
typedef ResponseCookie = {
	@:optional
	var domain : String;
	@:optional
	var name : String;
	@:optional
	var expires : String;
	@:optional
	var maxAge : Float;
	@:optional
	var value : String;
	@:optional
	var path : String;
	@:optional
	var httpOnly : String;
	@:optional
	var secure : String;
};
typedef AddResponseCookie = {
	var cookie : ResponseCookie;
};
typedef EditResponseCookie = {
	var filter : ResponseCookie;
	var modification : ResponseCookie;
};
typedef CancelRequest = { };
typedef RemoveRequestHeader = {
	var name : String;
};
typedef EditRequestCookie = {
	var filter : RequestCookie;
	var modification : RequestCookie;
};
typedef SetRequestHeader = {
	var name : String;
	var value : String;
};
typedef RequestCookie = {
	@:optional
	var name : String;
	@:optional
	var value : String;
};
typedef RedirectByRegEx = {
	var to : String;
	var from : String;
};
typedef RedirectToTransparentImage = { };
typedef AddRequestCookie = {
	var cookie : RequestCookie;
};
typedef RemoveRequestCookie = {
	var filter : RequestCookie;
};
typedef RequestedEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
extern class Chrome.declarativeWebRequestTopLevel {
	static var onRequest : RequestedEvent;
}
