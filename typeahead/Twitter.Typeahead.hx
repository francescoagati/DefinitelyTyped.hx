typedef Dataset = {
	var source : String -> Dynamic -> Void -> Void;
	@:optional
	var name : String;
	@:optional
	var displayKey : String;
	@:optional
	var templates : Templates;
};
typedef Templates = {
	@:optional
	var empty : Dynamic;
	@:optional
	var footer : Dynamic;
	@:optional
	var header : Dynamic;
	@:optional
	var suggestion : Dynamic -> String;
};
typedef Options = {
	@:optional
	var highlight : Bool;
	@:optional
	var hint : Bool;
	@:optional
	var minLength : Float;
};
