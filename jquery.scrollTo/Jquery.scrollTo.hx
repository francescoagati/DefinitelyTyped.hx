typedef ScrollToOptions = {
	@:optional
	var axis : String;
	@:optional
	var duration : Dynamic;
	@:optional
	var easing : String;
	@:optional
	var margin : Bool;
	@:optional
	var offset : Dynamic;
	@:optional
	var over : Dynamic;
	@:optional
	var queue : Bool;
	@:optional
	var onAfter : Void -> Void;
	@:optional
	var onAfterFirst : Void -> Void;
};
typedef JQuery = {
	var scrollTo : { };
};
typedef JQueryStatic = {
	var scrollTo : { };
};
