typedef Profile = {
	>passport.Profile,
	var gender : String;
	var profileUrl : String;
};
typedef IStrategyOption = {
	var clientID : String;
	var clientSecret : String;
	var callbackURL : String;
	@:optional
	var scopeSeparator : String;
	@:optional
	var enableProof : Bool;
	@:optional
	var profileFields : Array<String>;
};
extern class Strategy {
	function new(options:IStrategyOption, verify:String -> String -> Profile -> Dynamic -> ?Dynamic -> Void -> Void):Void;
	var name : String;
	var authenticate : express.Request -> ?Dynamic -> Void;
}
