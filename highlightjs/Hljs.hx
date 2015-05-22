typedef IHighlightResultBase = {
	var relevance : Float;
	var language : String;
	var value : String;
};
typedef IAutoHighlightResult = {
	>IHighlightResultBase,
	@:optional
	var second_best : IAutoHighlightResult;
};
typedef IHighlightResult = {
	>IHighlightResultBase,
	var top : ICompiledMode;
};
typedef HLJSStatic = {
	function inherit(parent:Dynamic, obj:Dynamic):Dynamic;
	var IDENT_RE : String;
	var UNDERSCORE_IDENT_RE : String;
	var NUMBER_RE : String;
	var C_NUMBER_RE : String;
	var BINARY_NUMBER_RE : String;
	var RE_STARTERS_RE : String;
	var BACKSLASH_ESCAPE : IMode;
	var APOS_STRING_MODE : IMode;
	var QUOTE_STRING_MODE : IMode;
	var PHRASAL_WORDS_MODE : IMode;
	var C_LINE_COMMENT_MODE : IMode;
	var C_BLOCK_COMMENT_MODE : IMode;
	var HASH_COMMENT_MODE : IMode;
	var NUMBER_MODE : IMode;
	var C_NUMBER_MODE : IMode;
	var BINARY_NUMBER_MODE : IMode;
	var CSS_NUMBER_MODE : IMode;
	var REGEX_MODE : IMode;
	var TITLE_MODE : IMode;
	var UNDERSCORE_TITLE_MODE : IMode;
};
typedef IModeBase = {
	@:optional
	var className : String;
	@:optional
	var aliases : Array<String>;
	@:optional
	var begin : String;
	@:optional
	var end : String;
	@:optional
	var case_insensitive : Bool;
	@:optional
	var beginKeyword : String;
	@:optional
	var endsWithParent : Bool;
	@:optional
	var lexems : String;
	@:optional
	var illegal : String;
	@:optional
	var excludeBegin : Bool;
	@:optional
	var excludeEnd : Bool;
	@:optional
	var returnBegin : Bool;
	@:optional
	var returnEnd : Bool;
	@:optional
	var starts : String;
	@:optional
	var subLanguage : String;
	@:optional
	var subLanguageMode : String;
	@:optional
	var relevance : Float;
	@:optional
	var variants : Array<IMode>;
};
typedef IMode = {
	>IModeBase,
	@:optional
	var keywords : Dynamic;
	@:optional
	var contains : Array<IMode>;
};
typedef ICompiledMode = {
	>IModeBase,
	var compiled : Bool;
	@:optional
	var contains : Array<ICompiledMode>;
	@:optional
	var keywords : Dynamic;
	var terminators : js.RegExp;
	@:optional
	var terminator_end : String;
};
typedef IOptions = {
	@:optional
	var classPrefix : String;
	@:optional
	var tabReplace : String;
	@:optional
	var useBR : Bool;
	@:optional
	var languages : Array<String>;
};
extern class HljsTopLevel {
	static function highlight(name:String, value:String, ?ignore_illegals:Bool, ?continuation:Bool):IHighlightResult;
	static function highlightAuto(value:String, ?languageSubset:Array<String>):IAutoHighlightResult;
	static function fixMarkup(value:String):String;
	static function highlightBlock(block:Node):Void;
	static function configure(options:IOptions):Void;
	static function initHighlighting():Void;
	static function initHighlightingOnLoad():Void;
	static function registerLanguage(name:String, language:?HLJSStatic -> IModeBase):Void;
	static function listLanguages():Array<String>;
	static function getLanguage(name:String):IMode;
	static function inherit(parent:Dynamic, obj:Dynamic):Dynamic;
	static var IDENT_RE : String;
	static var UNDERSCORE_IDENT_RE : String;
	static var NUMBER_RE : String;
	static var C_NUMBER_RE : String;
	static var BINARY_NUMBER_RE : String;
	static var RE_STARTERS_RE : String;
	static var BACKSLASH_ESCAPE : IMode;
	static var APOS_STRING_MODE : IMode;
	static var QUOTE_STRING_MODE : IMode;
	static var PHRASAL_WORDS_MODE : IMode;
	static var C_LINE_COMMENT_MODE : IMode;
	static var C_BLOCK_COMMENT_MODE : IMode;
	static var HASH_COMMENT_MODE : IMode;
	static var NUMBER_MODE : IMode;
	static var C_NUMBER_MODE : IMode;
	static var BINARY_NUMBER_MODE : IMode;
	static var CSS_NUMBER_MODE : IMode;
	static var REGEX_MODE : IMode;
	static var TITLE_MODE : IMode;
	static var UNDERSCORE_TITLE_MODE : IMode;
}
