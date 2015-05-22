typedef IHighlightResult = {
	var relevance : Float;
	var keyword_count : Float;
	var value : String;
};
typedef IAutoHighlightResult = {
	>IHighlightResult,
	var language : String;
	@:optional
	var second_best : IAutoHighlightResult;
};
typedef IMode = {
	@:optional
	var className : String;
	var begin : String;
	@:optional
	var end : String;
	@:optional
	var beginWithKeyword : Bool;
	@:optional
	var endsWithParent : Bool;
	@:optional
	var lexems : String;
	@:optional
	var keywords : Dynamic;
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
	var contains : Array<IMode>;
	@:optional
	var starts : String;
	@:optional
	var subLanguage : String;
	@:optional
	var relevance : Float;
};
extern class HljsTopLevel {
	static var LANGUAGES : { };
	static function blockText(block:Node, ignoreNewLines:Bool):String;
	static function blockLanguage(block:Node):String;
	static function highlight(language_name:String, value:String):IHighlightResult;
	static function highlightAuto(text:String):IHighlightResult;
	static function fixMarkup(value:String, tabReplace:Bool, useBR:Bool):String;
	static function highlightBlock(block:Node, ?tabReplace:Bool, ?useBR:Bool):Void;
	static function initHighlighting():Void;
	static function initHighlightingOnLoad():Void;
	static var tabReplace : String;
	static var IDENT_RE : String;
	static var UNDERSCORE_IDENT_RE : String;
	static var NUMBER_RE : String;
	static var C_NUMBER_RE : String;
	static var BINARY_NUMBER_RE : String;
	static var RE_STARTERS_RE : String;
	static var BACKSLASH_ESCAPE : IMode;
	static var APOS_STRING_MODE : IMode;
	static var QUOTE_STRING_MODE : IMode;
	static var C_LINE_COMMENT_MODE : IMode;
	static var C_BLOCK_COMMENT_MODE : IMode;
	static var HASH_COMMENT_MODE : IMode;
	static var NUMBER_MODE : IMode;
	static var C_NUMBER_MODE : IMode;
	static var BINARY_NUMBER_MODE : IMode;
}
