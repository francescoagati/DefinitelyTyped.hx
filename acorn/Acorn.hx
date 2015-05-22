typedef TokenType = {
	var label : String;
	var keyword : String;
	var beforeExpr : Bool;
	var startsExpr : Bool;
	var isLoop : Bool;
	var isAssign : Bool;
	var prefix : Bool;
	var postfix : Bool;
	var binop : Float;
	var updateContext : TokenType -> Dynamic;
};
typedef AbstractToken = {
	var start : Float;
	var end : Float;
	var loc : ESTree.SourceLocation;
	var range : Array<Dynamic>;
};
typedef Token = {
	>AbstractToken,
	var type : TokenType;
	var value : Dynamic;
};
typedef Comment = {
	>AbstractToken,
	var type : String;
	var value : String;
};
typedef Options = {
	@:optional
	var ecmaVersion : Float;
	@:optional
	var sourceType : String;
	@:optional
	var onInsertedSemicolon : Float -> ?ESTree.Position -> Dynamic;
	@:optional
	var onTrailingComma : Float -> ?ESTree.Position -> Dynamic;
	@:optional
	var allowReserved : Bool;
	@:optional
	var allowReturnOutsideFunction : Bool;
	@:optional
	var allowImportExportEverywhere : Bool;
	@:optional
	var allowHashBang : Bool;
	@:optional
	var locations : Bool;
	@:optional
	var onToken : haxe.extern.EitherType<Token -> Dynamic, Array<Token>>;
	@:optional
	var onComment : haxe.extern.EitherType<Bool -> String -> Float -> Float -> ?ESTree.Position -> ?ESTree.Position -> Dynamic, Array<Comment>>;
	@:optional
	var ranges : Bool;
	@:optional
	var program : ESTree.Program;
	@:optional
	var sourceFile : String;
	@:optional
	var directSourceFile : String;
	@:optional
	var preserveParens : Bool;
	@:optional
	var plugins : { };
};
extern class AcornTopLevel {
	static var version : String;
	static function parse(input:String, ?options:Options):ESTree.Program;
	static function parseExpressionAt(input:String, pos:Float, ?options:Options):ESTree.Expression;
	static var defaultOptions : Options;
}
extern class AcornTopLevel {
	static var version : String;
	static function parse(input:String, ?options:Options):ESTree.Program;
	static function parseExpressionAt(input:String, pos:Float, ?options:Options):ESTree.Expression;
	static var defaultOptions : Options;
}
extern class AcornTopLevel {
	static var version : String;
	static function parse(input:String, ?options:Options):ESTree.Program;
	static function parseExpressionAt(input:String, pos:Float, ?options:Options):ESTree.Expression;
	static var defaultOptions : Options;
}
