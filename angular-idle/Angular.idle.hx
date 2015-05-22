typedef IKeepAliveProvider = {
	>IServiceProvider,
	function http(value:Dynamic):Void;
	function interval(seconds:Float):Void;
};
typedef IKeepAliveService = {
	function start():Void;
	function stop():Void;
	function ping():Void;
};
typedef IIdleProvider = {
	>IServiceProvider,
	function activeOn(events:String):Void;
	function idleDuration(seconds:Float):Void;
	function warningDuration(seconds:Float):Void;
	function autoResume(enabled:Bool):Void;
	function keepalive(enabled:Bool):Void;
};
typedef IIdleService = {
	function running():Bool;
	function idling():Bool;
	function watch():Void;
	function unwatch():Void;
};
