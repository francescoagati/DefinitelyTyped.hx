@:enum abstract TYPES(Int) {
	var WHITESPACE = 0;
	var STRING = 1;
	var FILTER = 2;
	var FILTEREMPTY = 3;
	var FUNCTION = 4;
	var FUNCTIONEMPTY = 5;
	var PARENOPEN = 6;
	var PARENCLOSE = 7;
	var COMMA = 8;
	var VAR = 9;
	var NUMBER = 10;
	var OPERATOR = 11;
	var BRACKETOPEN = 12;
	var BRACKETCLOSE = 13;
	var DOTKEY = 14;
	var ARRAYOPEN = 15;
	var CURLYOPEN = 17;
	var CURLYCLOSE = 18;
	var COLON = 19;
	var COMPARATOR = 20;
	var LOGIC = 21;
	var NOT = 22;
	var BOOL = 23;
	var ASSIGNMENT = 24;
	var METHODOPEN = 25;
	var UNKNOWN = 100;
}
extern class LexerTopLevel {
	static function read(str:String):Array<String>;
}
