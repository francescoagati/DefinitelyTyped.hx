typedef SessionOptions = {
	@:optional
	var ipCheck : Bool;
	@:optional
	var uaCheck : Bool;
	@:optional
	var freshTimeout : Float;
	@:optional
	var maxFreshTimeout : Float;
};
extern class Easy-sessionTopLevel {
	static function main(session:Dynamic, ?options:SessionOptions):express.RequestHandler;
	static function isLoggedIn(?errorCallback:haxe.Constraints.Function):express.RequestHandler;
	static function isFresh(?errorCallback:haxe.Constraints.Function):express.RequestHandler;
	static function checkRole(role:String, ?errorCallback:haxe.Constraints.Function):express.RequestHandler;
}
extern class Easy-sessionTopLevel {
	static function main(session:Dynamic, ?options:SessionOptions):express.RequestHandler;
	static function isLoggedIn(?errorCallback:haxe.Constraints.Function):express.RequestHandler;
	static function isFresh(?errorCallback:haxe.Constraints.Function):express.RequestHandler;
	static function checkRole(role:String, ?errorCallback:haxe.Constraints.Function):express.RequestHandler;
}
