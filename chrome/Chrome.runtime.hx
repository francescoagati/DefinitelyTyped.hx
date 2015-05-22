typedef LastError = {
	@:optional
	var message : String;
};
typedef ConnectInfo = {
	@:optional
	var name : String;
};
typedef InstalledDetails = {
	var reason : String;
	@:optional
	var previousVersion : String;
};
typedef MessageOptions = {
	@:optional
	var includeTlsChannelId : Bool;
};
typedef MessageSender = {
	@:optional
	var id : String;
	@:optional
	var tab : chrome.tabs.Tab;
	@:optional
	var frameId : Float;
	@:optional
	var url : String;
	@:optional
	var tlsChannelId : String;
};
typedef PlatformInfo = {
	var os : String;
	var arch : String;
	var nacl_arch : String;
};
typedef Port = {
	var postMessage : Dynamic -> Void;
	var disconnect : Void -> Void;
	@:optional
	var sender : MessageSender;
	var onDisconnect : chrome.events.Event;
	var onMessage : PortMessageEvent;
	var name : String;
};
typedef UpdateAvailableDetails = {
	var version : String;
};
typedef UpdateCheckDetails = {
	var version : String;
};
typedef PortMessageEvent = {
	>chrome.events.Event,
	function addListener(callback:Dynamic -> Port -> Void):Void;
};
typedef ExtensionMessageEvent = {
	>chrome.events.Event,
	function addListener(callback:Dynamic -> MessageSender -> haxe.Constraints.Function -> Void):Void;
};
typedef ExtensionMessageExternalEvent = {
	>chrome.events.Event,
	function addListener(callback:Dynamic -> MessageSender -> haxe.Constraints.Function -> Void):Void;
};
typedef ExtensionConnectEvent = {
	>chrome.events.Event,
	function addListener(callback:Port -> Void):Void;
};
typedef ExtensionConnectExternalEvent = {
	>chrome.events.Event,
	function addListener(callback:Port -> Void):Void;
};
typedef RuntimeSuspendEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef RuntimeStartupEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef RuntimeInstalledEvent = {
	>chrome.events.Event,
	function addListener(callback:InstalledDetails -> Void):Void;
};
typedef RuntimeSuspendCanceledEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef RuntimeMessageEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef RuntimeRestartRequiredEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
typedef RuntimeUpdateAvailableEvent = {
	>chrome.events.Event,
	function addListener(callback:UpdateAvailableDetails -> Void):Void;
};
extern class Chrome.runtimeTopLevel {
	static var lastError : LastError;
	static var id : String;
	static function connect(?connectInfo:ConnectInfo):Port;
	static function connect(extensionId:String, ?connectInfo:ConnectInfo):Port;
	static function connectNative(application:String):Port;
	static function getBackgroundPage(callback:?Window -> Void):Void;
	static function getManifest():Dynamic;
	static function getPackageDirectoryEntry(callback:Dynamic -> Void):Void;
	static function getPlatformInfo(callback:PlatformInfo -> Void):Void;
	static function getURL(path:String):String;
	static function reload():Void;
	static function requestUpdateCheck(callback:String -> ?UpdateCheckDetails -> Void):Void;
	static function restart():Void;
	static function sendMessage(message:Dynamic, ?responseCallback:Dynamic -> Void):Void;
	static function sendMessage(message:Dynamic, options:MessageOptions, ?responseCallback:Dynamic -> Void):Void;
	static function sendMessage(extensionId:String, message:Dynamic, ?responseCallback:Dynamic -> Void):Void;
	static function sendMessage(extensionId:String, message:Dynamic, options:MessageOptions, ?responseCallback:Dynamic -> Void):Void;
	static function sendNativeMessage(application:String, message:Dynamic, ?responseCallback:Dynamic -> Void):Void;
	static function setUninstallUrl(url:String):Void;
	static var onConnect : ExtensionConnectEvent;
	static var onConnectExternal : ExtensionConnectExternalEvent;
	static var onSuspend : RuntimeSuspendEvent;
	static var onStartup : RuntimeStartupEvent;
	static var onInstalled : RuntimeInstalledEvent;
	static var onSuspendCanceled : RuntimeSuspendCanceledEvent;
	static var onMessage : ExtensionMessageEvent;
	static var onMessageExternal : ExtensionMessageExternalEvent;
	static var onRestartRequired : RuntimeRestartRequiredEvent;
	static var onUpdateAvailable : RuntimeUpdateAvailableEvent;
}
