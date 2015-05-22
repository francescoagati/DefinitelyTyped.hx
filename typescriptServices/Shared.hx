typedef ITokenAccess = {
	function GetTokens():Array<SyntaxKind>;
	function Contains(token:SyntaxKind):Bool;
};
extern class TokenRangeAccess {
	var tokens : Dynamic;
	function new(from:SyntaxKind, to:SyntaxKind, except:Array<SyntaxKind>):Void;
	function GetTokens():Array<SyntaxKind>;
	function Contains(token:SyntaxKind):Bool;
	function toString():String;
}
extern class TokenValuesAccess {
	var tokens : Dynamic;
	function new(tks:Array<SyntaxKind>):Void;
	function GetTokens():Array<SyntaxKind>;
	function Contains(token:SyntaxKind):Bool;
}
extern class TokenSingleValueAccess {
	var token : SyntaxKind;
	function new(token:SyntaxKind):Void;
	function GetTokens():Array<SyntaxKind>;
	function Contains(tokenValue:SyntaxKind):Bool;
	function toString():String;
}
extern class TokenAllAccess {
	function GetTokens():Array<SyntaxKind>;
	function Contains(tokenValue:SyntaxKind):Bool;
	function toString():String;
}
extern class TokenRange {
	var tokenAccess : ITokenAccess;
	function new(tokenAccess:ITokenAccess):Void;
	static function FromToken(token:SyntaxKind):TokenRange;
	static function FromTokens(tokens:Array<SyntaxKind>):TokenRange;
	static function FromRange(f:SyntaxKind, to:SyntaxKind, ?except:Array<SyntaxKind>):TokenRange;
	static function AllTokens():TokenRange;
	function GetTokens():Array<SyntaxKind>;
	function Contains(token:SyntaxKind):Bool;
	function toString():String;
	static var Any : TokenRange;
	static var AnyIncludingMultilineComments : TokenRange;
	static var Keywords : TokenRange;
	static var Operators : TokenRange;
	static var BinaryOperators : TokenRange;
	static var BinaryKeywordOperators : TokenRange;
	static var ReservedKeywords : TokenRange;
	static var UnaryPrefixOperators : TokenRange;
	static var UnaryPrefixExpressions : TokenRange;
	static var UnaryPreincrementExpressions : TokenRange;
	static var UnaryPostincrementExpressions : TokenRange;
	static var UnaryPredecrementExpressions : TokenRange;
	static var UnaryPostdecrementExpressions : TokenRange;
	static var Comments : TokenRange;
	static var TypeNames : TokenRange;
}
