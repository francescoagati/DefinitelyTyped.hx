typedef Auth0WidgetStatic = {
	function new(params:Auth0Constructor):Auth0WidgetStatic;
	function getClient():Auth0Static;
	function getProfile(token:String, callback:haxe.Constraints.Function):Auth0UserProfile;
	function parseHash(hash:String):Auth0DecodedHash;
	function reset(options:Auth0Options, ?callback:haxe.Constraints.Function):Auth0WidgetStatic;
	function signin(options:Auth0Options, ?widgetLoadedCallback:haxe.Constraints.Function, ?popupCallback:haxe.Constraints.Function):Auth0WidgetStatic;
	function signup(options:Auth0Options, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> ?String -> ?String -> Dynamic):Auth0WidgetStatic;
};
typedef Auth0Constructor = {
	>Auth0ClientOptions,
	@:optional
	var assetsUrl : String;
	@:optional
	var cdn : String;
	@:optional
	var dict : Dynamic;
};
typedef Auth0Options = {
	@:optional
	var access_token : String;
	@:optional
	var connections : Array<String>;
	@:optional
	var container : String;
	@:optional
	var enableReturnUserExperience : Bool;
	@:optional
	var extraParameters : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var protocol : String;
	@:optional
	var request_id : String;
	@:optional
	var scope : String;
	@:optional
	var showIcon : Bool;
	@:optional
	var showForgot : Bool;
	@:optional
	var showSignup : Bool;
	@:optional
	var state : Dynamic;
	@:optional
	var userPwdConnectionName : String;
	@:optional
	var username_style : String;
};
extern class Auth0.widgetTopLevel {
	static var Auth0Widget : Auth0WidgetStatic;
}
