typedef Options = {
	@:optional
	var custom : express.Request -> Bool;
	@:optional
	var path : Dynamic;
	@:optional
	var ext : Dynamic;
	@:optional
	var method : Dynamic;
};
typedef RequestHandler = {
	>express.RequestHandler,
	@:optional
	var unless : Dynamic;
};
