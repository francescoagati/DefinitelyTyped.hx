extern class TypeScript.ParserTopLevel {
	static function parse(fileName:String, text:ISimpleText, isDeclaration:Bool, options:ParseOptions):SyntaxTree;
	static function incrementalParse(oldSyntaxTree:SyntaxTree, textChangeRange:TextChangeRange, newText:ISimpleText):SyntaxTree;
}
