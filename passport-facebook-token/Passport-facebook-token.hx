typedef Profile = {
	>passport.Profile,
	var gender : String;
	var profileUrl : String;
};
typedef StrategyOptions = {
	var clientID : String;
	var clientSecret : String;
	@:optional
	var authorizationURL : String;
	@:optional
	var tokenURL : String;
	@:optional
	var scopeSeparator : String;
	@:optional
	var passReqToCallback : haxe.Constraints.Function;
	@:optional
	var enableProof : Bool;
	@:optional
	var profileFields : Array<Dynamic>;
};
extern class Strategy {
	function new(options:StrategyOptions, verify:String -> String -> Profile -> Dynamic -> ?Dynamic -> Void -> Void):Void;
	var name : String;
	var authenticate : express.Request -> ?Dynamic -> Void;
}
