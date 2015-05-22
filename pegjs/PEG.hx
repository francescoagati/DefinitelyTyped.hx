extern class SyntaxError {
	var line : Float;
	var column : Float;
	var offset : Float;
	var expected : Array<Dynamic>;
	var found : Dynamic;
	var name : String;
	var message : String;
}
extern class PEGTopLevel {
	static function parse(input:String):Dynamic;
}
