extern class ScriptSnapshotTopLevel {
	static function fromString(text:String):IScriptSnapshot;
	static function displayPartsToString(displayParts:Array<SymbolDisplayPart>):String;
	static function getDefaultCompilerOptions():CompilerOptions;
	static function createDocumentRegistry():DocumentRegistry;
	static function preProcessFile(sourceText:String, ?readImportFiles:Bool):PreProcessedFileInfo;
	static function createLanguageService(host:LanguageServiceHost, documentRegistry:DocumentRegistry):LanguageService;
	static function createClassifier(host:Logger):Classifier;
}
typedef PreProcessedFileInfo = {
	var referencedFiles : Array<FileReference>;
	var importedFiles : Array<FileReference>;
	var isLibFile : Bool;
};
typedef Logger = {
	function log(s:String):Void;
};
typedef LanguageServiceHost = {
	>Logger,
	function getCompilationSettings():CompilerOptions;
	function getScriptFileNames():Array<String>;
	function getScriptVersion(fileName:String):String;
	function getScriptIsOpen(fileName:String):Bool;
	function getScriptSnapshot(fileName:String):IScriptSnapshot;
	@:optional
	function getLocalizedDiagnosticMessages():Dynamic;
	@:optional
	function getCancellationToken():CancellationToken;
	function getCurrentDirectory():String;
	function getDefaultLibFilename(options:CompilerOptions):String;
};
typedef LanguageService = {
	function cleanupSemanticCache():Void;
	function getSyntacticDiagnostics(fileName:String):Array<Diagnostic>;
	function getSemanticDiagnostics(fileName:String):Array<Diagnostic>;
	function getCompilerOptionsDiagnostics():Array<Diagnostic>;
	function getSyntacticClassifications(fileName:String, span:TextSpan):Array<ClassifiedSpan>;
	function getSemanticClassifications(fileName:String, span:TextSpan):Array<ClassifiedSpan>;
	function getCompletionsAtPosition(fileName:String, position:Float):CompletionInfo;
	function getCompletionEntryDetails(fileName:String, position:Float, entryName:String):CompletionEntryDetails;
	function getQuickInfoAtPosition(fileName:String, position:Float):QuickInfo;
	function getNameOrDottedNameSpan(fileName:String, startPos:Float, endPos:Float):TextSpan;
	function getBreakpointStatementAtPosition(fileName:String, position:Float):TextSpan;
	function getSignatureHelpItems(fileName:String, position:Float):SignatureHelpItems;
	function getRenameInfo(fileName:String, position:Float):RenameInfo;
	function findRenameLocations(fileName:String, position:Float, findInStrings:Bool, findInComments:Bool):Array<RenameLocation>;
	function getDefinitionAtPosition(fileName:String, position:Float):Array<DefinitionInfo>;
	function getReferencesAtPosition(fileName:String, position:Float):Array<ReferenceEntry>;
	function getOccurrencesAtPosition(fileName:String, position:Float):Array<ReferenceEntry>;
	function getNavigateToItems(searchValue:String):Array<NavigateToItem>;
	function getNavigationBarItems(fileName:String):Array<NavigationBarItem>;
	function getOutliningSpans(fileName:String):Array<OutliningSpan>;
	function getTodoComments(fileName:String, descriptors:Array<TodoCommentDescriptor>):Array<TodoComment>;
	function getBraceMatchingAtPosition(fileName:String, position:Float):Array<TextSpan>;
	function getIndentationAtPosition(fileName:String, position:Float, options:EditorOptions):Float;
	function getFormattingEditsForRange(fileName:String, start:Float, end:Float, options:FormatCodeOptions):Array<TextChange>;
	function getFormattingEditsForDocument(fileName:String, options:FormatCodeOptions):Array<TextChange>;
	function getFormattingEditsAfterKeystroke(fileName:String, position:Float, key:String, options:FormatCodeOptions):Array<TextChange>;
	function getEmitOutput(fileName:String):EmitOutput;
	function getSourceFile(filename:String):SourceFile;
	function dispose():Void;
};
extern class TextSpan {
	var _start : Dynamic;
	var _length : Dynamic;
	function new(start:Float, length:Float):Void;
	function toJSON(key:Dynamic):Dynamic;
	function start():Float;
	function length():Float;
	function end():Float;
	function isEmpty():Bool;
	function containsPosition(position:Float):Bool;
	function containsTextSpan(span:TextSpan):Bool;
	function overlapsWith(span:TextSpan):Bool;
	function overlap(span:TextSpan):TextSpan;
	function intersectsWithTextSpan(span:TextSpan):Bool;
	function intersectsWith(start:Float, length:Float):Bool;
	function intersectsWithPosition(position:Float):Bool;
	function intersection(span:TextSpan):TextSpan;
	static function fromBounds(start:Float, end:Float):TextSpan;
}
extern class TextChangeRange {
	static var unchanged : TextChangeRange;
	var _span : Dynamic;
	var _newLength : Dynamic;
	function new(span:TextSpan, newLength:Float):Void;
	function span():TextSpan;
	function newLength():Float;
	function newSpan():TextSpan;
	function isUnchanged():Bool;
	static function collapseChangesAcrossMultipleVersions(changes:Array<TextChangeRange>):TextChangeRange;
}
typedef ClassifiedSpan = {
	var textSpan : TextSpan;
	var classificationType : String;
};
typedef NavigationBarItem = {
	var text : String;
	var kind : String;
	var kindModifiers : String;
	var spans : Array<TextSpan>;
	var childItems : Array<NavigationBarItem>;
	var indent : Float;
	var bolded : Bool;
	var grayed : Bool;
};
typedef TodoCommentDescriptor = {
	var text : String;
	var priority : Float;
};
typedef TodoComment = {
	var descriptor : TodoCommentDescriptor;
	var message : String;
	var position : Float;
};
extern class TextChange {
	var span : TextSpan;
	var newText : String;
}
typedef RenameLocation = {
	var textSpan : TextSpan;
	var fileName : String;
};
typedef ReferenceEntry = {
	var textSpan : TextSpan;
	var fileName : String;
	var isWriteAccess : Bool;
};
typedef NavigateToItem = {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var matchKind : String;
	var fileName : String;
	var textSpan : TextSpan;
	var containerName : String;
	var containerKind : String;
};
typedef EditorOptions = {
	var IndentSize : Float;
	var TabSize : Float;
	var NewLineCharacter : String;
	var ConvertTabsToSpaces : Bool;
};
typedef FormatCodeOptions = {
	>EditorOptions,
	var InsertSpaceAfterCommaDelimiter : Bool;
	var InsertSpaceAfterSemicolonInForStatements : Bool;
	var InsertSpaceBeforeAndAfterBinaryOperators : Bool;
	var InsertSpaceAfterKeywordsInControlFlowStatements : Bool;
	var InsertSpaceAfterFunctionKeywordForAnonymousFunctions : Bool;
	var InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis : Bool;
	var PlaceOpenBraceOnNewLineForFunctions : Bool;
	var PlaceOpenBraceOnNewLineForControlBlocks : Bool;
};
typedef DefinitionInfo = {
	var fileName : String;
	var textSpan : TextSpan;
	var kind : String;
	var name : String;
	var containerKind : String;
	var containerName : String;
};
@:enum abstract SymbolDisplayPartKind(Int) {
	var aliasName = 0;
	var className = 1;
	var enumName = 2;
	var fieldName = 3;
	var interfaceName = 4;
	var keyword = 5;
	var lineBreak = 6;
	var numericLiteral = 7;
	var stringLiteral = 8;
	var localName = 9;
	var methodName = 10;
	var moduleName = 11;
	var operator = 12;
	var parameterName = 13;
	var propertyName = 14;
	var punctuation = 15;
	var space = 16;
	var text = 17;
	var typeParameterName = 18;
	var enumMemberName = 19;
	var functionName = 20;
	var regularExpressionLiteral = 21;
}
typedef SymbolDisplayPart = {
	var text : String;
	var kind : String;
};
typedef QuickInfo = {
	var kind : String;
	var kindModifiers : String;
	var textSpan : TextSpan;
	var displayParts : Array<SymbolDisplayPart>;
	var documentation : Array<SymbolDisplayPart>;
};
typedef RenameInfo = {
	var canRename : Bool;
	var localizedErrorMessage : String;
	var displayName : String;
	var fullDisplayName : String;
	var kind : String;
	var kindModifiers : String;
	var triggerSpan : TextSpan;
};
typedef SignatureHelpParameter = {
	var name : String;
	var documentation : Array<SymbolDisplayPart>;
	var displayParts : Array<SymbolDisplayPart>;
	var isOptional : Bool;
};
typedef SignatureHelpItem = {
	var isVariadic : Bool;
	var prefixDisplayParts : Array<SymbolDisplayPart>;
	var suffixDisplayParts : Array<SymbolDisplayPart>;
	var separatorDisplayParts : Array<SymbolDisplayPart>;
	var parameters : Array<SignatureHelpParameter>;
	var documentation : Array<SymbolDisplayPart>;
};
typedef SignatureHelpItems = {
	var items : Array<SignatureHelpItem>;
	var applicableSpan : TextSpan;
	var selectedItemIndex : Float;
	var argumentIndex : Float;
	var argumentCount : Float;
};
typedef CompletionInfo = {
	var isMemberCompletion : Bool;
	var entries : Array<CompletionEntry>;
};
typedef CompletionEntry = {
	var name : String;
	var kind : String;
	var kindModifiers : String;
};
typedef CompletionEntryDetails = {
	var name : String;
	var kind : String;
	var kindModifiers : String;
	var displayParts : Array<SymbolDisplayPart>;
	var documentation : Array<SymbolDisplayPart>;
};
typedef OutliningSpan = {
	var textSpan : TextSpan;
	var hintSpan : TextSpan;
	var bannerText : String;
	var autoCollapse : Bool;
};
typedef EmitOutput = {
	var outputFiles : Array<OutputFile>;
	var emitOutputStatus : EmitReturnStatus;
};
@:enum abstract OutputFileType(Int) {
	var JavaScript = 0;
	var SourceMap = 1;
	var Declaration = 2;
}
typedef OutputFile = {
	var name : String;
	var writeByteOrderMark : Bool;
	var text : String;
};
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
typedef ClassificationResult = {
	var finalLexState : EndOfLineState;
	var entries : Array<ClassificationInfo>;
};
typedef ClassificationInfo = {
	var length : Float;
	var classification : TokenClass;
};
typedef Classifier = {
	function getClassificationsForLine(text:String, lexState:EndOfLineState, ?classifyKeywordsInGenerics:Bool):ClassificationResult;
};
typedef DocumentRegistry = {
	function acquireDocument(filename:String, compilationSettings:CompilerOptions, scriptSnapshot:IScriptSnapshot, version:String, isOpen:Bool):SourceFile;
	function updateDocument(sourceFile:SourceFile, filename:String, compilationSettings:CompilerOptions, scriptSnapshot:IScriptSnapshot, version:String, isOpen:Bool, textChangeRange:TextChangeRange):SourceFile;
	function releaseDocument(filename:String, compilationSettings:CompilerOptions):Void;
};
extern class ScriptElementKind {
	static var unknown : String;
	static var keyword : String;
	static var scriptElement : String;
	static var moduleElement : String;
	static var classElement : String;
	static var interfaceElement : String;
	static var typeElement : String;
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
	static var label : String;
	static var alias : String;
	static var constElement : String;
	static var letElement : String;
}
extern class ScriptElementKindModifier {
	static var none : String;
	static var publicMemberModifier : String;
	static var privateMemberModifier : String;
	static var protectedMemberModifier : String;
	static var exportedModifier : String;
	static var ambientModifier : String;
	static var staticModifier : String;
}
extern class ClassificationTypeNames {
	static var comment : String;
	static var identifier : String;
	static var keyword : String;
	static var numericLiteral : String;
	static var operator : String;
	static var stringLiteral : String;
	static var whiteSpace : String;
	static var text : String;
	static var punctuation : String;
	static var className : String;
	static var enumName : String;
	static var interfaceName : String;
	static var moduleName : String;
	static var typeParameterName : String;
	static var typeAlias : String;
}
typedef DisplayPartsSymbolWriter = {
	>SymbolWriter,
	function displayParts():Array<SymbolDisplayPart>;
};
extern class OperationCanceledException {

}
extern class CancellationTokenObject {
	var cancellationToken : Dynamic;
	static var None : CancellationTokenObject;
	function new(cancellationToken:CancellationToken):Void;
	function isCancellationRequested():Bool;
	function throwIfCancellationRequested():Void;
}
