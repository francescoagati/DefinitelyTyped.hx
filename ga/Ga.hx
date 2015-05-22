extern class Tracker {
	function _trackPageview():Void;
	function _getName():String;
	function _getAccount():String;
	function _getVersion():String;
	function _getVisitorCustomVar(index:Float):String;
	function _setAccount():String;
	function _setCustomVar(index:Float, name:String, value:String, ?opt_scope:Float):Bool;
	function _setSampleRate(newRate:String):Void;
	function _setSessionCookieTimeout(cookieTimeoutMillis:Float):Void;
	function _setSiteSpeedSampleRate(sampleRate:Float):Void;
	function _setVisitorCookieTimeout(milliseconds:Float):Void;
	function _trackPageLoadTime():Void;
}
typedef GoogleAnalyticsCode = {
	@:overload(function(func:haxe.Constraints.Function):Void { })
	function push(commandArray:Array<String>):Void;
};
typedef GoogleAnalyticsTracker = {
	function _getTracker(account:String):Tracker;
	function _createTracker(opt_account:String, ?opt_name:String):Tracker;
	function _getTrackerByName(?opt_name:String):Tracker;
	function _anonymizeIp():Void;
};
typedef GoogleAnalytics = {
	var type : String;
	var src : String;
	var async : Bool;
};
