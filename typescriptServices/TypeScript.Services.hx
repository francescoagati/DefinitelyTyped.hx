@:enum abstract EndOfLineState(Int) {
	var Start = 0;
	var InMultiLineCommentTrivia = 1;
	var InSingleQuoteStringLiteral = 2;
	var InDoubleQuoteStringLiteral = 3;
}
@:enum abstract TokenClass(Int) {
	var Punctuation = 0;
	var Keyword = 1;
	var Operator = 2;
	var Comment = 3;
	var Whitespace = 4;
	var Identifier = 5;
	var NumberLiteral = 6;
	var StringLiteral = 7;
	var RegExpLiteral = 8;
}
extern class Classifier {
	var host : IClassifierHost;
	var scanner : Dynamic;
	var characterWindow : Dynamic;
	var diagnostics : Dynamic;
	function new(host:IClassifierHost):Void;
	function getClassificationsForLine(text:String, lexState:EndOfLineState):ClassificationResult;
	function processToken(text:Dynamic, offset:Dynamic, token:Dynamic, result:Dynamic):Dynamic;
	function processTriviaList(text:Dynamic, offset:Dynamic, triviaList:Dynamic, result:Dynamic):Dynamic;
	function addResult(text:Dynamic, offset:Dynamic, result:Dynamic, length:Dynamic, kind:Dynamic):Dynamic;
	function classFromKind(kind:Dynamic):Dynamic;
}
typedef IClassifierHost = {
	>ILogger,
};
extern class ClassificationResult {
	var finalLexState : EndOfLineState;
	var entries : Array<ClassificationInfo>;
	function new():Void;
}
extern class ClassificationInfo {
	var length : Float;
	var classification : TokenClass;
	function new(length:Float, classification:TokenClass):Void;
}
typedef ILanguageServicesDiagnostics = {
	function log(content:String):Void;
};
typedef ILanguageServiceHost = {
	>ILogger,
	>IReferenceResolverHost,
	function getCompilationSettings():CompilationSettings;
	function getScriptFileNames():Array<String>;
	function getScriptVersion(fileName:String):Float;
	function getScriptIsOpen(fileName:String):Bool;
	function getScriptByteOrderMark(fileName:String):ByteOrderMark;
	function getScriptSnapshot(fileName:String):IScriptSnapshot;
	function getDiagnosticsObject():ILanguageServicesDiagnostics;
	function getLocalizedDiagnosticMessages():Dynamic;
};
typedef ILanguageService = {
	function refresh():Void;
	function cleanupSemanticCache():Void;
	function getSyntacticDiagnostics(fileName:String):Array<Diagnostic>;
	function getSemanticDiagnostics(fileName:String):Array<Diagnostic>;
	function getCompilerOptionsDiagnostics():Array<Diagnostic>;
	function getCompletionsAtPosition(fileName:String, position:Float, isMemberCompletion:Bool):CompletionInfo;
	function getCompletionEntryDetails(fileName:String, position:Float, entryName:String):CompletionEntryDetails;
	function getTypeAtPosition(fileName:String, position:Float):TypeInfo;
	function getNameOrDottedNameSpan(fileName:String, startPos:Float, endPos:Float):SpanInfo;
	function getBreakpointStatementAtPosition(fileName:String, position:Float):SpanInfo;
	function getSignatureAtPosition(fileName:String, position:Float):SignatureInfo;
	function getDefinitionAtPosition(fileName:String, position:Float):Array<DefinitionInfo>;
	function getReferencesAtPosition(fileName:String, position:Float):Array<ReferenceEntry>;
	function getOccurrencesAtPosition(fileName:String, position:Float):Array<ReferenceEntry>;
	function getImplementorsAtPosition(fileName:String, position:Float):Array<ReferenceEntry>;
	function getNavigateToItems(searchValue:String):Array<NavigateToItem>;
	function getScriptLexicalStructure(fileName:String):Array<NavigateToItem>;
	function getOutliningRegions(fileName:String):Array<TextSpan>;
	function getBraceMatchingAtPosition(fileName:String, position:Float):Array<TextSpan>;
	function getIndentationAtPosition(fileName:String, position:Float, options:EditorOptions):Float;
	function getFormattingEditsForRange(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsForDocument(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsOnPaste(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsAfterKeystroke(fileName:String, position:Float, key:String, options:FormatCodeOptions):Array<TextEdit>;
	function getEmitOutput(fileName:String):EmitOutput;
	function getSyntaxTree(fileName:String):SyntaxTree;
};
extern class ReferenceEntry {
	var fileName : String;
	var minChar : Float;
	var limChar : Float;
	var isWriteAccess : Bool;
	function new(fileName:String, minChar:Float, limChar:Float, isWriteAccess:Bool):Void;
}
extern class NavigateToItem {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var matchKind : String;
	var fileName : String;
	var minChar : Float;
	var limChar : Float;
	var additionalSpans : Array<SpanInfo>;
	var containerName : String;
	var containerKind : String;
}
extern class TextEdit {
	var minChar : Float;
	var limChar : Float;
	var text : String;
	function new(minChar:Float, limChar:Float, text:String):Void;
	static function createInsert(pos:Float, text:String):TextEdit;
	static function createDelete(minChar:Float, limChar:Float):TextEdit;
	static function createReplace(minChar:Float, limChar:Float, text:String):TextEdit;
}
extern class EditorOptions {
	var IndentSize : Float;
	var TabSize : Float;
	var NewLineCharacter : String;
	var ConvertTabsToSpaces : Bool;
	static function clone(objectToClone:EditorOptions):EditorOptions;
}
extern class FormatCodeOptions extends EditorOptions {
	var InsertSpaceAfterCommaDelimiter : Bool;
	var InsertSpaceAfterSemicolonInForStatements : Bool;
	var InsertSpaceBeforeAndAfterBinaryOperators : Bool;
	var InsertSpaceAfterKeywordsInControlFlowStatements : Bool;
	var InsertSpaceAfterFunctionKeywordForAnonymousFunctions : Bool;
	var InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis : Bool;
	var PlaceOpenBraceOnNewLineForFunctions : Bool;
	var PlaceOpenBraceOnNewLineForControlBlocks : Bool;
	static function clone(objectToClone:FormatCodeOptions):FormatCodeOptions;
}
extern class DefinitionInfo {
	var fileName : String;
	var minChar : Float;
	var limChar : Float;
	var kind : String;
	var name : String;
	var containerKind : String;
	var containerName : String;
	function new(fileName:String, minChar:Float, limChar:Float, kind:String, name:String, containerKind:String, containerName:String):Void;
}
extern class TypeInfo {
	var memberName : MemberName;
	var docComment : String;
	var fullSymbolName : String;
	var kind : String;
	var minChar : Float;
	var limChar : Float;
	function new(memberName:MemberName, docComment:String, fullSymbolName:String, kind:String, minChar:Float, limChar:Float):Void;
}
extern class SpanInfo {
	var minChar : Float;
	var limChar : Float;
	var text : String;
	function new(minChar:Float, limChar:Float, ?text:String):Void;
}
extern class SignatureInfo {
	var actual : ActualSignatureInfo;
	var formal : Array<FormalSignatureItemInfo>;
	var activeFormal : Float;
}
extern class FormalSignatureItemInfo {
	var signatureInfo : String;
	var typeParameters : Array<FormalTypeParameterInfo>;
	var parameters : Array<FormalParameterInfo>;
	var docComment : String;
}
extern class FormalTypeParameterInfo {
	var name : String;
	var docComment : String;
	var minChar : Float;
	var limChar : Float;
}
extern class FormalParameterInfo {
	var name : String;
	var isVariable : Bool;
	var docComment : String;
	var minChar : Float;
	var limChar : Float;
}
extern class ActualSignatureInfo {
	var parameterMinChar : Float;
	var parameterLimChar : Float;
	var currentParameterIsTypeParameter : Bool;
	var currentParameter : Float;
}
extern class CompletionInfo {
	var maybeInaccurate : Bool;
	var isMemberCompletion : Bool;
	var entries : Array<CompletionEntry>;
}
typedef CompletionEntry = {
	var name : String;
	var kind : String;
	var kindModifiers : String;
};
typedef CompletionEntryDetails = {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var type : String;
	var fullSymbolName : String;
	var docComment : String;
};
extern class ScriptElementKind {
	static var unknown : String;
	static var keyword : String;
	static var scriptElement : String;
	static var moduleElement : String;
	static var classElement : String;
	static var interfaceElement : String;
	static var enumElement : String;
	static var variableElement : String;
	static var localVariableElement : String;
	static var functionElement : String;
	static var localFunctionElement : String;
	static var memberFunctionElement : String;
	static var memberGetAccessorElement : String;
	static var memberSetAccessorElement : String;
	static var memberVariableElement : String;
	static var constructorImplementationElement : String;
	static var callSignatureElement : String;
	static var indexSignatureElement : String;
	static var constructSignatureElement : String;
	static var parameterElement : String;
	static var typeParameterElement : String;
	static var primitiveType : String;
}
extern class ScriptElementKindModifier {
	static var none : String;
	static var publicMemberModifier : String;
	static var privateMemberModifier : String;
	static var exportedModifier : String;
	static var ambientModifier : String;
	static var staticModifier : String;
}
extern class MatchKind {
	static var none : String;
	static var exact : String;
	static var subString : String;
	static var prefix : String;
}
extern class DiagnosticCategory {
	static var none : String;
	static var error : String;
	static var warning : String;
	static var message : String;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
typedef ICoreServicesHost = {
	var logger : ILogger;
};
extern class CoreServices {
	var host : ICoreServicesHost;
	function new(host:ICoreServicesHost):Void;
	function getPreProcessedFileInfo(fileName:String, sourceText:IScriptSnapshot):IPreProcessedFileInfo;
	function getDefaultCompilationSettings():CompilationSettings;
	function dumpMemory():String;
	function getMemoryInfo():Array<Dynamic>;
	function collectGarbage():Void;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class SyntaxTreeCache {
	var _host : Dynamic;
	var _hostCache : Dynamic;
	var _currentFileName : Dynamic;
	var _currentFileVersion : Dynamic;
	var _currentFileSyntaxTree : Dynamic;
	var _currentFileScriptSnapshot : Dynamic;
	function new(_host:ILanguageServiceHost):Void;
	function getCurrentFileSyntaxTree(fileName:String):SyntaxTree;
	function createSyntaxTree(fileName:Dynamic, scriptSnapshot:Dynamic):Dynamic;
	function updateSyntaxTree(fileName:Dynamic, scriptSnapshot:Dynamic, previousSyntaxTree:Dynamic, previousFileVersion:Dynamic):Dynamic;
	function ensureInvariants(fileName:Dynamic, editRange:Dynamic, incrementalTree:Dynamic, oldScriptSnapshot:Dynamic, newScriptSnapshot:Dynamic):Dynamic;
}
extern class LanguageServiceCompiler {
	var host : Dynamic;
	var logger : Dynamic;
	var compiler : Dynamic;
	var hostCache : Dynamic;
	function new(host:ILanguageServiceHost):Void;
	function synchronizeHostData():Dynamic;
	function synchronizeHostDataWorker():Dynamic;
	function tryUpdateFile(compiler:Dynamic, fileName:Dynamic):Dynamic;
	function getScriptSnapshot(fileName:String):IScriptSnapshot;
	function getCachedHostFileName(fileName:String):String;
	function getCachedTopLevelDeclaration(fileName:String):PullDecl;
	function compilationSettings():ImmutableCompilationSettings;
	function fileNames():Array<String>;
	function cleanupSemanticCache():Void;
	function getDocument(fileName:String):Document;
	function getSyntacticDiagnostics(fileName:String):Array<Diagnostic>;
	function getSemanticDiagnostics(fileName:String):Array<Diagnostic>;
	function getCompilerOptionsDiagnostics(resolvePath:String -> String):Array<Diagnostic>;
	function getSymbolInformationFromAST(ast:AST, document:Document):PullSymbolInfo;
	function getCallInformationFromAST(ast:AST, document:Document):PullCallSymbolInfo;
	function getVisibleMemberSymbolsFromAST(ast:AST, document:Document):PullVisibleSymbolsInfo;
	function getVisibleDeclsFromAST(ast:AST, document:Document):Array<PullDecl>;
	function getContextualMembersFromAST(ast:AST, document:Document):PullVisibleSymbolsInfo;
	function pullGetDeclInformation(decl:PullDecl, ast:AST, document:Document):PullSymbolInfo;
	function topLevelDeclaration(fileName:String):PullDecl;
	function getDeclForAST(ast:AST):PullDecl;
	function emit(fileName:String, resolvePath:String -> String):EmitOutput;
	function emitDeclarations(fileName:String, resolvePath:String -> String):EmitOutput;
	function canEmitDeclarations(fileName:String):Bool;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class CompletionHelpers {
	static function getSpan(ast:Dynamic):Dynamic;
	static function symbolDeclarationIntersectsPosition(symbol:Dynamic, fileName:Dynamic, position:Dynamic):Dynamic;
	static function filterContextualMembersList(contextualMemberSymbols:Array<PullSymbol>, existingMembers:PullVisibleSymbolsInfo, fileName:String, position:Float):Array<PullSymbol>;
	static function isCompletionListBlocker(sourceUnit:SourceUnitSyntax, position:Float):Bool;
	static function getContainingObjectLiteralApplicableForCompletion(sourceUnit:SourceUnitSyntax, position:Float):PositionedElement;
	static function isIdentifierDefinitionLocation(sourceUnit:SourceUnitSyntax, position:Float):Bool;
	static function getNonIdentifierCompleteTokenOnLeft(sourceUnit:SourceUnitSyntax, position:Float):PositionedToken;
	static function isRightOfIllegalDot(sourceUnit:SourceUnitSyntax, position:Float):Bool;
	static function getValidCompletionEntryDisplayName(displayName:String):String;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class KeywordCompletions {
	static var keywords : Dynamic;
	static var keywordCompletions : Dynamic;
	static function getKeywordCompltions():Array<ResolvedCompletionEntry>;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
typedef IPartiallyWrittenTypeArgumentListInformation = {
	var genericIdentifer : PositionedToken;
	var lessThanToken : PositionedToken;
	var argumentIndex : Float;
};
extern class SignatureInfoHelpers {
	static function isInPartiallyWrittenTypeArgumentList(syntaxTree:SyntaxTree, position:Float):IPartiallyWrittenTypeArgumentListInformation;
	static function getSignatureInfoFromSignatureSymbol(symbol:PullSymbol, signatures:Array<PullSignatureSymbol>, enclosingScopeSymbol:PullSymbol, compilerState:LanguageServiceCompiler):Array<FormalSignatureItemInfo>;
	static function getSignatureInfoFromGenericSymbol(symbol:PullSymbol, enclosingScopeSymbol:PullSymbol, compilerState:LanguageServiceCompiler):Array<FormalSignatureItemInfo>;
	static function getActualSignatureInfoFromCallExpression(ast:ICallExpression, caretPosition:Float, typeParameterInformation:IPartiallyWrittenTypeArgumentListInformation):ActualSignatureInfo;
	static function getActualSignatureInfoFromPartiallyWritenGenericExpression(caretPosition:Float, typeParameterInformation:IPartiallyWrittenTypeArgumentListInformation):ActualSignatureInfo;
	static function isSignatureHelpBlocker(sourceUnit:SourceUnitSyntax, position:Float):Bool;
	static function isTargetOfObjectCreationExpression(positionedToken:PositionedToken):Bool;
	static function moveBackUpTillMatchingTokenKind(token:Dynamic, tokenKind:Dynamic, matchingTokenKind:Dynamic):Dynamic;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
typedef CachedCompletionEntryDetails = {
	>CompletionEntryDetails,
	function isResolved():Bool;
};
extern class ResolvedCompletionEntry {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var type : String;
	var fullSymbolName : String;
	var docComment : String;
	function new(name:String, kind:String, kindModifiers:String, type:String, fullSymbolName:String, docComment:String):Void;
	function isResolved():Bool;
}
extern class DeclReferenceCompletionEntry {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var decl : PullDecl;
	var type : String;
	var fullSymbolName : String;
	var docComment : String;
	var hasBeenResolved : Dynamic;
	function new(name:String, kind:String, kindModifiers:String, decl:PullDecl):Void;
	function isResolved():Bool;
	function resolve(type:String, fullSymbolName:String, docComments:String):Void;
}
extern class CompletionSession {
	var fileName : String;
	var position : Float;
	var entries : IdentiferNameHashTable<CachedCompletionEntryDetails>;
	function new(fileName:String, position:Float, entries:IdentiferNameHashTable<CachedCompletionEntryDetails>):Void;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class LanguageService {
	var host : ILanguageServiceHost;
	var logger : Dynamic;
	var compiler : Dynamic;
	var _syntaxTreeCache : Dynamic;
	var formattingRulesProvider : Dynamic;
	var activeCompletionSession : Dynamic;
	function new(host:ILanguageServiceHost):Void;
	function cleanupSemanticCache():Void;
	function refresh():Void;
	function getSymbolInfoAtPosition(fileName:Dynamic, pos:Dynamic, requireName:Dynamic):Dynamic;
	function getReferencesAtPosition(fileName:String, pos:Float):Array<ReferenceEntry>;
	function getSymbolScopeAST(symbol:Dynamic, ast:Dynamic):Dynamic;
	function getOccurrencesAtPosition(fileName:String, pos:Float):Array<ReferenceEntry>;
	function getSingleNodeReferenceAtPosition(fileName:Dynamic, position:Dynamic):Dynamic;
	function getImplementorsAtPosition(fileName:String, pos:Float):Array<ReferenceEntry>;
	function getOverrides(container:PullTypeSymbol, memberSym:PullSymbol):Array<PullTypeSymbol>;
	function getImplementorsInFile(fileName:Dynamic, symbol:Dynamic):Dynamic;
	function getReferencesInFile(fileName:Dynamic, symbol:Dynamic, containingASTOpt:Dynamic):Dynamic;
	function isWriteAccess(current:Dynamic):Dynamic;
	function isLetterOrDigit(char:Dynamic):Dynamic;
	function getPossibleSymbolReferencePositions(fileName:Dynamic, symbolName:Dynamic):Dynamic;
	function getSignatureAtPosition(fileName:String, position:Float):SignatureInfo;
	function getTypeParameterSignatureFromPartiallyWrittenExpression(document:Dynamic, position:Dynamic, genericTypeArgumentListInfo:Dynamic):Dynamic;
	function getDefinitionAtPosition(fileName:String, position:Float):Array<DefinitionInfo>;
	function addDeclarations(symbolKind:Dynamic, symbolName:Dynamic, containerKind:Dynamic, containerName:Dynamic, declarations:Dynamic, result:Dynamic):Dynamic;
	function addDeclaration(symbolKind:Dynamic, symbolName:Dynamic, containerKind:Dynamic, containerName:Dynamic, declaration:Dynamic, result:Dynamic):Dynamic;
	function tryAddDefinition(symbolKind:Dynamic, symbolName:Dynamic, containerKind:Dynamic, containerName:Dynamic, declarations:Dynamic, result:Dynamic):Dynamic;
	function tryAddSignatures(symbolKind:Dynamic, symbolName:Dynamic, containerKind:Dynamic, containerName:Dynamic, declarations:Dynamic, result:Dynamic):Dynamic;
	function tryAddConstructor(symbolKind:Dynamic, symbolName:Dynamic, containerKind:Dynamic, containerName:Dynamic, declarations:Dynamic, result:Dynamic):Dynamic;
	function getNavigateToItems(searchValue:String):Array<NavigateToItem>;
	function hasAnyUpperCaseCharacter(s:Dynamic):Dynamic;
	function findSearchValueInPullDecl(fileName:Dynamic, declarations:Dynamic, results:Dynamic, searchTerms:Dynamic, ?parentName:Dynamic, ?parentkindName:Dynamic):Dynamic;
	function getScriptElementKindModifiersFromDecl(decl:Dynamic):Dynamic;
	function isContainerDeclaration(declaration:Dynamic):Dynamic;
	function shouldIncludeDeclarationInNavigationItems(declaration:Dynamic):Dynamic;
	function getSyntacticDiagnostics(fileName:String):Array<Diagnostic>;
	function getSemanticDiagnostics(fileName:String):Array<Diagnostic>;
	function _getHostSpecificDiagnosticWithFileName(diagnostic:Dynamic):Dynamic;
	function getCompilerOptionsDiagnostics():Array<Diagnostic>;
	function _getHostFileName(fileName:Dynamic):Dynamic;
	function getEmitOutput(fileName:String):EmitOutput;
	function getAllSyntacticDiagnostics():Dynamic;
	function getAllSemanticDiagnostics():Dynamic;
	function containErrors(diagnostics:Dynamic):Dynamic;
	function getFullNameOfSymbol(symbol:Dynamic, enclosingScopeSymbol:Dynamic):Dynamic;
	function getTypeInfoEligiblePath(fileName:Dynamic, position:Dynamic, isConstructorValidPosition:Dynamic):Dynamic;
	function getTypeAtPosition(fileName:String, position:Float):TypeInfo;
	function getCompletionsAtPosition(fileName:String, position:Float, isMemberCompletion:Bool):CompletionInfo;
	function getCompletionEntriesFromSymbols(symbolInfo:Dynamic, result:Dynamic):Dynamic;
	function getCompletionEntriesFromDecls(decls:Dynamic, result:Dynamic):Dynamic;
	function getResolvedCompletionEntryDetailsFromSymbol(symbol:Dynamic, enclosingScopeSymbol:Dynamic):Dynamic;
	function getCompletionEntriesForKeywords(keywords:Dynamic, result:Dynamic):Dynamic;
	function getCompletionEntryDetails(fileName:String, position:Float, entryName:String):CompletionEntryDetails;
	function tryFindDeclFromPreviousCompilerVersion(invalidatedDecl:Dynamic):Dynamic;
	function getModuleOrEnumKind(symbol:Dynamic):Dynamic;
	function mapPullElementKind(kind:Dynamic, ?symbol:Dynamic, ?useConstructorAsClass:Dynamic, ?varIsFunction:Dynamic, ?functionIsConstructor:Dynamic):Dynamic;
	function getScriptElementKindModifiers(symbol:Dynamic):Dynamic;
	function getScriptElementKindModifiersFromFlags(flags:Dynamic):Dynamic;
	function getNameOrDottedNameSpan(fileName:String, startPos:Float, endPos:Float):SpanInfo;
	function getBreakpointStatementAtPosition(fileName:String, pos:Float):SpanInfo;
	function getFormattingEditsForRange(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsForDocument(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsOnPaste(fileName:String, minChar:Float, limChar:Float, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingEditsAfterKeystroke(fileName:String, position:Float, key:String, options:FormatCodeOptions):Array<TextEdit>;
	function getFormattingManager(fileName:Dynamic, options:Dynamic):Dynamic;
	function getOutliningRegions(fileName:String):Array<TextSpan>;
	function getIndentationAtPosition(fileName:String, position:Float, editorOptions:EditorOptions):Float;
	function getBraceMatchingAtPosition(fileName:String, position:Float):Array<TextSpan>;
	function getScriptLexicalStructure(fileName:String):Array<NavigateToItem>;
	function getSyntaxTree(fileName:String):SyntaxTree;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class FindReferenceHelpers {
	static function compareSymbolsForLexicalIdentity(firstSymbol:PullSymbol, secondSymbol:PullSymbol):Bool;
	static function checkSymbolsForDeclarationEquality(firstSymbol:Dynamic, secondSymbol:Dynamic):Dynamic;
	static function declarationsAreSameOrParents(firstDecl:Dynamic, secondDecl:Dynamic):Dynamic;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
typedef IScriptSnapshotShim = {
	function getText(start:Float, end:Float):String;
	function getLength():Float;
	function getLineStartPositions():String;
	function getTextChangeRangeSinceVersion(scriptVersion:Float):String;
};
typedef ILanguageServiceShimHost = {
	>ILogger,
	function getCompilationSettings():String;
	function getScriptFileNames():String;
	function getScriptVersion(fileName:String):Float;
	function getScriptIsOpen(fileName:String):Bool;
	function getScriptByteOrderMark(fileName:String):Float;
	function getScriptSnapshot(fileName:String):IScriptSnapshotShim;
	function resolveRelativePath(path:String, directory:String):String;
	function fileExists(path:String):Bool;
	function directoryExists(path:String):Bool;
	function getParentDirectory(path:String):String;
	function getDiagnosticsObject():ILanguageServicesDiagnostics;
	function getLocalizedDiagnosticMessages():String;
};
typedef IShimFactory = {
	function registerShim(shim:IShim):Void;
	function unregisterShim(shim:IShim):Void;
};
typedef IShim = {
	function dispose(dummy:Dynamic):Void;
};
extern class ShimBase {
	var factory : Dynamic;
	function new(factory:IShimFactory):Void;
	function dispose(dummy:Dynamic):Void;
}
typedef ILanguageServiceShim = {
	>IShim,
	var languageService : ILanguageService;
	function dispose(dummy:Dynamic):Void;
	function refresh(throwOnError:Bool):Void;
	function cleanupSemanticCache():Void;
	function getSyntacticDiagnostics(fileName:String):String;
	function getSemanticDiagnostics(fileName:String):String;
	function getCompilerOptionsDiagnostics():String;
	function getCompletionsAtPosition(fileName:String, position:Float, isMemberCompletion:Bool):String;
	function getCompletionEntryDetails(fileName:String, position:Float, entryName:String):String;
	function getTypeAtPosition(fileName:String, position:Float):String;
	function getNameOrDottedNameSpan(fileName:String, startPos:Float, endPos:Float):String;
	function getBreakpointStatementAtPosition(fileName:String, position:Float):String;
	function getSignatureAtPosition(fileName:String, position:Float):String;
	function getDefinitionAtPosition(fileName:String, position:Float):String;
	function getReferencesAtPosition(fileName:String, position:Float):String;
	function getOccurrencesAtPosition(fileName:String, position:Float):String;
	function getImplementorsAtPosition(fileName:String, position:Float):String;
	function getNavigateToItems(searchValue:String):String;
	function getScriptLexicalStructure(fileName:String):String;
	function getOutliningRegions(fileName:String):String;
	function getBraceMatchingAtPosition(fileName:String, position:Float):String;
	function getIndentationAtPosition(fileName:String, position:Float, options:String):String;
	function getFormattingEditsForRange(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsForDocument(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsOnPaste(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsAfterKeystroke(fileName:String, position:Float, key:String, options:String):String;
	function getEmitOutput(fileName:String):String;
};
extern class LanguageServiceShimHostAdapter {
	var shimHost : Dynamic;
	function new(shimHost:ILanguageServiceShimHost):Void;
	function information():Bool;
	function debug():Bool;
	function warning():Bool;
	function error():Bool;
	function fatal():Bool;
	function log(s:String):Void;
	function getCompilationSettings():CompilationSettings;
	function getScriptFileNames():Array<String>;
	function getScriptSnapshot(fileName:String):IScriptSnapshot;
	function getScriptVersion(fileName:String):Float;
	function getScriptIsOpen(fileName:String):Bool;
	function getScriptByteOrderMark(fileName:String):ByteOrderMark;
	function getDiagnosticsObject():ILanguageServicesDiagnostics;
	function getLocalizedDiagnosticMessages():Dynamic;
	function resolveRelativePath(path:String, directory:String):String;
	function fileExists(path:String):Bool;
	function directoryExists(path:String):Bool;
	function getParentDirectory(path:String):String;
}
extern class LanguageServiceShim extends ShimBase {
	var host : Dynamic;
	var languageService : ILanguageService;
	var logger : Dynamic;
	function new(factory:IShimFactory, host:ILanguageServiceShimHost, languageService:ILanguageService):Void;
	function forwardJSONCall(actionDescription:String, action:Void -> Dynamic):String;
	function dispose(dummy:Dynamic):Void;
	function refresh(throwOnError:Bool):Void;
	function cleanupSemanticCache():Void;
	static function realizeDiagnosticCategory(category:Dynamic):Dynamic;
	static function realizeDiagnostic(diagnostic:Dynamic):Dynamic;
	function realizeDiagnosticWithFileName(diagnostic:Dynamic):Dynamic;
	function getSyntacticDiagnostics(fileName:String):String;
	function getSemanticDiagnostics(fileName:String):String;
	function getCompilerOptionsDiagnostics():String;
	function getTypeAtPosition(fileName:String, position:Float):String;
	function getNameOrDottedNameSpan(fileName:String, startPos:Float, endPos:Float):String;
	function getBreakpointStatementAtPosition(fileName:String, position:Float):String;
	function getSignatureAtPosition(fileName:String, position:Float):String;
	function getDefinitionAtPosition(fileName:String, position:Float):String;
	function getBraceMatchingAtPosition(fileName:String, position:Float):String;
	function getIndentationAtPosition(fileName:String, position:Float, options:String):String;
	function getReferencesAtPosition(fileName:String, position:Float):String;
	function getOccurrencesAtPosition(fileName:String, position:Float):String;
	function getImplementorsAtPosition(fileName:String, position:Float):String;
	function getCompletionsAtPosition(fileName:String, position:Float, isMemberCompletion:Bool):String;
	function getCompletionEntryDetails(fileName:String, position:Float, entryName:String):String;
	function getFormattingEditsForRange(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsForDocument(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsOnPaste(fileName:String, minChar:Float, limChar:Float, options:String):String;
	function getFormattingEditsAfterKeystroke(fileName:String, position:Float, key:String, options:String):String;
	function getNavigateToItems(searchValue:String):String;
	function getScriptLexicalStructure(fileName:String):String;
	function getOutliningRegions(fileName:String):String;
	function getEmitOutput(fileName:String):String;
	function _navigateToItemsToString(items:Dynamic):Dynamic;
}
extern class ClassifierShim extends ShimBase {
	var host : IClassifierHost;
	var classifier : Classifier;
	function new(factory:IShimFactory, host:IClassifierHost):Void;
	function getClassificationsForLine(text:String, lexState:EndOfLineState):String;
}
extern class CoreServicesShim extends ShimBase {
	var host : ICoreServicesHost;
	var logger : ILogger;
	var services : CoreServices;
	function new(factory:IShimFactory, host:ICoreServicesHost):Void;
	function forwardJSONCall(actionDescription:Dynamic, action:Dynamic):Dynamic;
	function getPreProcessedFileInfo(fileName:String, sourceText:IScriptSnapshot):String;
	function getDefaultCompilationSettings():String;
	function dumpMemory(dummy:Dynamic):String;
	function getMemoryInfo(dummy:Dynamic):String;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class OutliningElementsCollector extends DepthLimitedWalker {
	static var MaximumDepth : Dynamic;
	var inObjectLiteralExpression : Dynamic;
	var elements : Dynamic;
	function new():Void;
	function visitClassDeclaration(node:ClassDeclarationSyntax):Void;
	function visitInterfaceDeclaration(node:InterfaceDeclarationSyntax):Void;
	function visitModuleDeclaration(node:ModuleDeclarationSyntax):Void;
	function visitEnumDeclaration(node:EnumDeclarationSyntax):Void;
	function visitFunctionDeclaration(node:FunctionDeclarationSyntax):Void;
	function visitFunctionExpression(node:FunctionExpressionSyntax):Void;
	function visitConstructorDeclaration(node:ConstructorDeclarationSyntax):Void;
	function visitMemberFunctionDeclaration(node:MemberFunctionDeclarationSyntax):Void;
	function visitGetAccessor(node:GetAccessorSyntax):Void;
	function visitSetAccessor(node:SetAccessorSyntax):Void;
	function visitObjectLiteralExpression(node:ObjectLiteralExpressionSyntax):Void;
	function addOutlineRange(node:Dynamic, startElement:Dynamic, endElement:Dynamic):Dynamic;
	static function collectElements(node:SourceUnitSyntax):Array<TextSpan>;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class Indenter {
	static function getIndentation(node:SourceUnitSyntax, soruceText:IScriptSnapshot, position:Float, editorOptions:EditorOptions):Float;
	static function belongsToBracket(sourceText:Dynamic, token:Dynamic, position:Dynamic):Dynamic;
	static function isInContainerNode(parent:Dynamic, element:Dynamic):Dynamic;
	static function getCustomListIndentation(list:Dynamic, element:Dynamic):Dynamic;
	static function getListItemIndentation(list:Dynamic, elementIndex:Dynamic):Dynamic;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class GetScriptLexicalStructureWalker extends PositionTrackingWalker {
	var fileName : Dynamic;
	var nameStack : Dynamic;
	var kindStack : Dynamic;
	var currentMemberVariableDeclaration : Dynamic;
	var currentVariableStatement : Dynamic;
	var currentInterfaceDeclaration : Dynamic;
	var parentScopes : Dynamic;
	var currentScope : Dynamic;
	function createScope():Dynamic;
	function pushNewContainerScope(containerName:Dynamic, kind:Dynamic):Dynamic;
	function popScope():Dynamic;
	function new(fileName:String):Void;
	function collectItems(items:Dynamic, ?scope:Dynamic):Dynamic;
	static function getListsOfAllScriptLexicalStructure(items:Array<NavigateToItem>, fileName:String, unit:SourceUnitSyntax):Void;
	function createItem(node:Dynamic, modifiers:Dynamic, kind:Dynamic, name:Dynamic):Dynamic;
	function addAdditionalSpan(node:Dynamic, key:Dynamic):Dynamic;
	function getKindModifiers(modifiers:Dynamic):Dynamic;
	function visitModuleDeclaration(node:ModuleDeclarationSyntax):Void;
	function visitModuleDeclarationWorker(node:Dynamic, names:Dynamic, nameIndex:Dynamic):Dynamic;
	function getModuleNames(node:Dynamic):Dynamic;
	function getModuleNamesHelper(name:Dynamic, result:Dynamic):Dynamic;
	function visitClassDeclaration(node:ClassDeclarationSyntax):Void;
	function visitInterfaceDeclaration(node:InterfaceDeclarationSyntax):Void;
	function visitObjectType(node:ObjectTypeSyntax):Void;
	function visitEnumDeclaration(node:EnumDeclarationSyntax):Void;
	function visitConstructorDeclaration(node:ConstructorDeclarationSyntax):Void;
	function visitMemberFunctionDeclaration(node:MemberFunctionDeclarationSyntax):Void;
	function visitGetAccessor(node:GetAccessorSyntax):Void;
	function visitSetAccessor(node:SetAccessorSyntax):Void;
	function visitMemberVariableDeclaration(node:MemberVariableDeclarationSyntax):Void;
	function visitVariableStatement(node:VariableStatementSyntax):Void;
	function visitVariableDeclarator(node:VariableDeclaratorSyntax):Void;
	function visitIndexSignature(node:IndexSignatureSyntax):Void;
	function visitEnumElement(node:EnumElementSyntax):Void;
	function visitCallSignature(node:CallSignatureSyntax):Void;
	function visitConstructSignature(node:ConstructSignatureSyntax):Void;
	function visitMethodSignature(node:MethodSignatureSyntax):Void;
	function visitPropertySignature(node:PropertySignatureSyntax):Void;
	function visitFunctionDeclaration(node:FunctionDeclarationSyntax):Void;
	function visitBlock(node:BlockSyntax):Void;
	function visitIfStatement(node:IfStatementSyntax):Void;
	function visitExpressionStatement(node:ExpressionStatementSyntax):Void;
	function visitThrowStatement(node:ThrowStatementSyntax):Void;
	function visitReturnStatement(node:ReturnStatementSyntax):Void;
	function visitSwitchStatement(node:SwitchStatementSyntax):Void;
	function visitWithStatement(node:WithStatementSyntax):Void;
	function visitTryStatement(node:TryStatementSyntax):Void;
	function visitLabeledStatement(node:LabeledStatementSyntax):Void;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class TypeScriptServicesFactory {
	var _shims : Dynamic;
	function createPullLanguageService(host:ILanguageServiceHost):ILanguageService;
	function createLanguageServiceShim(host:ILanguageServiceShimHost):ILanguageServiceShim;
	function createClassifier(host:IClassifierHost):Classifier;
	function createClassifierShim(host:IClassifierHost):ClassifierShim;
	function createCoreServices(host:ICoreServicesHost):CoreServices;
	function createCoreServicesShim(host:ICoreServicesHost):CoreServicesShim;
	function close():Void;
	function registerShim(shim:IShim):Void;
	function unregisterShim(shim:IShim):Void;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
extern class BraceMatcher {
	static function getMatchSpans(syntaxTree:SyntaxTree, position:Float):Array<TextSpan>;
	static function getMatchingCloseBrace(currentToken:Dynamic, position:Dynamic, result:Dynamic):Dynamic;
	static function getMatchingOpenBrace(currentToken:Dynamic, position:Dynamic, result:Dynamic):Dynamic;
	static function getMatchingCloseBraceTokenKind(positionedElement:Dynamic):Dynamic;
	static function getMatchingOpenBraceTokenKind(positionedElement:Dynamic):Dynamic;
}
extern class TypeScript.ServicesTopLevel {
	static function logInternalError(logger:ILogger, err:Error):Void;
	static function simpleForwardCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):Dynamic;
	static function forwardJSONCall(logger:ILogger, actionDescription:String, action:Void -> Dynamic):String;
	static function copyDataObject(dst:Dynamic, src:Dynamic):Dynamic;
}
