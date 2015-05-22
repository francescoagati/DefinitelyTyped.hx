typedef Append = { };
typedef AppendArray = { };
typedef Clear = { };
typedef Concat = { };
typedef Insert = { };
typedef Remove = { };
typedef Replace = { };
typedef ToString = { };
extern class BuilderTopLevel {
	static var length : Float;
}
typedef Tokenize = { };
extern class BidiEngine {
	function new():Void;
	function bidiTransform(text:String, formatIn:String, formatOut:String):Dynamic;
	function checkContextual(text:String):Dynamic;
	function hasBidiChar(text:String):Dynamic;
}
typedef BidiComplex = {
	function attachInput(field:HTMLElement, pattern:String):Void;
	function createDisplayString(str:String, pattern:String):Void;
	function stripSpecialCharacters(str:Dynamic):Void;
};
