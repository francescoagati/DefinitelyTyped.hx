extern class TypeScript.SyntaxFactsTopLevel {
	static function getTokenKind(text:String):SyntaxKind;
	static function getText(kind:SyntaxKind):String;
	static function isTokenKind(kind:SyntaxKind):Bool;
	static function isAnyKeyword(kind:SyntaxKind):Bool;
	static function isStandardKeyword(kind:SyntaxKind):Bool;
	static function isFutureReservedKeyword(kind:SyntaxKind):Bool;
	static function isFutureReservedStrictKeyword(kind:SyntaxKind):Bool;
	static function isAnyPunctuation(kind:SyntaxKind):Bool;
	static function isPrefixUnaryExpressionOperatorToken(tokenKind:SyntaxKind):Bool;
	static function isBinaryExpressionOperatorToken(tokenKind:SyntaxKind):Bool;
	static function getPrefixUnaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getPostfixUnaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getBinaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getOperatorTokenFromBinaryExpression(tokenKind:SyntaxKind):SyntaxKind;
	static function isAnyDivideToken(kind:SyntaxKind):Bool;
	static function isAnyDivideOrRegularExpressionToken(kind:SyntaxKind):Bool;
	static function isDirectivePrologueElement(node:ISyntaxNodeOrToken):Bool;
	static function isUseStrictDirective(node:ISyntaxNodeOrToken):Bool;
	static function isIdentifierNameOrAnyKeyword(token:ISyntaxToken):Bool;
}
extern class TypeScript.SyntaxFactsTopLevel {
	static function getTokenKind(text:String):SyntaxKind;
	static function getText(kind:SyntaxKind):String;
	static function isTokenKind(kind:SyntaxKind):Bool;
	static function isAnyKeyword(kind:SyntaxKind):Bool;
	static function isStandardKeyword(kind:SyntaxKind):Bool;
	static function isFutureReservedKeyword(kind:SyntaxKind):Bool;
	static function isFutureReservedStrictKeyword(kind:SyntaxKind):Bool;
	static function isAnyPunctuation(kind:SyntaxKind):Bool;
	static function isPrefixUnaryExpressionOperatorToken(tokenKind:SyntaxKind):Bool;
	static function isBinaryExpressionOperatorToken(tokenKind:SyntaxKind):Bool;
	static function getPrefixUnaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getPostfixUnaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getBinaryExpressionFromOperatorToken(tokenKind:SyntaxKind):SyntaxKind;
	static function getOperatorTokenFromBinaryExpression(tokenKind:SyntaxKind):SyntaxKind;
	static function isAnyDivideToken(kind:SyntaxKind):Bool;
	static function isAnyDivideOrRegularExpressionToken(kind:SyntaxKind):Bool;
	static function isDirectivePrologueElement(node:ISyntaxNodeOrToken):Bool;
	static function isUseStrictDirective(node:ISyntaxNodeOrToken):Bool;
	static function isIdentifierNameOrAnyKeyword(token:ISyntaxToken):Bool;
}
