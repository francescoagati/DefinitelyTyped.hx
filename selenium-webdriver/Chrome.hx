extern class Driver extends webdriver.WebDriver {
	@:overload(function(?opt_config:Options, ?opt_service:Dynamic, ?opt_flow:webdriver.promise.ControlFlow):Void { })
	function new(?opt_config:webdriver.Capabilities, ?opt_service:Dynamic, ?opt_flow:webdriver.promise.ControlFlow):Void;
}
typedef IOptionsValues = {
	var args : Array<String>;
	@:optional
	var binary : String;
	var detach : Bool;
	var extensions : Array<String>;
	@:optional
	var localState : Dynamic;
	@:optional
	var logFile : String;
	@:optional
	var prefs : Dynamic;
};
extern class Options {
	function new():Void;
	static function fromCapabilities(capabilities:webdriver.Capabilities):Options;
	function addArguments(var_args:haxe.extern.Rest<String>):Options;
	function addExtensions(var_args:haxe.extern.Rest<Dynamic>):Options;
	function setChromeBinaryPath(path:String):Options;
	function detachDriver(detach:Bool):Options;
	function setUserPreferences(prefs:Dynamic):Options;
	function setLoggingPrefs(prefs:webdriver.logging.Preferences):Options;
	function setLocalState(state:Dynamic):Options;
	function setChromeLogFile(path:String):Options;
	function setProxy(proxy:webdriver.ProxyConfig):Options;
	function toCapabilities(?opt_capabilities:webdriver.Capabilities):webdriver.Capabilities;
	function toJSON():IOptionsValues;
}
extern class ServiceBuilder {
	function new(?opt_exe:String):Void;
	function usingPort(port:Float):ServiceBuilder;
	function loggingTo(path:String):ServiceBuilder;
	function enableVerboseLogging():ServiceBuilder;
	function setNumHttpThreads(n:Float):ServiceBuilder;
	function setUrlBasePath(path:String):ServiceBuilder;
	@:overload(function(config:Array<Dynamic>):ServiceBuilder { })
	function setStdio(config:String):ServiceBuilder;
	function withEnvironment(env:{ }):ServiceBuilder;
	function build():Dynamic;
}
extern class ChromeTopLevel {
	static function getDefaultService():Dynamic;
	static function setDefaultService(service:Dynamic):Void;
}
