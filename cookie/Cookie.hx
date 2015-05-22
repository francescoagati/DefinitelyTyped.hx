typedef CookieSerializeOptions = {
	@:optional
	var encode : String -> String;
	@:optional
	var path : String;
	@:optional
	var expires : Date;
	@:optional
	var maxAge : Float;
	@:optional
	var domain : String;
	@:optional
	var secure : Bool;
	@:optional
	var httpOnly : Bool;
};
typedef CookieParseOptions = {
	@:optional
	var decode : String -> String;
};
typedef CookieStatic = {
	function serialize(name:String, val:String, ?options:CookieSerializeOptions):String;
	function parse(str:String, ?options:CookieParseOptions):{ };
};
extern class CookieTopLevel {
	static var cookie : CookieStatic;
}
extern class CookieTopLevel {
	static var cookie : CookieStatic;
}
