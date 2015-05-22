typedef IStrategyOptions = {
	@:optional
	var usernameField : String;
	@:optional
	var passwordField : String;
	@:optional
	var passReqToCallback : Bool;
};
typedef IStrategyOptionsWithRequest = {
	@:optional
	var usernameField : String;
	@:optional
	var passwordField : String;
	var passReqToCallback : Bool;
};
typedef IVerifyOptions = {
	var message : String;
};
typedef VerifyFunctionWithRequest = { };
typedef VerifyFunction = { };
extern class Strategy {
	@:overload(function(options:IStrategyOptions, verify:VerifyFunction):Void { })
	@:overload(function(verify:VerifyFunction):Void { })
	function new(options:IStrategyOptionsWithRequest, verify:VerifyFunctionWithRequest):Void;
	var name : String;
	var authenticate : express.Request -> ?Dynamic -> Void;
}
