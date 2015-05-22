typedef DeployJavaStatic = {
	var brand : String;
	var debug : Bool;
	var EAInstallEnabled : Bool;
	var EarlyAccessURL : String;
	var installType : String;
	var locale : String;
	var myInterval : Float;
	var preInstallJREList : Array<String>;
	var returnPage : String;
	function allowPlugin():Bool;
	function compareVersions(installed:String, required:String):Bool;
	function compareVersionToPattern(version:String, patternArray:Array<String>, familyMatch:Bool, minMatch:Bool):Bool;
	function enableAlerts():Void;
	function FFInstall():Bool;
	function getBrowser():String;
	function getJPIVersionUsingMimeType():Void;
	function getJREs():Array<String>;
	function getPlugin():HTMLElement;
	function IEInstall():Bool;
	function installJRE(requestVersion:String):Bool;
	function installLatestJRE(?installCallback:haxe.Constraints.Function):Bool;
	function isAutoInstallEnabled(?requestedJREVersion:String):Bool;
	function isAutoUpdateEnabled():Bool;
	function isCallbackSupported():Bool;
	function isPlugin2():Bool;
	function isPluginInstalled():Bool;
	function isWebStartInstalled(?minimumVersion:String):Bool;
	function launch(jnlp:String):Bool;
	function launchWebStartApplication(jnlp:String):Void;
	function poll():Void;
	function refresh():Void;
	function runApplet(attributes:Dynamic, parameters:Dynamic, ?minimumVersion:String):Void;
	function setAdditionalPackages(packageList:String):Bool;
	function setAutoUpdateEnabled():Void;
	function setEarlyAccess(enabled:String):Void;
	function setInstallerType(type:String):Bool;
	function testForMSVM():Bool;
	function testUsingActiveX(version:String):Bool;
	function testUsingMimeTypes(version:String):Bool;
	function testUsingPluginsArray(version:String):Bool;
	function versionCheck(versionPattern:String):Bool;
	function writeAppletTag(attributes:Dynamic, parameters:Dynamic):Void;
	function writeEmbedTag():Void;
};