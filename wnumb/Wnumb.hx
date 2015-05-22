typedef WNumbOptions = {
	@:optional
	var decimals : Float;
	@:optional
	var mark : String;
	@:optional
	var thousand : String;
	@:optional
	var prefix : String;
	@:optional
	var postfix : String;
	@:optional
	var negative : String;
	@:optional
	var negativeBefore : String;
	@:optional
	var encoder : Float -> Float;
	@:optional
	var decoder : Float -> Float;
	@:optional
	var edit : Float -> Float;
	@:optional
	var undo : Float -> Float;
};
typedef WNumb = { };
typedef WNumbInstance = {
	function to(val:Float):String;
	function from(val:String):Float;
};
extern class WnumbTopLevel {
	static var wNumb : WNumb;
}
