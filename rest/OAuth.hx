typedef DismissWindow = { };
typedef Config = {
	@:optional
	var token : String;
	@:optional
	var clientId : String;
	@:optional
	var scope : String;
	@:optional
	var authorizationUrl : String;
	@:optional
	var redirectUrl : String;
	@:optional
	var windowStrategy : String -> DismissWindow;
	@:optional
	var oAuthCallback : String -> Void;
	@:optional
	var oAuthCallbackName : String;
};
