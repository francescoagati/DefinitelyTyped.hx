extern class AuthenticationService {
	function new():Void;
	var DefaultWebServicePath : String;
	function login(userName:String, password:String, isPersistent:Bool, customInfo:Dynamic, redirectUrl:String, loginCompletedCallback:haxe.Constraints.Function, failedCallback:haxe.Constraints.Function, userContext:Dynamic):Void;
	function logout(redirectUrl:String, logoutCompletedCallback:haxe.Constraints.Function, failedCallback:haxe.Constraints.Function, userContext:Dynamic):Void;
	function get_defaultFailedCallback():haxe.Constraints.Function;
	function set_defaultFailedCallback(value:String):Void;
	@:overload(function(value:haxe.Constraints.Function):Void { })
	function defaultSucceededCallback():haxe.Constraints.Function;
	@:overload(function(value:Dynamic):Void { })
	function defaultUserContext():Dynamic;
	function get_isLoggedIn():Bool;
	function set_path(value:String):Void;
	function get_path():String;
	function set_timeout(value:Float):Void;
	function get_timeout():Float;
}
extern class ProfileGroup {
	@:overload(function(properties:Dynamic):Void { })
	function new():Void;
}
extern class RoleService {

}
extern class ProfileService {
	function new():ProfileService;
	static var DefaultWebServicePath : String;
	static var properties : Dynamic;
	static function load(propertyNames:Array<String>, loadCompletedCallback:haxe.Constraints.Function, failedCallback:haxe.Constraints.Function, userContext:Dynamic):Void;
	static function save(propertyNames:Array<String>, saveCompletedCallback:haxe.Constraints.Function, failedCallback:haxe.Constraints.Function, userContext:Dynamic):Void;
	static function set_defaultFailedCallback(value:String):Void;
	static function get_defaultFailedCallback():haxe.Constraints.Function;
	static function set_defaultLoadCompletedCallback(value:String):Void;
	static function get_defaultLoadCompletedCallback():haxe.Constraints.Function;
	static function set_defaultSaveCompletedCallback(value:String):Void;
	static function get_defaultSaveCompletedCallback():haxe.Constraints.Function;
	@:overload(function(value:haxe.Constraints.Function):Void { })
	static function defaultSucceededCallback():haxe.Constraints.Function;
	@:overload(function(value:Dynamic):Void { })
	static function defaultUserContext():Dynamic;
	static function set_path(value:String):Void;
	static function get_path():String;
	static function set_timeout(value:Float):Void;
	static function get_timeout():Float;
}
