extern class Plugins_historyTopLevel {
	static var interval : Float;
	static var active : Bool;
	static function getHash(?window:Window):String;
	static function getFragment(fragment:String, forcePushState:Bool):String;
	static function activate(options:DurandalHistoryOptions):Bool;
	static function deactivate():Void;
	static function checkUrl():Bool;
	static function loadUrl():Bool;
	static function navigate(fragment:String, ?trigger:Bool):Bool;
	static function navigate(fragment:String, options:DurandalNavigationOptions):Bool;
	static function navigateBack():Void;
}
