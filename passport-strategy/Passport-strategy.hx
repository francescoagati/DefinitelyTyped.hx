extern class Strategy {
	function authenticate(req:express.Request, ?options:Dynamic):Void;
	function success(user:Dynamic, info:Dynamic):Void;
	@:overload(function(status:Float):Void { })
	function fail(challenge:Dynamic, status:Float):Void;
	function redirect(url:String, ?status:Float):Void;
	function pass():Void;
	function error(err:Error):Void;
}
