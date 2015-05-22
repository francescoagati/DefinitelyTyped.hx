extern class TypeScript.IndentationTopLevel {
	static function columnForEndOfToken(token:ISyntaxToken, syntaxInformationMap:SyntaxInformationMap, options:FormattingOptions):Float;
	static function columnForStartOfToken(token:ISyntaxToken, syntaxInformationMap:SyntaxInformationMap, options:FormattingOptions):Float;
	static function columnForStartOfFirstTokenInLineContainingToken(token:ISyntaxToken, syntaxInformationMap:SyntaxInformationMap, options:FormattingOptions):Float;
	static function columnForPositionInString(input:String, position:Float, options:FormattingOptions):Float;
	static function indentationString(column:Float, options:FormattingOptions):String;
	static function indentationTrivia(column:Float, options:FormattingOptions):ISyntaxTrivia;
	static function firstNonWhitespacePosition(value:String):Float;
}
