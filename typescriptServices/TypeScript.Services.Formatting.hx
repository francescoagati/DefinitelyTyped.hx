typedef ITextSnapshot = {
	function getText(span:TextSpan):String;
	function getLineNumberFromPosition(position:Float):Float;
	function getLineFromPosition(position:Float):ITextSnapshotLine;
	function getLineFromLineNumber(lineNumber:Float):ITextSnapshotLine;
};
extern class TextSnapshot {
	var snapshot : Dynamic;
	var lines : Dynamic;
	function new(snapshot:ISimpleText):Void;
	function getText(span:TextSpan):String;
	function getLineNumberFromPosition(position:Float):Float;
	function getLineFromPosition(position:Float):ITextSnapshotLine;
	function getLineFromLineNumber(lineNumber:Float):ITextSnapshotLine;
	function getLineFromLineNumberWorker(lineNumber:Dynamic):Dynamic;
}
typedef ITextSnapshotLine = {
	function snapshot():ITextSnapshot;
	function start():SnapshotPoint;
	function startPosition():Float;
	function end():SnapshotPoint;
	function endPosition():Float;
	function endIncludingLineBreak():SnapshotPoint;
	function endIncludingLineBreakPosition():Float;
	function length():Float;
	function lineNumber():Float;
	function getText():String;
};
extern class TextSnapshotLine {
	var _snapshot : Dynamic;
	var _lineNumber : Dynamic;
	var _start : Dynamic;
	var _end : Dynamic;
	var _lineBreak : Dynamic;
	function new(_snapshot:ITextSnapshot, _lineNumber:Float, _start:Float, _end:Float, _lineBreak:String):Void;
	function snapshot():ITextSnapshot;
	function start():SnapshotPoint;
	function startPosition():Float;
	function end():SnapshotPoint;
	function endPosition():Float;
	function endIncludingLineBreak():SnapshotPoint;
	function endIncludingLineBreakPosition():Float;
	function length():Float;
	function lineNumber():Float;
	function getText():String;
}
extern class SnapshotPoint {
	var snapshot : ITextSnapshot;
	var position : Float;
	function new(snapshot:ITextSnapshot, position:Float):Void;
	function getContainingLine():ITextSnapshotLine;
	function add(offset:Float):SnapshotPoint;
}
extern class FormattingContext {
	var snapshot : Dynamic;
	var formattingRequestKind : FormattingRequestKind;
	var currentTokenSpan : TokenSpan;
	var nextTokenSpan : TokenSpan;
	var contextNode : IndentationNodeContext;
	var currentTokenParent : IndentationNodeContext;
	var nextTokenParent : IndentationNodeContext;
	var contextNodeAllOnSameLine : Dynamic;
	var nextNodeAllOnSameLine : Dynamic;
	var tokensAreOnSameLine : Dynamic;
	var contextNodeBlockIsOnOneLine : Dynamic;
	var nextNodeBlockIsOnOneLine : Dynamic;
	function new(snapshot:ITextSnapshot, formattingRequestKind:FormattingRequestKind):Void;
	function updateContext(currentTokenSpan:TokenSpan, currentTokenParent:IndentationNodeContext, nextTokenSpan:TokenSpan, nextTokenParent:IndentationNodeContext, commonParent:IndentationNodeContext):Void;
	function ContextNodeAllOnSameLine():Bool;
	function NextNodeAllOnSameLine():Bool;
	function TokensAreOnSameLine():Bool;
	function ContextNodeBlockIsOnOneLine():Bool;
	function NextNodeBlockIsOnOneLine():Bool;
	function NodeIsOnOneLine(node:IndentationNodeContext):Bool;
	function BlockIsOnOneLine(node:IndentationNodeContext):Bool;
}
extern class FormattingManager {
	var syntaxTree : Dynamic;
	var snapshot : Dynamic;
	var rulesProvider : Dynamic;
	var options : Dynamic;
	function new(syntaxTree:SyntaxTree, snapshot:ITextSnapshot, rulesProvider:RulesProvider, editorOptions:EditorOptions):Void;
	function formatSelection(minChar:Float, limChar:Float):Array<TextEdit>;
	function formatDocument(minChar:Float, limChar:Float):Array<TextEdit>;
	function formatOnPaste(minChar:Float, limChar:Float):Array<TextEdit>;
	function formatOnSemicolon(caretPosition:Float):Array<TextEdit>;
	function formatOnClosingCurlyBrace(caretPosition:Float):Array<TextEdit>;
	function formatOnEnter(caretPosition:Float):Array<TextEdit>;
	function formatSpan(span:Dynamic, formattingRequestKind:Dynamic):Dynamic;
}
@:enum abstract FormattingRequestKind(Int) {
	var FormatDocument = 0;
	var FormatSelection = 1;
	var FormatOnEnter = 2;
	var FormatOnSemicolon = 3;
	var FormatOnClosingCurlyBrace = 4;
	var FormatOnPaste = 5;
}
extern class Rule {
	var Descriptor : RuleDescriptor;
	var Operation : RuleOperation;
	var Flag : RuleFlags;
	function new(Descriptor:RuleDescriptor, Operation:RuleOperation, ?Flag:RuleFlags):Void;
	function toString():String;
}
@:enum abstract RuleAction(Int) {
	var Ignore = 0;
	var Space = 1;
	var NewLine = 2;
	var Delete = 3;
}
extern class RuleDescriptor {
	var LeftTokenRange : Shared.TokenRange;
	var RightTokenRange : Shared.TokenRange;
	function new(LeftTokenRange:Shared.TokenRange, RightTokenRange:Shared.TokenRange):Void;
	function toString():String;
	static function create1(left:SyntaxKind, right:SyntaxKind):RuleDescriptor;
	static function create2(left:Shared.TokenRange, right:SyntaxKind):RuleDescriptor;
	static function create3(left:SyntaxKind, right:Shared.TokenRange):RuleDescriptor;
	static function create4(left:Shared.TokenRange, right:Shared.TokenRange):RuleDescriptor;
}
@:enum abstract RuleFlags(Int) {
	var None = 0;
	var CanDeleteNewLines = 1;
}
extern class RuleOperation {
	var Context : RuleOperationContext;
	var Action : RuleAction;
	function new():Void;
	function toString():String;
	static function create1(action:RuleAction):RuleOperation;
	static function create2(context:RuleOperationContext, action:RuleAction):RuleOperation;
}
extern class RuleOperationContext {
	var customContextChecks : Dynamic;
	function new(funcs:haxe.extern.Rest<{ }>):Void;
	static var Any : RuleOperationContext;
	function IsAny():Bool;
	function InContext(context:FormattingContext):Bool;
}
extern class Rules {
	function getRuleName(rule:Rule):Dynamic;
	var IgnoreBeforeComment : Rule;
	var IgnoreAfterLineComment : Rule;
	var NoSpaceBeforeSemicolon : Rule;
	var NoSpaceBeforeColon : Rule;
	var NoSpaceBeforeQMark : Rule;
	var SpaceAfterColon : Rule;
	var SpaceAfterQMark : Rule;
	var SpaceAfterSemicolon : Rule;
	var SpaceAfterCloseBrace : Rule;
	var SpaceBetweenCloseBraceAndElse : Rule;
	var SpaceBetweenCloseBraceAndWhile : Rule;
	var NoSpaceAfterCloseBrace : Rule;
	var NoSpaceBeforeDot : Rule;
	var NoSpaceAfterDot : Rule;
	var NoSpaceBeforeOpenBracket : Rule;
	var NoSpaceAfterOpenBracket : Rule;
	var NoSpaceBeforeCloseBracket : Rule;
	var NoSpaceAfterCloseBracket : Rule;
	var SpaceAfterOpenBrace : Rule;
	var SpaceBeforeCloseBrace : Rule;
	var NoSpaceBetweenEmptyBraceBrackets : Rule;
	var NewLineAfterOpenBraceInBlockContext : Rule;
	var NewLineBeforeCloseBraceInBlockContext : Rule;
	var NoSpaceAfterUnaryPrefixOperator : Rule;
	var NoSpaceAfterUnaryPreincrementOperator : Rule;
	var NoSpaceAfterUnaryPredecrementOperator : Rule;
	var NoSpaceBeforeUnaryPostincrementOperator : Rule;
	var NoSpaceBeforeUnaryPostdecrementOperator : Rule;
	var SpaceAfterPostincrementWhenFollowedByAdd : Rule;
	var SpaceAfterAddWhenFollowedByUnaryPlus : Rule;
	var SpaceAfterAddWhenFollowedByPreincrement : Rule;
	var SpaceAfterPostdecrementWhenFollowedBySubtract : Rule;
	var SpaceAfterSubtractWhenFollowedByUnaryMinus : Rule;
	var SpaceAfterSubtractWhenFollowedByPredecrement : Rule;
	var NoSpaceBeforeComma : Rule;
	var SpaceAfterCertainKeywords : Rule;
	var NoSpaceBeforeOpenParenInFuncCall : Rule;
	var SpaceAfterFunctionInFuncDecl : Rule;
	var NoSpaceBeforeOpenParenInFuncDecl : Rule;
	var SpaceAfterVoidOperator : Rule;
	var NoSpaceBetweenReturnAndSemicolon : Rule;
	var SpaceBetweenStatements : Rule;
	var SpaceAfterTryFinally : Rule;
	var SpaceAfterGetSetInMember : Rule;
	var SpaceBeforeBinaryKeywordOperator : Rule;
	var SpaceAfterBinaryKeywordOperator : Rule;
	var NoSpaceAfterConstructor : Rule;
	var NoSpaceAfterModuleImport : Rule;
	var SpaceAfterCertainTypeScriptKeywords : Rule;
	var SpaceBeforeCertainTypeScriptKeywords : Rule;
	var SpaceAfterModuleName : Rule;
	var SpaceAfterArrow : Rule;
	var NoSpaceAfterEllipsis : Rule;
	var NoSpaceAfterOptionalParameters : Rule;
	var NoSpaceBeforeOpenAngularBracket : Rule;
	var NoSpaceBetweenCloseParenAndAngularBracket : Rule;
	var NoSpaceAfterOpenAngularBracket : Rule;
	var NoSpaceBeforeCloseAngularBracket : Rule;
	var NoSpaceAfterCloseAngularBracket : Rule;
	var NoSpaceBetweenEmptyInterfaceBraceBrackets : Rule;
	var HighPriorityCommonRules : Array<Rule>;
	var LowPriorityCommonRules : Array<Rule>;
	var SpaceAfterComma : Rule;
	var NoSpaceAfterComma : Rule;
	var SpaceBeforeBinaryOperator : Rule;
	var SpaceAfterBinaryOperator : Rule;
	var NoSpaceBeforeBinaryOperator : Rule;
	var NoSpaceAfterBinaryOperator : Rule;
	var SpaceAfterKeywordInControl : Rule;
	var NoSpaceAfterKeywordInControl : Rule;
	var FunctionOpenBraceLeftTokenRange : Shared.TokenRange;
	var SpaceBeforeOpenBraceInFunction : Rule;
	var NewLineBeforeOpenBraceInFunction : Rule;
	var TypeScriptOpenBraceLeftTokenRange : Shared.TokenRange;
	var SpaceBeforeOpenBraceInTypeScriptDeclWithBlock : Rule;
	var NewLineBeforeOpenBraceInTypeScriptDeclWithBlock : Rule;
	var ControlOpenBraceLeftTokenRange : Shared.TokenRange;
	var SpaceBeforeOpenBraceInControl : Rule;
	var NewLineBeforeOpenBraceInControl : Rule;
	var SpaceAfterSemicolonInFor : Rule;
	var NoSpaceAfterSemicolonInFor : Rule;
	var SpaceAfterOpenParen : Rule;
	var SpaceBeforeCloseParen : Rule;
	var NoSpaceBetweenParens : Rule;
	var NoSpaceAfterOpenParen : Rule;
	var NoSpaceBeforeCloseParen : Rule;
	var SpaceAfterAnonymousFunctionKeyword : Rule;
	var NoSpaceAfterAnonymousFunctionKeyword : Rule;
	function new():Void;
	static function IsForContext(context:FormattingContext):Bool;
	static function IsNotForContext(context:FormattingContext):Bool;
	static function IsBinaryOpContext(context:FormattingContext):Bool;
	static function IsNotBinaryOpContext(context:FormattingContext):Bool;
	static function IsSameLineTokenOrBeforeMultilineBlockContext(context:FormattingContext):Bool;
	static function IsBeforeMultilineBlockContext(context:FormattingContext):Bool;
	static function IsMultilineBlockContext(context:FormattingContext):Bool;
	static function IsSingleLineBlockContext(context:FormattingContext):Bool;
	static function IsBlockContext(context:FormattingContext):Bool;
	static function IsBeforeBlockContext(context:FormattingContext):Bool;
	static function NodeIsBlockContext(node:IndentationNodeContext):Bool;
	static function IsFunctionDeclContext(context:FormattingContext):Bool;
	static function IsTypeScriptDeclWithBlockContext(context:FormattingContext):Bool;
	static function NodeIsTypeScriptDeclWithBlockContext(node:IndentationNodeContext):Bool;
	static function IsAfterCodeBlockContext(context:FormattingContext):Bool;
	static function IsControlDeclContext(context:FormattingContext):Bool;
	static function IsObjectContext(context:FormattingContext):Bool;
	static function IsFunctionCallContext(context:FormattingContext):Bool;
	static function IsNewContext(context:FormattingContext):Bool;
	static function IsFunctionCallOrNewContext(context:FormattingContext):Bool;
	static function IsSameLineTokenContext(context:FormattingContext):Bool;
	static function IsNotFormatOnEnter(context:FormattingContext):Bool;
	static function IsModuleDeclContext(context:FormattingContext):Bool;
	static function IsObjectTypeContext(context:FormattingContext):Bool;
	static function IsTypeArgumentOrParameter(tokenKind:SyntaxKind, parentKind:SyntaxKind):Bool;
	static function IsTypeArgumentOrParameterContext(context:FormattingContext):Bool;
	static function IsVoidOpContext(context:FormattingContext):Bool;
}
extern class RulesMap {
	var map : Array<RulesBucket>;
	var mapRowLength : Float;
	function new():Void;
	static function create(rules:Array<Rule>):RulesMap;
	function Initialize(rules:Array<Rule>):Array<RulesBucket>;
	function FillRules(rules:Array<Rule>, rulesBucketConstructionStateList:Array<RulesBucketConstructionState>):Void;
	function GetRuleBucketIndex(row:Dynamic, column:Dynamic):Dynamic;
	function FillRule(rule:Dynamic, rulesBucketConstructionStateList:Dynamic):Dynamic;
	function GetRule(context:FormattingContext):Rule;
}
@:enum abstract RulesPosition(Int) {
	var IgnoreRulesSpecific = 0;
	var IgnoreRulesAny = 1;
	var ContextRulesSpecific = 2;
	var ContextRulesAny = 3;
	var NoContextRulesSpecific = 4;
	var NoContextRulesAny = 5;
}
extern class RulesBucketConstructionState {
	var rulesInsertionIndexBitmap : Dynamic;
	function new():Void;
	function GetInsertionIndex(maskPosition:RulesPosition):Float;
	function IncreaseInsertionIndex(maskPosition:RulesPosition):Void;
}
extern class RulesBucket {
	var rules : Dynamic;
	function new():Void;
	function Rules():Array<Rule>;
	function AddRule(rule:Rule, specificTokens:Bool, constructionState:Array<RulesBucketConstructionState>, rulesBucketIndex:Float):Void;
}
extern class RulesProvider {
	var logger : Dynamic;
	var globalRules : Dynamic;
	var options : Dynamic;
	var activeRules : Dynamic;
	var rulesMap : Dynamic;
	function new(logger:ILogger):Void;
	function getRuleName(rule:Rule):String;
	function getRuleByName(name:String):Rule;
	function getRulesMap():RulesMap;
	function ensureUpToDate(options:FormatCodeOptions):Void;
	function createActiveRules(options:Dynamic):Dynamic;
}
extern class TextEditInfo {
	var position : Float;
	var length : Float;
	var replaceWith : String;
	function new(position:Float, length:Float, replaceWith:String):Void;
	function toString():String;
}
extern class TokenSpan extends TextSpan {
	var _kind : Dynamic;
	function new(kind:SyntaxKind, start:Float, length:Float):Void;
	function kind():SyntaxKind;
}
extern class IndentationNodeContext {
	var _node : Dynamic;
	var _parent : Dynamic;
	var _fullStart : Dynamic;
	var _indentationAmount : Dynamic;
	var _childIndentationAmountDelta : Dynamic;
	var _depth : Dynamic;
	var _hasSkippedOrMissingTokenChild : Dynamic;
	function new(parent:IndentationNodeContext, node:SyntaxNode, fullStart:Float, indentationAmount:Float, childIndentationAmountDelta:Float):Void;
	function parent():IndentationNodeContext;
	function node():SyntaxNode;
	function fullStart():Float;
	function fullWidth():Float;
	function start():Float;
	function end():Float;
	function indentationAmount():Float;
	function childIndentationAmountDelta():Float;
	function depth():Float;
	function kind():SyntaxKind;
	function hasSkippedOrMissingTokenChild():Bool;
	function clone(pool:IndentationNodeContextPool):IndentationNodeContext;
	function update(parent:IndentationNodeContext, node:SyntaxNode, fullStart:Float, indentationAmount:Float, childIndentationAmountDelta:Float):Void;
}
extern class IndentationNodeContextPool {
	var nodes : Dynamic;
	function getNode(parent:IndentationNodeContext, node:SyntaxNode, fullStart:Float, indentationLevel:Float, childIndentationLevelDelta:Float):IndentationNodeContext;
	function releaseNode(node:IndentationNodeContext, ?recursive:Bool):Void;
}
extern class IndentationTrackingWalker extends SyntaxWalker {
	var options : FormattingOptions;
	var _position : Dynamic;
	var _parent : Dynamic;
	var _textSpan : Dynamic;
	var _snapshot : Dynamic;
	var _lastTriviaWasNewLine : Dynamic;
	var _indentationNodeContextPool : Dynamic;
	function new(textSpan:TextSpan, sourceUnit:SourceUnitSyntax, snapshot:ITextSnapshot, indentFirstToken:Bool, options:FormattingOptions):Void;
	function position():Float;
	function parent():IndentationNodeContext;
	function textSpan():TextSpan;
	function snapshot():ITextSnapshot;
	function indentationNodeContextPool():IndentationNodeContextPool;
	function forceIndentNextToken(tokenStart:Float):Void;
	function forceSkipIndentingNextToken(tokenStart:Float):Void;
	function indentToken(token:ISyntaxToken, indentationAmount:Float, commentIndentationAmount:Float):Void;
	function visitTokenInSpan(token:ISyntaxToken):Void;
	function visitToken(token:ISyntaxToken):Void;
	function visitNode(node:SyntaxNode):Void;
	function getTokenIndentationAmount(token:Dynamic):Dynamic;
	function getCommentIndentationAmount(token:Dynamic):Dynamic;
	function getNodeIndentation(node:Dynamic, ?newLineInsertedByFormatting:Dynamic):Dynamic;
	function shouldIndentBlockInParent(parent:Dynamic):Dynamic;
	function forceRecomputeIndentationOfParent(tokenStart:Dynamic, newLineAdded:Dynamic):Dynamic;
}
extern class MultipleTokenIndenter extends IndentationTrackingWalker {
	var _edits : Dynamic;
	function new(textSpan:TextSpan, sourceUnit:SourceUnitSyntax, snapshot:ITextSnapshot, indentFirstToken:Bool, options:FormattingOptions):Void;
	function indentToken(token:ISyntaxToken, indentationAmount:Float, commentIndentationAmount:Float):Void;
	function edits():Array<TextEditInfo>;
	function recordEdit(position:Float, length:Float, replaceWith:String):Void;
	function recordIndentationEditsForToken(token:Dynamic, indentationString:Dynamic, commentIndentationString:Dynamic):Dynamic;
	function recordIndentationEditsForSingleLineOrSkippedText(trivia:Dynamic, fullStart:Dynamic, indentationString:Dynamic):Dynamic;
	function recordIndentationEditsForWhitespace(trivia:Dynamic, fullStart:Dynamic, indentationString:Dynamic):Dynamic;
	function recordIndentationEditsForMultiLineComment(trivia:Dynamic, fullStart:Dynamic, indentationString:Dynamic, leadingWhiteSpace:Dynamic, firstLineAlreadyIndented:Dynamic):Dynamic;
	function recordIndentationEditsForSegment(segment:Dynamic, fullStart:Dynamic, indentationColumns:Dynamic, whiteSpaceColumnsInFirstSegment:Dynamic):Dynamic;
}
extern class SingleTokenIndenter extends IndentationTrackingWalker {
	var indentationAmount : Dynamic;
	var indentationPosition : Dynamic;
	function new(indentationPosition:Float, sourceUnit:SourceUnitSyntax, snapshot:ITextSnapshot, indentFirstToken:Bool, options:FormattingOptions):Void;
	static function getIndentationAmount(position:Float, sourceUnit:SourceUnitSyntax, snapshot:ITextSnapshot, options:FormattingOptions):Float;
	function indentToken(token:ISyntaxToken, indentationAmount:Float, commentIndentationAmount:Float):Void;
}
extern class Formatter extends MultipleTokenIndenter {
	var previousTokenSpan : Dynamic;
	var previousTokenParent : Dynamic;
	var scriptHasErrors : Dynamic;
	var rulesProvider : Dynamic;
	var formattingRequestKind : Dynamic;
	var formattingContext : Dynamic;
	function new(textSpan:TextSpan, sourceUnit:SourceUnitSyntax, indentFirstToken:Bool, options:FormattingOptions, snapshot:ITextSnapshot, rulesProvider:RulesProvider, formattingRequestKind:FormattingRequestKind):Void;
	static function getEdits(textSpan:TextSpan, sourceUnit:SourceUnitSyntax, options:FormattingOptions, indentFirstToken:Bool, snapshot:ITextSnapshot, rulesProvider:RulesProvider, formattingRequestKind:FormattingRequestKind):Array<TextEditInfo>;
	function visitTokenInSpan(token:ISyntaxToken):Void;
	function processToken(token:Dynamic):Dynamic;
	function processTrivia(triviaList:Dynamic, fullStart:Dynamic):Dynamic;
	function findCommonParents(parent1:Dynamic, parent2:Dynamic):Dynamic;
	function formatPair(t1:Dynamic, t1Parent:Dynamic, t2:Dynamic, t2Parent:Dynamic):Dynamic;
	function getLineNumber(span:Dynamic):Dynamic;
	function trimWhitespaceInLineRange(startLine:Dynamic, endLine:Dynamic, ?token:Dynamic):Dynamic;
	function trimWhitespace(line:Dynamic, ?token:Dynamic):Dynamic;
	function RecordRuleEdits(rule:Dynamic, t1:Dynamic, t2:Dynamic):Dynamic;
}
