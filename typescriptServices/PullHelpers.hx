typedef SignatureInfoForFuncDecl = {
	var signature : PullSignatureSymbol;
	var allSignatures : Array<PullSignatureSymbol>;
};
typedef PullTypeSymbolStructureWalker = {
	function memberSymbolWalk(memberSymbol:PullSymbol):Bool;
	function callSignatureWalk(signatureSymbol:PullSignatureSymbol):Bool;
	function constructSignatureWalk(signatureSymbol:PullSignatureSymbol):Bool;
	function indexSignatureWalk(signatureSymbol:PullSignatureSymbol):Bool;
	function signatureParameterWalk(parameterSymbol:PullSymbol):Bool;
	function signatureReturnTypeWalk(returnType:PullTypeSymbol):Bool;
};
extern class OtherPullDeclsWalker {
	var currentlyWalkingOtherDecls : Dynamic;
	function walkOtherPullDecls(currentDecl:PullDecl, otherDecls:Array<PullDecl>, callBack:PullDecl -> Void):Void;
}
extern class PullHelpersTopLevel {
	static function diagnosticFromDecl(decl:PullDecl, diagnosticKey:String, ?_arguments:Array<Dynamic>, ?additionalLocations:Array<Location>):Diagnostic;
	static function resolveDeclaredSymbolToUseType(symbol:PullSymbol):Void;
	static function getSignatureForFuncDecl(functionDecl:PullDecl):{ var signature : PullSignatureSymbol; var allSignatures : Array<PullSignatureSymbol>; };
	static function getAccessorSymbol(getterOrSetter:AST, semanticInfoChain:SemanticInfoChain):PullAccessorSymbol;
	static function getGetterAndSetterFunction(funcDecl:AST, semanticInfoChain:SemanticInfoChain):{ var getter : GetAccessor; var setter : SetAccessor; };
	static function symbolIsEnum(source:PullSymbol):Bool;
	static function symbolIsModule(symbol:PullSymbol):Bool;
	static function isNameNumeric(name:String):Bool;
	static function typeSymbolsAreIdentical(a:PullTypeSymbol, b:PullTypeSymbol):Bool;
	static function getRootType(type:PullTypeSymbol):PullTypeSymbol;
	static function isSymbolLocal(symbol:PullSymbol):Bool;
	static function isExportedSymbolInClodule(symbol:PullSymbol):Bool;
	static function isSymbolDeclaredInScopeChain(symbol:PullSymbol, scopeSymbol:PullSymbol):Bool;
	static function walkPullTypeSymbolStructure(typeSymbol:PullTypeSymbol, walker:PullTypeSymbolStructureWalker):Void;
}
