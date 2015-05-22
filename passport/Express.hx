typedef Request = {
	@:optional
	var authInfo : Dynamic;
	@:overload(function(user:Dynamic, options:Dynamic, done:Dynamic -> Void):Void { })
	function login(user:Dynamic, done:Dynamic -> Void):Void;
	@:overload(function(user:Dynamic, options:Dynamic, done:Dynamic -> Void):Void { })
	function logIn(user:Dynamic, done:Dynamic -> Void):Void;
	function logout():Void;
	function logOut():Void;
	function isAuthenticated():Bool;
	function isUnauthenticated():Bool;
};
