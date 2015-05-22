typedef Token = {
	var type : String;
	var value : String;
};
typedef Comment = {
	>ESTree.Node,
	var value : String;
};
typedef Options = {
	@:optional
	var loc : Bool;
	@:optional
	var range : Bool;
	@:optional
	var raw : Bool;
	@:optional
	var tokens : Bool;
	@:optional
	var comment : Bool;
	@:optional
	var attachComment : Bool;
	@:optional
	var tolerant : Bool;
	@:optional
	var source : Bool;
};
extern class EsprimaTopLevel {
	static var version : String;
	static function parse(code:String, ?options:Options):ESTree.Program;
	static function tokenize(code:String, ?options:Options):Array<Token>;
}
extern class EsprimaTopLevel {
	static var version : String;
	static function parse(code:String, ?options:Options):ESTree.Program;
	static function tokenize(code:String, ?options:Options):Array<Token>;
}
extern class EsprimaTopLevel {
	static var version : String;
	static function parse(code:String, ?options:Options):ESTree.Program;
	static function tokenize(code:String, ?options:Options):Array<Token>;
}
