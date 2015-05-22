typedef ErrorCallback = { };
typedef Session = {
	@:overload(function(extend:Dynamic, callback:ErrorCallback):Void { })
	@:overload(function(role:String, callback:ErrorCallback):Void { })
	@:overload(function(role:String, extend:Dynamic, callback:ErrorCallback):Void { })
	function login(callback:haxe.Constraints.Function):Void;
	function logout(callback:ErrorCallback):Void;
	function isLoggedIn(?role:String):Bool;
	function isGuest():Bool;
	function isFresh():Bool;
	function setRole(role:String):Session;
	function getRole():String;
	function hasRole(role:String):Bool;
};
