typedef JQueryCookieOptions = {
	@:optional
	var expires : Dynamic;
	@:optional
	var path : String;
	@:optional
	var domain : String;
	@:optional
	var secure : Bool;
};
typedef JQueryCookieStatic = {
	@:optional
	var raw : Bool;
	@:optional
	var json : Bool;
};
typedef JQueryStatic = {
	@:optional
	var cookie : JQueryCookieStatic;
	@:overload(function(name:String, options:JQueryCookieOptions):Bool { })
	function removeCookie(name:String):Bool;
};
