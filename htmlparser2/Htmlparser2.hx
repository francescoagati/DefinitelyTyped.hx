typedef Handler = {
	@:optional
	var onopentag : String -> { } -> Void;
	@:optional
	var onopentagname : String -> Void;
	@:optional
	var onattribute : String -> String -> Void;
	@:optional
	var ontext : String -> Void;
	@:optional
	var onclosetag : String -> Void;
	@:optional
	var onprocessinginstruction : String -> String -> Void;
	@:optional
	var oncomment : String -> Void;
	@:optional
	var oncommentend : Void -> Void;
	@:optional
	var oncdatastart : Void -> Void;
	@:optional
	var oncdataend : Void -> Void;
	@:optional
	var onerror : Error -> Void;
	@:optional
	var onreset : Void -> Void;
	@:optional
	var onend : Void -> Void;
};
typedef Options = {
	@:optional
	var xmlMode : Bool;
	@:optional
	var decodeEntities : Bool;
	@:optional
	var lowerCaseTags : Bool;
	@:optional
	var lowerCaseAttributeNames : Bool;
	@:optional
	var recognizeCDATA : Bool;
	@:optional
	var recognizeSelfClosing : Bool;
};
extern class Parser {
	function new(handler:Handler, ?options:Options):Void;
	function write(input:String):Void;
	function parseChunk(input:String):Void;
	function end():Void;
	function done():Void;
	function parseComplete(input:String):Void;
	function reset():Void;
}
