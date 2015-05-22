typedef JQueryLeanModalOption = {
	@:optional
	var top : Float;
	@:optional
	var overlay : Float;
	@:optional
	var closeButton : String;
};
typedef JQueryStatic = {
	@:overload(function(val:JQueryLeanModalOption):JQuery { })
	function leanModal():JQuery;
};
typedef JQuery = {
	@:overload(function(val:JQueryLeanModalOption):JQuery { })
	function leanModal():JQuery;
};
