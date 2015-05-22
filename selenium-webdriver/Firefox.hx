extern class Binary {
	function new(?opt_exe:String):Void;
	function addArguments(var_args:haxe.extern.Rest<String>):Void;
	function launch(profile:String):webdriver.promise.Promise<Dynamic>;
	function kill():webdriver.promise.Promise<Void>;
}
extern class Driver extends webdriver.WebDriver {
	@:overload(function(?opt_config:Dynamic, ?opt_flow:webdriver.promise.ControlFlow):Void { })
	function new(?opt_config:webdriver.Capabilities, ?opt_flow:webdriver.promise.ControlFlow):Void;
}
extern class Options {
	function new():Void;
	@:overload(function(profile:Profile):Options { })
	function setProfile(profile:String):Options;
	@:overload(function(binary:Binary):Options { })
	function setBinary(binary:String):Options;
	function setLoggingPreferences(prefs:webdriver.logging.Preferences):Options;
	function setProxy(proxy:webdriver.ProxyConfig):Options;
	function toCapabilities(?opt_remote:Dynamic):webdriver.Capabilities;
}
extern class Profile {
	function new(?opt_dir:String):Void;
	function addExtension(extension:String):Void;
	@:overload(function(key:String, value:Float):Void { })
	@:overload(function(key:String, value:Bool):Void { })
	function setPreference(key:String, value:String):Void;
	function getPreference(key:String):Dynamic;
	function getPort():Float;
	function setPort(port:Float):Void;
	function acceptUntrustedCerts():Bool;
	function setAcceptUntrustedCerts(value:Bool):Void;
	function setAssumeUntrustedCertIssuer(value:Bool):Void;
	function assumeUntrustedCertIssuer():Bool;
	function setNativeEventsEnabled(enabled:Bool):Void;
	function nativeEventsEnabled():Bool;
	function writeToDisk(?opt_excludeWebDriverExt:Bool):webdriver.promise.Promise<String>;
	function encode():webdriver.promise.Promise<String>;
}
