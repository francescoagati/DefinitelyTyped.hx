typedef Config = {
	@:optional
	var mime : String;
	@:optional
	var accept : String;
	@:optional
	var registry : registry.Registry;
	@:optional
	var permissive : Bool;
};
