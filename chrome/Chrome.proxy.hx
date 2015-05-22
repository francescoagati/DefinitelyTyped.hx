typedef PacScript = {
	@:optional
	var url : String;
	@:optional
	var mandatory : Bool;
	@:optional
	var data : String;
};
typedef ProxyConfig = {
	@:optional
	var rules : ProxyRules;
	@:optional
	var pacScript : PacScript;
	var mode : String;
};
typedef ProxyServer = {
	var host : String;
	@:optional
	var scheme : String;
	@:optional
	var port : Float;
};
typedef ProxyRules = {
	@:optional
	var proxyForFtp : ProxyServer;
	@:optional
	var proxyForHttp : ProxyServer;
	@:optional
	var facllbackProxy : ProxyServer;
	@:optional
	var singleProxy : ProxyServer;
	@:optional
	var proxyForHttps : ProxyServer;
	@:optional
	var bypassList : Array<String>;
};
typedef ErrorDetails = {
	var details : String;
	var error : String;
	var fatal : Bool;
};
typedef ProxyErrorEvent = {
	>chrome.events.Event,
	function addListener(callback:ErrorDetails -> Void):Void;
};
extern class Chrome.proxyTopLevel {
	static var settings : chrome.types.ChromeSetting;
	static var onProxyError : ProxyErrorEvent;
}
