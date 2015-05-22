typedef WatchOptions = {
	var loggedInUser : String;
	var onlogin : Dynamic -> Void;
	var onlogout : Void -> Void;
	@:optional
	var onready : Void -> Void;
};
typedef RequestOptions = {
	@:optional
	var backgroundColor : String;
	@:optional
	var siteName : String;
	@:optional
	var siteLogo : String;
	@:optional
	var termsOfService : String;
	@:optional
	var privacyPolicy : String;
	@:optional
	var returnTo : String;
	@:optional
	var oncancel : Void -> Void;
};
typedef GetOptions = {
	@:optional
	var backgroundColor : String;
	@:optional
	var siteName : String;
	@:optional
	var siteLogo : String;
	@:optional
	var termsOfService : String;
	@:optional
	var privacyPolicy : String;
};
typedef Persona = {
	function watch(options:WatchOptions):Void;
	@:overload(function():Void { })
	function request(options:RequestOptions):Void;
	function logout():Void;
	@:overload(function(gotAssertion:Dynamic -> Void, options:GetOptions):Void { })
	function get(gotAssertion:Dynamic -> Void):Void;
};
typedef Navigator = {
	var id : Persona.Persona;
};
