typedef Options = {
	var secret : String;
	@:optional
	var userProperty : String;
	@:optional
	var skip : Array<String>;
	@:optional
	var credentialsRequired : Bool;
};
typedef RequestHandler = {
	>express.RequestHandler,
	@:optional
	var unless : Dynamic;
};
