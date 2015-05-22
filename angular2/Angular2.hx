typedef List<T> = {
	>Array<T>,
};
typedef Type = { };
typedef _ComponentArg = {
	var selector : String;
	@:optional
	var properties : Dynamic;
	@:optional
	var hostListeners : Dynamic;
	@:optional
	var injectables : List<Dynamic>;
	@:optional
	var lifecycle : List<Dynamic>;
	@:optional
	var changeDetection : String;
};
typedef _ViewArg = {
	@:optional
	var templateUrl : String;
	@:optional
	var template : String;
	@:optional
	var directives : List<Type>;
};
