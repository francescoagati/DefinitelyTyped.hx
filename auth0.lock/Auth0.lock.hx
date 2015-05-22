typedef Auth0LockPopupOptions = {
	var width : Float;
	var height : Float;
	var left : Float;
	var top : Float;
};
typedef Auth0LockOptions = {
	@:optional
	var authParams : Dynamic;
	@:optional
	var callbackURL : String;
	@:optional
	var connections : Array<String>;
	@:optional
	var container : String;
	@:optional
	var closable : Bool;
	@:optional
	var dict : Dynamic;
	@:optional
	var defaultUserPasswordConnection : String;
	@:optional
	var defaultADUsernameFromEmailPrefix : Bool;
	@:optional
	var disableResetAction : Bool;
	@:optional
	var disableSignupAction : Bool;
	@:optional
	var focusInput : Bool;
	@:optional
	var forceJSONP : Bool;
	@:optional
	var gravatar : Bool;
	@:optional
	var integratedWindowsLogin : Bool;
	@:optional
	var loginAfterSignup : Bool;
	@:optional
	var popup : Bool;
	@:optional
	var popupOptions : Auth0LockPopupOptions;
	@:optional
	var rememberLastLogin : Bool;
	@:optional
	var resetLink : String;
	@:optional
	var responseType : String;
	@:optional
	var signupLink : String;
	@:optional
	var socialBigButtons : Bool;
	@:optional
	var sso : Bool;
	@:optional
	var theme : String;
	@:optional
	var usernameStyle : Dynamic;
};
typedef Auth0LockConstructorOptions = {
	@:optional
	var cdn : String;
	@:optional
	var assetsUrl : String;
	@:optional
	var useCordovaSocialPlugins : Bool;
};
typedef Auth0LockStatic = {
	function new(clientId:String, domain:String, ?options:Auth0LockConstructorOptions):Auth0LockStatic;
	@:overload(function(options:Auth0LockOptions):Void { })
	@:overload(function(callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> Void):Void { })
	@:overload(function(options:Auth0LockOptions, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> Void):Void { })
	function show():Void;
	@:overload(function(options:Auth0LockOptions):Void { })
	@:overload(function(callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> Void):Void { })
	@:overload(function(options:Auth0LockOptions, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> Void):Void { })
	function showSignin():Void;
	@:overload(function(options:Auth0LockOptions):Void { })
	@:overload(function(callback:?Auth0Error -> Void):Void { })
	@:overload(function(options:Auth0LockOptions, callback:?Auth0Error -> Void):Void { })
	function showSignup():Void;
	@:overload(function(options:Auth0LockOptions):Void { })
	@:overload(function(callback:?Auth0Error -> Void):Void { })
	@:overload(function(options:Auth0LockOptions, callback:?Auth0Error -> Void):Void { })
	function showReset():Void;
	function hide(callback:Void -> Void):Void;
	function logout(callback:Void -> Void):Void;
};
extern class Auth0.lockTopLevel {
	static var Auth0Lock : Auth0LockStatic;
}
