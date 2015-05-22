typedef ExtensionInfo = {
	@:optional
	var disabledReason : String;
	@:optional
	var appLaunchUrl : String;
	var description : String;
	var permissions : Array<String>;
	@:optional
	var icons : Array<IconInfo>;
	var hostPermissions : Array<String>;
	var enabled : Bool;
	@:optional
	var homepageUrl : String;
	var mayDisable : Bool;
	var installType : String;
	var version : String;
	var id : String;
	var offlineEnabled : Bool;
	@:optional
	var updateUrl : String;
	var type : String;
	var optionsUrl : String;
	var name : String;
};
typedef IconInfo = {
	var url : String;
	var size : Float;
};
typedef UninstallOptions = {
	@:optional
	var showConfirmDialog : Bool;
};
typedef ManagementDisabledEvent = {
	>chrome.events.Event,
	function addListener(callback:ExtensionInfo -> Void):Void;
};
typedef ManagementUninstalledEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
typedef ManagementInstalledEvent = {
	>chrome.events.Event,
	function addListener(callback:ExtensionInfo -> Void):Void;
};
typedef ManagementEnabledEvent = {
	>chrome.events.Event,
	function addListener(callback:ExtensionInfo -> Void):Void;
};
extern class Chrome.managementTopLevel {
	static function setEnabled(id:String, enabled:Bool, ?callback:haxe.Constraints.Function):Void;
	static function getPermissionWarningsById(id:String, ?callback:Array<String> -> Void):Void;
	static function get(id:String, ?callback:ExtensionInfo -> Void):Void;
	static function getAll(?callback:Array<ExtensionInfo> -> Void):Void;
	static function getPermissionWarningsByManifest(manifestStr:String, ?callback:Array<String> -> Void):Void;
	static function launchApp(id:String, ?callback:haxe.Constraints.Function):Void;
	static function uninstall(id:String, options:UninstallOptions, ?callback:haxe.Constraints.Function):Void;
	static var onDisabled : ManagementDisabledEvent;
	static var onUninstalled : ManagementUninstalledEvent;
	static var onInstalled : ManagementInstalledEvent;
	static var onEnabled : ManagementEnabledEvent;
}
