typedef Map<T> = { };
typedef TextRange = {
	var pos : Float;
	var end : Float;
};
@:enum abstract SyntaxKind(Int) {
	var Unknown = 0;
	var EndOfFileToken = 1;
	var SingleLineCommentTrivia = 2;
	var MultiLineCommentTrivia = 3;
	var NewLineTrivia = 4;
	var WhitespaceTrivia = 5;
	var NumericLiteral = 6;
	var StringLiteral = 7;
	var RegularExpressionLiteral = 8;
	var NoSubstitutionTemplateLiteral = 9;
	var TemplateHead = 10;
	var TemplateMiddle = 11;
	var TemplateTail = 12;
	var OpenBraceToken = 13;
	var CloseBraceToken = 14;
	var OpenParenToken = 15;
	var CloseParenToken = 16;
	var OpenBracketToken = 17;
	var CloseBracketToken = 18;
	var DotToken = 19;
	var DotDotDotToken = 20;
	var SemicolonToken = 21;
	var CommaToken = 22;
	var LessThanToken = 23;
	var GreaterThanToken = 24;
	var LessThanEqualsToken = 25;
	var GreaterThanEqualsToken = 26;
	var EqualsEqualsToken = 27;
	var ExclamationEqualsToken = 28;
	var EqualsEqualsEqualsToken = 29;
	var ExclamationEqualsEqualsToken = 30;
	var EqualsGreaterThanToken = 31;
	var PlusToken = 32;
	var MinusToken = 33;
	var AsteriskToken = 34;
	var SlashToken = 35;
	var PercentToken = 36;
	var PlusPlusToken = 37;
	var MinusMinusToken = 38;
	var LessThanLessThanToken = 39;
	var GreaterThanGreaterThanToken = 40;
	var GreaterThanGreaterThanGreaterThanToken = 41;
	var AmpersandToken = 42;
	var BarToken = 43;
	var CaretToken = 44;
	var ExclamationToken = 45;
	var TildeToken = 46;
	var AmpersandAmpersandToken = 47;
	var BarBarToken = 48;
	var QuestionToken = 49;
	var ColonToken = 50;
	var EqualsToken = 51;
	var PlusEqualsToken = 52;
	var MinusEqualsToken = 53;
	var AsteriskEqualsToken = 54;
	var SlashEqualsToken = 55;
	var PercentEqualsToken = 56;
	var LessThanLessThanEqualsToken = 57;
	var GreaterThanGreaterThanEqualsToken = 58;
	var GreaterThanGreaterThanGreaterThanEqualsToken = 59;
	var AmpersandEqualsToken = 60;
	var BarEqualsToken = 61;
	var CaretEqualsToken = 62;
	var Identifier = 63;
	var BreakKeyword = 64;
	var CaseKeyword = 65;
	var CatchKeyword = 66;
	var ClassKeyword = 67;
	var ConstKeyword = 68;
	var ContinueKeyword = 69;
	var DebuggerKeyword = 70;
	var DefaultKeyword = 71;
	var DeleteKeyword = 72;
	var DoKeyword = 73;
	var ElseKeyword = 74;
	var EnumKeyword = 75;
	var ExportKeyword = 76;
	var ExtendsKeyword = 77;
	var FalseKeyword = 78;
	var FinallyKeyword = 79;
	var ForKeyword = 80;
	var FunctionKeyword = 81;
	var IfKeyword = 82;
	var ImportKeyword = 83;
	var InKeyword = 84;
	var InstanceOfKeyword = 85;
	var NewKeyword = 86;
	var NullKeyword = 87;
	var ReturnKeyword = 88;
	var SuperKeyword = 89;
	var SwitchKeyword = 90;
	var ThisKeyword = 91;
	var ThrowKeyword = 92;
	var TrueKeyword = 93;
	var TryKeyword = 94;
	var TypeOfKeyword = 95;
	var VarKeyword = 96;
	var VoidKeyword = 97;
	var WhileKeyword = 98;
	var WithKeyword = 99;
	var ImplementsKeyword = 100;
	var InterfaceKeyword = 101;
	var LetKeyword = 102;
	var PackageKeyword = 103;
	var PrivateKeyword = 104;
	var ProtectedKeyword = 105;
	var PublicKeyword = 106;
	var StaticKeyword = 107;
	var YieldKeyword = 108;
	var AnyKeyword = 109;
	var BooleanKeyword = 110;
	var ConstructorKeyword = 111;
	var DeclareKeyword = 112;
	var GetKeyword = 113;
	var ModuleKeyword = 114;
	var RequireKeyword = 115;
	var NumberKeyword = 116;
	var SetKeyword = 117;
	var StringKeyword = 118;
	var TypeKeyword = 119;
	var QualifiedName = 120;
	var ComputedPropertyName = 121;
	var TypeParameter = 122;
	var Parameter = 123;
	var Property = 124;
	var Method = 125;
	var Constructor = 126;
	var GetAccessor = 127;
	var SetAccessor = 128;
	var CallSignature = 129;
	var ConstructSignature = 130;
	var IndexSignature = 131;
	var TypeReference = 132;
	var FunctionType = 133;
	var ConstructorType = 134;
	var TypeQuery = 135;
	var TypeLiteral = 136;
	var ArrayType = 137;
	var TupleType = 138;
	var UnionType = 139;
	var ParenthesizedType = 140;
	var ArrayLiteralExpression = 141;
	var ObjectLiteralExpression = 142;
	var PropertyAccessExpression = 143;
	var ElementAccessExpression = 144;
	var CallExpression = 145;
	var NewExpression = 146;
	var TaggedTemplateExpression = 147;
	var TypeAssertionExpression = 148;
	var ParenthesizedExpression = 149;
	var FunctionExpression = 150;
	var ArrowFunction = 151;
	var DeleteExpression = 152;
	var TypeOfExpression = 153;
	var VoidExpression = 154;
	var PrefixUnaryExpression = 155;
	var PostfixUnaryExpression = 156;
	var BinaryExpression = 157;
	var ConditionalExpression = 158;
	var TemplateExpression = 159;
	var YieldExpression = 160;
	var OmittedExpression = 161;
	var TemplateSpan = 162;
	var Block = 163;
	var VariableStatement = 164;
	var EmptyStatement = 165;
	var ExpressionStatement = 166;
	var IfStatement = 167;
	var DoStatement = 168;
	var WhileStatement = 169;
	var ForStatement = 170;
	var ForInStatement = 171;
	var ContinueStatement = 172;
	var BreakStatement = 173;
	var ReturnStatement = 174;
	var WithStatement = 175;
	var SwitchStatement = 176;
	var LabeledStatement = 177;
	var ThrowStatement = 178;
	var TryStatement = 179;
	var TryBlock = 180;
	var FinallyBlock = 181;
	var DebuggerStatement = 182;
	var VariableDeclaration = 183;
	var FunctionDeclaration = 184;
	var ClassDeclaration = 185;
	var InterfaceDeclaration = 186;
	var TypeAliasDeclaration = 187;
	var EnumDeclaration = 188;
	var ModuleDeclaration = 189;
	var ModuleBlock = 190;
	var ImportDeclaration = 191;
	var ExportAssignment = 192;
	var ExternalModuleReference = 193;
	var CaseClause = 194;
	var DefaultClause = 195;
	var HeritageClause = 196;
	var CatchClause = 197;
	var PropertyAssignment = 198;
	var ShorthandPropertyAssignment = 199;
	var EnumMember = 200;
	var SourceFile = 201;
	var Program = 202;
	var SyntaxList = 203;
	var Count = 204;
	var FirstAssignment = 51;
	var LastAssignment = 62;
	var FirstReservedWord = 64;
	var LastReservedWord = 99;
	var FirstKeyword = 64;
	var LastKeyword = 119;
	var FirstFutureReservedWord = 100;
	var LastFutureReservedWord = 108;
	var FirstTypeNode = 132;
	var LastTypeNode = 140;
	var FirstPunctuation = 13;
	var LastPunctuation = 62;
	var FirstToken = 0;
	var LastToken = 119;
	var FirstTriviaToken = 2;
	var LastTriviaToken = 5;
	var FirstLiteralToken = 6;
	var LastLiteralToken = 9;
	var FirstTemplateToken = 9;
	var LastTemplateToken = 12;
	var FirstOperator = 21;
	var LastOperator = 62;
	var FirstBinaryOperator = 23;
	var LastBinaryOperator = 62;
	var FirstNode = 120;
}
@:enum abstract NodeFlags(Int) {
	var Export = 1;
	var Ambient = 2;
	var Public = 16;
	var Private = 32;
	var Protected = 64;
	var Static = 128;
	var MultiLine = 256;
	var Synthetic = 512;
	var DeclarationFile = 1024;
	var Let = 2048;
	var Const = 4096;
	var OctalLiteral = 8192;
	var Modifier = 243;
	var AccessibilityModifier = 112;
	var BlockScoped = 6144;
}
@:enum abstract ParserContextFlags(Int) {
	var StrictMode = 1;
	var DisallowIn = 2;
	var Yield = 4;
	var GeneratorParameter = 8;
	var ContainsError = 16;
	var HasPropagatedChildContainsErrorFlag = 32;
}
typedef Node = {
	>TextRange,
	var kind : SyntaxKind;
	var flags : NodeFlags;
	@:optional
	var parserContextFlags : ParserContextFlags;
	@:optional
	var id : Float;
	@:optional
	var parent : Node;
	@:optional
	var symbol : Symbol;
	@:optional
	var locals : SymbolTable;
	@:optional
	var nextContainer : Node;
	@:optional
	var localSymbol : Symbol;
	@:optional
	var modifiers : ModifiersArray;
};
typedef NodeArray<T> = {
	>Array<T>,
	>TextRange,
	@:optional
	var hasTrailingComma : Bool;
};
typedef ModifiersArray = {
	>NodeArray<Node>,
	var flags : Float;
};
typedef Identifier = {
	>PrimaryExpression,
	var text : String;
};
typedef QualifiedName = {
	>Node,
	var left : EntityName;
	var right : Identifier;
};
typedef Declaration = {
	>Node,
	var _declarationBrand : Dynamic;
	@:optional
	var name : DeclarationName;
};
typedef ComputedPropertyName = {
	>Node,
	var expression : Expression;
};
typedef TypeParameterDeclaration = {
	>Declaration,
	var name : Identifier;
	@:optional
	var constraint : TypeNode;
	@:optional
	var expression : Expression;
};
typedef SignatureDeclaration = {
	>Declaration,
	@:optional
	var typeParameters : NodeArray<TypeParameterDeclaration>;
	var parameters : NodeArray<ParameterDeclaration>;
	@:optional
	var type : TypeNode;
};
typedef VariableDeclaration = {
	>Declaration,
	var name : Identifier;
	@:optional
	var type : TypeNode;
	@:optional
	var initializer : Expression;
};
typedef ParameterDeclaration = {
	>Declaration,
	@:optional
	var dotDotDotToken : Node;
	var name : Identifier;
	@:optional
	var questionToken : Node;
	@:optional
	var type : haxe.extern.EitherType<TypeNode, StringLiteralExpression>;
	@:optional
	var initializer : Expression;
};
typedef PropertyDeclaration = {
	>Declaration,
	>ClassElement,
	var _propertyDeclarationBrand : Dynamic;
	@:optional
	var questionToken : Node;
	@:optional
	var type : TypeNode;
	@:optional
	var initializer : Expression;
};
typedef ObjectLiteralElement = {
	>Declaration,
	var _objectLiteralBrandBrand : Dynamic;
};
typedef ShorthandPropertyAssignment = {
	>ObjectLiteralElement,
	var name : Identifier;
	@:optional
	var questionToken : Node;
};
typedef PropertyAssignment = {
	>ObjectLiteralElement,
	var _propertyAssignmentBrand : Dynamic;
	var name : DeclarationName;
	@:optional
	var questionToken : Node;
	var initializer : Expression;
};
typedef FunctionLikeDeclaration = {
	>SignatureDeclaration,
	var _functionLikeDeclarationBrand : Dynamic;
	@:optional
	var asteriskToken : Node;
	@:optional
	var questionToken : Node;
	@:optional
	var body : haxe.extern.EitherType<Block, Expression>;
};
typedef FunctionDeclaration = {
	>FunctionLikeDeclaration,
	>Statement,
	var name : Identifier;
	@:optional
	var body : Block;
};
typedef MethodDeclaration = {
	>FunctionLikeDeclaration,
	>ClassElement,
	>ObjectLiteralElement,
	@:optional
	var body : Block;
};
typedef ConstructorDeclaration = {
	>FunctionLikeDeclaration,
	>ClassElement,
	@:optional
	var body : Block;
};
typedef AccessorDeclaration = {
	>FunctionLikeDeclaration,
	>ClassElement,
	>ObjectLiteralElement,
	var _accessorDeclarationBrand : Dynamic;
	var body : Block;
};
typedef IndexSignatureDeclaration = {
	>SignatureDeclaration,
	>ClassElement,
	var _indexSignatureDeclarationBrand : Dynamic;
};
typedef TypeNode = {
	>Node,
	var _typeNodeBrand : Dynamic;
};
typedef FunctionOrConstructorTypeNode = {
	>TypeNode,
	>SignatureDeclaration,
	var _functionOrConstructorTypeNodeBrand : Dynamic;
};
typedef TypeReferenceNode = {
	>TypeNode,
	var typeName : EntityName;
	@:optional
	var typeArguments : NodeArray<TypeNode>;
};
typedef TypeQueryNode = {
	>TypeNode,
	var exprName : EntityName;
};
typedef TypeLiteralNode = {
	>TypeNode,
	>Declaration,
	var members : NodeArray<Node>;
};
typedef ArrayTypeNode = {
	>TypeNode,
	var elementType : TypeNode;
};
typedef TupleTypeNode = {
	>TypeNode,
	var elementTypes : NodeArray<TypeNode>;
};
typedef UnionTypeNode = {
	>TypeNode,
	var types : NodeArray<TypeNode>;
};
typedef ParenthesizedTypeNode = {
	>TypeNode,
	var type : TypeNode;
};
typedef Expression = {
	>Node,
	var _expressionBrand : Dynamic;
	@:optional
	var contextualType : Type;
};
typedef UnaryExpression = {
	>Expression,
	var _unaryExpressionBrand : Dynamic;
};
typedef PrefixUnaryExpression = {
	>UnaryExpression,
	var operator : SyntaxKind;
	var operand : UnaryExpression;
};
typedef PostfixUnaryExpression = {
	>PostfixExpression,
	var operand : LeftHandSideExpression;
	var operator : SyntaxKind;
};
typedef PostfixExpression = {
	>UnaryExpression,
	var _postfixExpressionBrand : Dynamic;
};
typedef LeftHandSideExpression = {
	>PostfixExpression,
	var _leftHandSideExpressionBrand : Dynamic;
};
typedef MemberExpression = {
	>LeftHandSideExpression,
	var _memberExpressionBrand : Dynamic;
};
typedef PrimaryExpression = {
	>MemberExpression,
	var _primaryExpressionBrand : Dynamic;
};
typedef DeleteExpression = {
	>UnaryExpression,
	var expression : UnaryExpression;
};
typedef TypeOfExpression = {
	>UnaryExpression,
	var expression : UnaryExpression;
};
typedef VoidExpression = {
	>UnaryExpression,
	var expression : UnaryExpression;
};
typedef YieldExpression = {
	>Expression,
	@:optional
	var asteriskToken : Node;
	var expression : Expression;
};
typedef BinaryExpression = {
	>Expression,
	var left : Expression;
	var operator : SyntaxKind;
	var right : Expression;
};
typedef ConditionalExpression = {
	>Expression,
	var condition : Expression;
	var whenTrue : Expression;
	var whenFalse : Expression;
};
typedef FunctionExpression = {
	>PrimaryExpression,
	>FunctionLikeDeclaration,
	@:optional
	var name : Identifier;
	var body : haxe.extern.EitherType<Block, Expression>;
};
typedef LiteralExpression = {
	>PrimaryExpression,
	var text : String;
	@:optional
	var isUnterminated : Bool;
};
typedef StringLiteralExpression = {
	>LiteralExpression,
	var _stringLiteralExpressionBrand : Dynamic;
};
typedef TemplateExpression = {
	>PrimaryExpression,
	var head : LiteralExpression;
	var templateSpans : NodeArray<TemplateSpan>;
};
typedef TemplateSpan = {
	>Node,
	var expression : Expression;
	var literal : LiteralExpression;
};
typedef ParenthesizedExpression = {
	>PrimaryExpression,
	var expression : Expression;
};
typedef ArrayLiteralExpression = {
	>PrimaryExpression,
	var elements : NodeArray<Expression>;
};
typedef ObjectLiteralExpression = {
	>PrimaryExpression,
	>Declaration,
	var properties : NodeArray<ObjectLiteralElement>;
};
typedef PropertyAccessExpression = {
	>MemberExpression,
	var expression : LeftHandSideExpression;
	var name : Identifier;
};
typedef ElementAccessExpression = {
	>MemberExpression,
	var expression : LeftHandSideExpression;
	@:optional
	var argumentExpression : Expression;
};
typedef CallExpression = {
	>LeftHandSideExpression,
	var expression : LeftHandSideExpression;
	@:optional
	var typeArguments : NodeArray<TypeNode>;
	var arguments : NodeArray<Expression>;
};
typedef NewExpression = {
	>CallExpression,
	>PrimaryExpression,
};
typedef TaggedTemplateExpression = {
	>MemberExpression,
	var tag : LeftHandSideExpression;
	var template : haxe.extern.EitherType<LiteralExpression, TemplateExpression>;
};
typedef TypeAssertion = {
	>UnaryExpression,
	var type : TypeNode;
	var expression : UnaryExpression;
};
typedef Statement = {
	>Node,
	>ModuleElement,
	var _statementBrand : Dynamic;
};
typedef Block = {
	>Statement,
	var statements : NodeArray<Statement>;
};
typedef VariableStatement = {
	>Statement,
	var declarations : NodeArray<VariableDeclaration>;
};
typedef ExpressionStatement = {
	>Statement,
	var expression : Expression;
};
typedef IfStatement = {
	>Statement,
	var expression : Expression;
	var thenStatement : Statement;
	@:optional
	var elseStatement : Statement;
};
typedef IterationStatement = {
	>Statement,
	var statement : Statement;
};
typedef DoStatement = {
	>IterationStatement,
	var expression : Expression;
};
typedef WhileStatement = {
	>IterationStatement,
	var expression : Expression;
};
typedef ForStatement = {
	>IterationStatement,
	@:optional
	var declarations : NodeArray<VariableDeclaration>;
	@:optional
	var initializer : Expression;
	@:optional
	var condition : Expression;
	@:optional
	var iterator : Expression;
};
typedef ForInStatement = {
	>IterationStatement,
	@:optional
	var declarations : NodeArray<VariableDeclaration>;
	@:optional
	var variable : Expression;
	var expression : Expression;
};
typedef BreakOrContinueStatement = {
	>Statement,
	@:optional
	var label : Identifier;
};
typedef ReturnStatement = {
	>Statement,
	@:optional
	var expression : Expression;
};
typedef WithStatement = {
	>Statement,
	var expression : Expression;
	var statement : Statement;
};
typedef SwitchStatement = {
	>Statement,
	var expression : Expression;
	var clauses : NodeArray<CaseOrDefaultClause>;
};
typedef CaseClause = {
	>Node,
	@:optional
	var expression : Expression;
	var statements : NodeArray<Statement>;
};
typedef DefaultClause = {
	>Node,
	var statements : NodeArray<Statement>;
};
typedef LabeledStatement = {
	>Statement,
	var label : Identifier;
	var statement : Statement;
};
typedef ThrowStatement = {
	>Statement,
	var expression : Expression;
};
typedef TryStatement = {
	>Statement,
	var tryBlock : Block;
	@:optional
	var catchClause : CatchClause;
	@:optional
	var finallyBlock : Block;
};
typedef CatchClause = {
	>Declaration,
	var name : Identifier;
	@:optional
	var type : TypeNode;
	var block : Block;
};
typedef ModuleElement = {
	>Node,
	var _moduleElementBrand : Dynamic;
};
typedef ClassDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : Identifier;
	@:optional
	var typeParameters : NodeArray<TypeParameterDeclaration>;
	@:optional
	var heritageClauses : NodeArray<HeritageClause>;
	var members : NodeArray<ClassElement>;
};
typedef ClassElement = {
	>Declaration,
	var _classElementBrand : Dynamic;
};
typedef InterfaceDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : Identifier;
	@:optional
	var typeParameters : NodeArray<TypeParameterDeclaration>;
	@:optional
	var heritageClauses : NodeArray<HeritageClause>;
	var members : NodeArray<Declaration>;
};
typedef HeritageClause = {
	>Node,
	var token : SyntaxKind;
	@:optional
	var types : NodeArray<TypeReferenceNode>;
};
typedef TypeAliasDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : Identifier;
	var type : TypeNode;
};
typedef EnumMember = {
	>Declaration,
	var name : DeclarationName;
	@:optional
	var initializer : Expression;
};
typedef EnumDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : Identifier;
	var members : NodeArray<EnumMember>;
};
typedef ModuleDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : haxe.extern.EitherType<Identifier, LiteralExpression>;
	var body : haxe.extern.EitherType<ModuleBlock, ModuleDeclaration>;
};
typedef ModuleBlock = {
	>Node,
	>ModuleElement,
	var statements : NodeArray<ModuleElement>;
};
typedef ImportDeclaration = {
	>Declaration,
	>ModuleElement,
	var name : Identifier;
	var moduleReference : haxe.extern.EitherType<EntityName, ExternalModuleReference>;
};
typedef ExternalModuleReference = {
	>Node,
	@:optional
	var expression : Expression;
};
typedef ExportAssignment = {
	>Statement,
	>ModuleElement,
	var exportName : Identifier;
};
typedef FileReference = {
	>TextRange,
	var filename : String;
};
typedef CommentRange = {
	>TextRange,
	@:optional
	var hasTrailingNewLine : Bool;
};
typedef SourceFile = {
	>Declaration,
	var statements : NodeArray<ModuleElement>;
	var endOfFileToken : Node;
	var filename : String;
	var text : String;
	function getLineAndCharacterFromPosition(position:Float):LineAndCharacter;
	function getPositionFromLineAndCharacter(line:Float, character:Float):Float;
	function getLineStarts():Array<Float>;
	var amdDependencies : Array<String>;
	var amdModuleName : String;
	var referencedFiles : Array<FileReference>;
	var referenceDiagnostics : Array<Diagnostic>;
	var parseDiagnostics : Array<Diagnostic>;
	var grammarDiagnostics : Array<Diagnostic>;
	function getSyntacticDiagnostics():Array<Diagnostic>;
	var semanticDiagnostics : Array<Diagnostic>;
	var hasNoDefaultLib : Bool;
	var externalModuleIndicator : Node;
	var nodeCount : Float;
	var identifierCount : Float;
	var symbolCount : Float;
	var isOpen : Bool;
	var version : String;
	var languageVersion : ScriptTarget;
	var identifiers : Map<String>;
};
typedef Program = {
	function getSourceFile(filename:String):SourceFile;
	function getSourceFiles():Array<SourceFile>;
	function getCompilerOptions():CompilerOptions;
	function getCompilerHost():CompilerHost;
	function getDiagnostics(?sourceFile:SourceFile):Array<Diagnostic>;
	function getGlobalDiagnostics():Array<Diagnostic>;
	function getTypeChecker(fullTypeCheckMode:Bool):TypeChecker;
	function getCommonSourceDirectory():String;
};
typedef SourceMapSpan = {
	var emittedLine : Float;
	var emittedColumn : Float;
	var sourceLine : Float;
	var sourceColumn : Float;
	@:optional
	var nameIndex : Float;
	var sourceIndex : Float;
};
typedef SourceMapData = {
	var sourceMapFilePath : String;
	var jsSourceMappingURL : String;
	var sourceMapFile : String;
	var sourceMapSourceRoot : String;
	var sourceMapSources : Array<String>;
	var inputSourceFileNames : Array<String>;
	@:optional
	var sourceMapNames : Array<String>;
	var sourceMapMappings : String;
	var sourceMapDecodedMappings : Array<SourceMapSpan>;
};
@:enum abstract EmitReturnStatus(Int) {
	var Succeeded = 0;
	var AllOutputGenerationSkipped = 1;
	var JSGeneratedWithSemanticErrors = 2;
	var DeclarationGenerationSkipped = 3;
	var EmitErrorsEncountered = 4;
	var CompilerOptionsErrors = 5;
}
typedef EmitResult = {
	var emitResultStatus : EmitReturnStatus;
	var diagnostics : Array<Diagnostic>;
	var sourceMaps : Array<SourceMapData>;
};
typedef TypeChecker = {
	function getProgram():Program;
	function getDiagnostics(?sourceFile:SourceFile):Array<Diagnostic>;
	function getDeclarationDiagnostics(sourceFile:SourceFile):Array<Diagnostic>;
	function getGlobalDiagnostics():Array<Diagnostic>;
	function getNodeCount():Float;
	function getIdentifierCount():Float;
	function getSymbolCount():Float;
	function getTypeCount():Float;
	function emitFiles(?targetSourceFile:SourceFile):EmitResult;
	function getTypeOfSymbolAtLocation(symbol:Symbol, node:Node):Type;
	function getDeclaredTypeOfSymbol(symbol:Symbol):Type;
	function getPropertiesOfType(type:Type):Array<Symbol>;
	function getPropertyOfType(type:Type, propertyName:String):Symbol;
	function getSignaturesOfType(type:Type, kind:SignatureKind):Array<Signature>;
	function getIndexTypeOfType(type:Type, kind:IndexKind):Type;
	function getReturnTypeOfSignature(signature:Signature):Type;
	function getSymbolsInScope(location:Node, meaning:SymbolFlags):Array<Symbol>;
	function getSymbolAtLocation(node:Node):Symbol;
	function getShorthandAssignmentValueSymbol(location:Node):Symbol;
	function getTypeAtLocation(node:Node):Type;
	function typeToString(type:Type, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):String;
	function symbolToString(symbol:Symbol, ?enclosingDeclaration:Node, ?meaning:SymbolFlags):String;
	function getSymbolDisplayBuilder():SymbolDisplayBuilder;
	function getFullyQualifiedName(symbol:Symbol):String;
	function getAugmentedPropertiesOfType(type:Type):Array<Symbol>;
	function getRootSymbols(symbol:Symbol):Array<Symbol>;
	function getContextualType(node:Expression):Type;
	function getResolvedSignature(node:CallLikeExpression, ?candidatesOutArray:Array<Signature>):Signature;
	function getSignatureFromDeclaration(declaration:SignatureDeclaration):Signature;
	function isImplementationOfOverload(node:FunctionLikeDeclaration):Bool;
	function isUndefinedSymbol(symbol:Symbol):Bool;
	function isArgumentsSymbol(symbol:Symbol):Bool;
	function isEmitBlocked(?sourceFile:SourceFile):Bool;
	function getEnumMemberValue(node:EnumMember):Float;
	function isValidPropertyAccess(node:haxe.extern.EitherType<PropertyAccessExpression, QualifiedName>, propertyName:String):Bool;
	function getAliasedSymbol(symbol:Symbol):Symbol;
};
typedef SymbolDisplayBuilder = {
	function buildTypeDisplay(type:Type, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildSymbolDisplay(symbol:Symbol, writer:SymbolWriter, ?enclosingDeclaration:Node, ?meaning:SymbolFlags, ?flags:SymbolFormatFlags):Void;
	function buildSignatureDisplay(signatures:Signature, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildParameterDisplay(parameter:Symbol, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildTypeParameterDisplay(tp:TypeParameter, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildTypeParameterDisplayFromSymbol(symbol:Symbol, writer:SymbolWriter, ?enclosingDeclaraiton:Node, ?flags:TypeFormatFlags):Void;
	function buildDisplayForParametersAndDelimiters(parameters:Array<Symbol>, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildDisplayForTypeParametersAndDelimiters(typeParameters:Array<TypeParameter>, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
	function buildReturnTypeDisplay(signature:Signature, writer:SymbolWriter, ?enclosingDeclaration:Node, ?flags:TypeFormatFlags):Void;
};
typedef SymbolWriter = {
	function writeKeyword(text:String):Void;
	function writeOperator(text:String):Void;
	function writePunctuation(text:String):Void;
	function writeSpace(text:String):Void;
	function writeStringLiteral(text:String):Void;
	function writeParameter(text:String):Void;
	function writeSymbol(text:String, symbol:Symbol):Void;
	function writeLine():Void;
	function increaseIndent():Void;
	function decreaseIndent():Void;
	function clear():Void;
	function trackSymbol(symbol:Symbol, ?enclosingDeclaration:Node, ?meaning:SymbolFlags):Void;
};
@:enum abstract TypeFormatFlags(Int) {
	var None = 0;
	var WriteArrayAsGenericType = 1;
	var UseTypeOfFunction = 2;
	var NoTruncation = 4;
	var WriteArrowStyleSignature = 8;
	var WriteOwnNameForAnyLike = 16;
	var WriteTypeArgumentsOfSignature = 32;
	var InElementType = 64;
}
@:enum abstract SymbolFormatFlags(Int) {
	var None = 0;
	var WriteTypeParametersOrArguments = 1;
	var UseOnlyExternalAliasing = 2;
}
@:enum abstract SymbolAccessibility(Int) {
	var Accessible = 0;
	var NotAccessible = 1;
	var CannotBeNamed = 2;
}
typedef SymbolVisibilityResult = {
	var accessibility : SymbolAccessibility;
	@:optional
	var aliasesToMakeVisible : Array<ImportDeclaration>;
	@:optional
	var errorSymbolName : String;
	@:optional
	var errorNode : Node;
};
typedef SymbolAccessiblityResult = {
	>SymbolVisibilityResult,
	@:optional
	var errorModuleName : String;
};
typedef EmitResolver = {
	function getProgram():Program;
	function getLocalNameOfContainer(container:haxe.extern.EitherType<ModuleDeclaration, EnumDeclaration>):String;
	function getExpressionNamePrefix(node:Identifier):String;
	function getExportAssignmentName(node:SourceFile):String;
	function isReferencedImportDeclaration(node:ImportDeclaration):Bool;
	function isTopLevelValueImportWithEntityName(node:ImportDeclaration):Bool;
	function getNodeCheckFlags(node:Node):NodeCheckFlags;
	function getEnumMemberValue(node:EnumMember):Float;
	function hasSemanticErrors(?sourceFile:SourceFile):Bool;
	function isDeclarationVisible(node:Declaration):Bool;
	function isImplementationOfOverload(node:FunctionLikeDeclaration):Bool;
	function writeTypeOfDeclaration(declaration:haxe.extern.EitherType<AccessorDeclaration, VariableOrParameterDeclaration>, enclosingDeclaration:Node, flags:TypeFormatFlags, writer:SymbolWriter):Void;
	function writeReturnTypeOfSignatureDeclaration(signatureDeclaration:SignatureDeclaration, enclosingDeclaration:Node, flags:TypeFormatFlags, writer:SymbolWriter):Void;
	function isSymbolAccessible(symbol:Symbol, enclosingDeclaration:Node, meaning:SymbolFlags):SymbolAccessiblityResult;
	function isEntityNameVisible(entityName:EntityName, enclosingDeclaration:Node):SymbolVisibilityResult;
	function getConstantValue(node:haxe.extern.EitherType<PropertyAccessExpression, ElementAccessExpression>):Float;
	function isEmitBlocked(?sourceFile:SourceFile):Bool;
};
@:enum abstract SymbolFlags(Int) {
	var FunctionScopedVariable = 1;
	var BlockScopedVariable = 2;
	var Property = 4;
	var EnumMember = 8;
	var Function = 16;
	var Class = 32;
	var Interface = 64;
	var ConstEnum = 128;
	var RegularEnum = 256;
	var ValueModule = 512;
	var NamespaceModule = 1024;
	var TypeLiteral = 2048;
	var ObjectLiteral = 4096;
	var Method = 8192;
	var Constructor = 16384;
	var GetAccessor = 32768;
	var SetAccessor = 65536;
	var CallSignature = 131072;
	var ConstructSignature = 262144;
	var IndexSignature = 524288;
	var TypeParameter = 1048576;
	var TypeAlias = 2097152;
	var ExportValue = 4194304;
	var ExportType = 8388608;
	var ExportNamespace = 16777216;
	var Import = 33554432;
	var Instantiated = 67108864;
	var Merged = 134217728;
	var Transient = 268435456;
	var Prototype = 536870912;
	var UnionProperty = 1073741824;
	var Enum = 384;
	var Variable = 3;
	var Value = 107455;
	var Type = 3152352;
	var Namespace = 1536;
	var Module = 1536;
	var Accessor = 98304;
	var Signature = 917504;
	var FunctionScopedVariableExcludes = 107454;
	var BlockScopedVariableExcludes = 107455;
	var ParameterExcludes = 107455;
	var PropertyExcludes = 107455;
	var EnumMemberExcludes = 107455;
	var FunctionExcludes = 106927;
	var ClassExcludes = 3258879;
	var InterfaceExcludes = 3152288;
	var RegularEnumExcludes = 3258623;
	var ConstEnumExcludes = 3259263;
	var ValueModuleExcludes = 106639;
	var NamespaceModuleExcludes = 0;
	var MethodExcludes = 99263;
	var GetAccessorExcludes = 41919;
	var SetAccessorExcludes = 74687;
	var TypeParameterExcludes = 2103776;
	var TypeAliasExcludes = 3152352;
	var ImportExcludes = 33554432;
	var ModuleMember = 35653619;
	var ExportHasLocal = 944;
	var HasLocals = 1041936;
	var HasExports = 1952;
	var HasMembers = 6240;
	var IsContainer = 1048560;
	var PropertyOrAccessor = 98308;
	var Export = 29360128;
}
typedef Symbol = {
	var flags : SymbolFlags;
	var name : String;
	@:optional
	var id : Float;
	@:optional
	var mergeId : Float;
	@:optional
	var declarations : Array<Declaration>;
	@:optional
	var parent : Symbol;
	@:optional
	var members : SymbolTable;
	@:optional
	var exports : SymbolTable;
	@:optional
	var exportSymbol : Symbol;
	@:optional
	var valueDeclaration : Declaration;
	@:optional
	var constEnumOnlyModule : Bool;
};
typedef SymbolLinks = {
	@:optional
	var target : Symbol;
	@:optional
	var type : Type;
	@:optional
	var declaredType : Type;
	@:optional
	var mapper : TypeMapper;
	@:optional
	var referenced : Bool;
	@:optional
	var exportAssignSymbol : Symbol;
	@:optional
	var unionType : UnionType;
};
typedef TransientSymbol = {
	>Symbol,
	>SymbolLinks,
};
typedef SymbolTable = { };
@:enum abstract NodeCheckFlags(Int) {
	var TypeChecked = 1;
	var LexicalThis = 2;
	var CaptureThis = 4;
	var EmitExtends = 8;
	var SuperInstance = 16;
	var SuperStatic = 32;
	var ContextChecked = 64;
	var EnumValuesComputed = 128;
}
typedef NodeLinks = {
	@:optional
	var resolvedType : Type;
	@:optional
	var resolvedSignature : Signature;
	@:optional
	var resolvedSymbol : Symbol;
	@:optional
	var flags : NodeCheckFlags;
	@:optional
	var enumMemberValue : Float;
	@:optional
	var isIllegalTypeReferenceInConstraint : Bool;
	@:optional
	var isVisible : Bool;
	@:optional
	var localModuleName : String;
	@:optional
	var assignmentChecks : Map<Bool>;
};
@:enum abstract TypeFlags(Int) {
	var Any = 1;
	var String = 2;
	var Number = 4;
	var Boolean = 8;
	var Void = 16;
	var Undefined = 32;
	var Null = 64;
	var Enum = 128;
	var StringLiteral = 256;
	var TypeParameter = 512;
	var Class = 1024;
	var Interface = 2048;
	var Reference = 4096;
	var Tuple = 8192;
	var Union = 16384;
	var Anonymous = 32768;
	var FromSignature = 65536;
	var Intrinsic = 127;
	var StringLike = 258;
	var NumberLike = 132;
	var ObjectType = 48128;
}
typedef Type = {
	var flags : TypeFlags;
	var id : Float;
	@:optional
	var symbol : Symbol;
};
typedef IntrinsicType = {
	>Type,
	var intrinsicName : String;
};
typedef StringLiteralType = {
	>Type,
	var text : String;
};
typedef ObjectType = {
	>Type,
};
typedef InterfaceType = {
	>ObjectType,
	var typeParameters : Array<TypeParameter>;
	var baseTypes : Array<ObjectType>;
	var declaredProperties : Array<Symbol>;
	var declaredCallSignatures : Array<Signature>;
	var declaredConstructSignatures : Array<Signature>;
	var declaredStringIndexType : Type;
	var declaredNumberIndexType : Type;
};
typedef TypeReference = {
	>ObjectType,
	var target : GenericType;
	var typeArguments : Array<Type>;
};
typedef GenericType = {
	>InterfaceType,
	>TypeReference,
	var instantiations : Map<TypeReference>;
	var openReferenceTargets : Array<GenericType>;
	var openReferenceChecks : Map<Bool>;
};
typedef TupleType = {
	>ObjectType,
	var elementTypes : Array<Type>;
	var baseArrayType : TypeReference;
};
typedef UnionType = {
	>Type,
	var types : Array<Type>;
	var resolvedProperties : SymbolTable;
};
typedef ResolvedType = {
	>ObjectType,
	>UnionType,
	var members : SymbolTable;
	var properties : Array<Symbol>;
	var callSignatures : Array<Signature>;
	var constructSignatures : Array<Signature>;
	var stringIndexType : Type;
	var numberIndexType : Type;
};
typedef TypeParameter = {
	>Type,
	var constraint : Type;
	@:optional
	var target : TypeParameter;
	@:optional
	var mapper : TypeMapper;
};
@:enum abstract SignatureKind(Int) {
	var Call = 0;
	var Construct = 1;
}
typedef Signature = {
	var declaration : SignatureDeclaration;
	var typeParameters : Array<TypeParameter>;
	var parameters : Array<Symbol>;
	var resolvedReturnType : Type;
	var minArgumentCount : Float;
	var hasRestParameter : Bool;
	var hasStringLiterals : Bool;
	@:optional
	var target : Signature;
	@:optional
	var mapper : TypeMapper;
	@:optional
	var unionSignatures : Array<Signature>;
	@:optional
	var erasedSignatureCache : Signature;
	@:optional
	var isolatedSignatureType : ObjectType;
};
@:enum abstract IndexKind(Int) {
	var String = 0;
	var Number = 1;
}
typedef TypeMapper = { };
typedef TypeInferences = {
	var primary : Array<Type>;
	var secondary : Array<Type>;
};
typedef InferenceContext = {
	var typeParameters : Array<TypeParameter>;
	var inferUnionTypes : Bool;
	var inferences : Array<TypeInferences>;
	var inferredTypes : Array<Type>;
	@:optional
	var failedTypeParameterIndex : Float;
};
typedef DiagnosticMessage = {
	var key : String;
	var category : DiagnosticCategory;
	var code : Float;
	@:optional
	var isEarly : Bool;
};
typedef DiagnosticMessageChain = {
	var messageText : String;
	var category : DiagnosticCategory;
	var code : Float;
	@:optional
	var next : DiagnosticMessageChain;
};
typedef Diagnostic = {
	var file : SourceFile;
	var start : Float;
	var length : Float;
	var messageText : String;
	var category : DiagnosticCategory;
	var code : Float;
	@:optional
	var isEarly : Bool;
};
@:enum abstract DiagnosticCategory(Int) {
	var Warning = 0;
	var Error = 1;
	var Message = 2;
}
typedef CompilerOptions = {
	@:optional
	var allowNonTsExtensions : Bool;
	@:optional
	var charset : String;
	@:optional
	var codepage : Float;
	@:optional
	var declaration : Bool;
	@:optional
	var diagnostics : Bool;
	@:optional
	var emitBOM : Bool;
	@:optional
	var help : Bool;
	@:optional
	var locale : String;
	@:optional
	var mapRoot : String;
	@:optional
	var module : ModuleKind;
	@:optional
	var noEmitOnError : Bool;
	@:optional
	var noErrorTruncation : Bool;
	@:optional
	var noImplicitAny : Bool;
	@:optional
	var noLib : Bool;
	@:optional
	var noLibCheck : Bool;
	@:optional
	var noResolve : Bool;
	@:optional
	var out : String;
	@:optional
	var outDir : String;
	@:optional
	var preserveConstEnums : Bool;
	@:optional
	var removeComments : Bool;
	@:optional
	var sourceMap : Bool;
	@:optional
	var sourceRoot : String;
	@:optional
	var suppressImplicitAnyIndexErrors : Bool;
	@:optional
	var target : ScriptTarget;
	@:optional
	var version : Bool;
	@:optional
	var watch : Bool;
};
@:enum abstract ModuleKind(Int) {
	var None = 0;
	var CommonJS = 1;
	var AMD = 2;
}
typedef LineAndCharacter = {
	var line : Float;
	var character : Float;
};
@:enum abstract ScriptTarget(Int) {
	var ES3 = 0;
	var ES5 = 1;
	var ES6 = 2;
	var Latest = 2;
}
typedef ParsedCommandLine = {
	var options : CompilerOptions;
	var filenames : Array<String>;
	var errors : Array<Diagnostic>;
};
typedef CommandLineOption = {
	var name : String;
	var type : haxe.extern.EitherType<String, Map<Float>>;
	@:optional
	var shortName : String;
	@:optional
	var description : DiagnosticMessage;
	@:optional
	var paramType : DiagnosticMessage;
	@:optional
	var error : DiagnosticMessage;
};
@:enum abstract CharacterCodes(Int) {
	var nullCharacter = 0;
	var maxAsciiCharacter = 127;
	var lineFeed = 10;
	var carriageReturn = 13;
	var lineSeparator = 8232;
	var paragraphSeparator = 8233;
	var nextLine = 133;
	var space = 32;
	var nonBreakingSpace = 160;
	var enQuad = 8192;
	var emQuad = 8193;
	var enSpace = 8194;
	var emSpace = 8195;
	var threePerEmSpace = 8196;
	var fourPerEmSpace = 8197;
	var sixPerEmSpace = 8198;
	var figureSpace = 8199;
	var punctuationSpace = 8200;
	var thinSpace = 8201;
	var hairSpace = 8202;
	var zeroWidthSpace = 8203;
	var narrowNoBreakSpace = 8239;
	var ideographicSpace = 12288;
	var mathematicalSpace = 8287;
	var ogham = 5760;
	var _ = 95;
	var $ = 36;
	var _0 = 48;
	var _1 = 49;
	var _2 = 50;
	var _3 = 51;
	var _4 = 52;
	var _5 = 53;
	var _6 = 54;
	var _7 = 55;
	var _8 = 56;
	var _9 = 57;
	var a = 97;
	var b = 98;
	var c = 99;
	var d = 100;
	var e = 101;
	var f = 102;
	var g = 103;
	var h = 104;
	var i = 105;
	var j = 106;
	var k = 107;
	var l = 108;
	var m = 109;
	var n = 110;
	var o = 111;
	var p = 112;
	var q = 113;
	var r = 114;
	var s = 115;
	var t = 116;
	var u = 117;
	var v = 118;
	var w = 119;
	var x = 120;
	var y = 121;
	var z = 122;
	var A = 65;
	var B = 66;
	var C = 67;
	var D = 68;
	var E = 69;
	var F = 70;
	var G = 71;
	var H = 72;
	var I = 73;
	var J = 74;
	var K = 75;
	var L = 76;
	var M = 77;
	var N = 78;
	var O = 79;
	var P = 80;
	var Q = 81;
	var R = 82;
	var S = 83;
	var T = 84;
	var U = 85;
	var V = 86;
	var W = 87;
	var X = 88;
	var Y = 89;
	var Z = 90;
	var ampersand = 38;
	var asterisk = 42;
	var at = 64;
	var backslash = 92;
	var backtick = 96;
	var bar = 124;
	var caret = 94;
	var closeBrace = 125;
	var closeBracket = 93;
	var closeParen = 41;
	var colon = 58;
	var comma = 44;
	var dot = 46;
	var doubleQuote = 34;
	var equals = 61;
	var exclamation = 33;
	var greaterThan = 62;
	var lessThan = 60;
	var minus = 45;
	var openBrace = 123;
	var openBracket = 91;
	var openParen = 40;
	var percent = 37;
	var plus = 43;
	var question = 63;
	var semicolon = 59;
	var singleQuote = 39;
	var slash = 47;
	var tilde = 126;
	var backspace = 8;
	var formFeed = 12;
	var byteOrderMark = 65279;
	var tab = 9;
	var verticalTab = 11;
}
typedef CancellationToken = {
	function isCancellationRequested():Bool;
};
typedef CompilerHost = {
	function getSourceFile(filename:String, languageVersion:ScriptTarget, ?onError:String -> Void):SourceFile;
	function getDefaultLibFilename(options:CompilerOptions):String;
	@:optional
	function getCancellationToken():CancellationToken;
	function writeFile(filename:String, data:String, writeByteOrderMark:Bool, ?onError:String -> Void):Void;
	function getCurrentDirectory():String;
	function getCanonicalFileName(fileName:String):String;
	function useCaseSensitiveFileNames():Bool;
	function getNewLine():String;
};
typedef ErrorCallback = { };
typedef CommentCallback = { };
typedef Scanner = {
	function getStartPos():Float;
	function getToken():SyntaxKind;
	function getTextPos():Float;
	function getTokenPos():Float;
	function getTokenText():String;
	function getTokenValue():String;
	function hasPrecedingLineBreak():Bool;
	function isIdentifier():Bool;
	function isReservedWord():Bool;
	function isUnterminated():Bool;
	function reScanGreaterToken():SyntaxKind;
	function reScanSlashToken():SyntaxKind;
	function reScanTemplateToken():SyntaxKind;
	function scan():SyntaxKind;
	function setText(text:String):Void;
	function setTextPos(textPos:Float):Void;
	function lookAhead<T>(callback:Void -> T):T;
	function tryScan<T>(callback:Void -> T):T;
};
extern class TypescriptTopLevel {
	static function tokenToString(t:SyntaxKind):String;
	static function computeLineStarts(text:String):Array<Float>;
	static function getPositionFromLineAndCharacter(lineStarts:Array<Float>, line:Float, character:Float):Float;
	static function getLineAndCharacterOfPosition(lineStarts:Array<Float>, position:Float):{ var line : Float; var character : Float; };
	static function positionToLineAndCharacter(text:String, pos:Float):{ var line : Float; var character : Float; };
	static function isWhiteSpace(ch:Float):Bool;
	static function isLineBreak(ch:Float):Bool;
	static function isOctalDigit(ch:Float):Bool;
	static function skipTrivia(text:String, pos:Float, ?stopAfterLineBreak:Bool):Float;
	static function getLeadingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function getTrailingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function isIdentifierStart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function isIdentifierPart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function createScanner(languageVersion:ScriptTarget, skipTrivia:Bool, ?text:String, ?onError:ErrorCallback):Scanner;
	static function getNodeConstructor(kind:SyntaxKind):Dynamic;
	static function forEachChild<T>(node:Node, cbNode:Node -> T, ?cbNodes:Array<Node> -> T):T;
	static function createCompilerHost(options:CompilerOptions):CompilerHost;
	static function createSourceFile(filename:String, sourceText:String, languageVersion:ScriptTarget, version:String, ?isOpen:Bool):SourceFile;
	static function createProgram(rootNames:Array<String>, options:CompilerOptions, host:CompilerHost):Program;
	static function createTypeChecker(program:Program, fullTypeCheck:Bool):TypeChecker;
	static var servicesVersion : String;
}
extern class TypescriptTopLevel {
	static function tokenToString(t:SyntaxKind):String;
	static function computeLineStarts(text:String):Array<Float>;
	static function getPositionFromLineAndCharacter(lineStarts:Array<Float>, line:Float, character:Float):Float;
	static function getLineAndCharacterOfPosition(lineStarts:Array<Float>, position:Float):{ var line : Float; var character : Float; };
	static function positionToLineAndCharacter(text:String, pos:Float):{ var line : Float; var character : Float; };
	static function isWhiteSpace(ch:Float):Bool;
	static function isLineBreak(ch:Float):Bool;
	static function isOctalDigit(ch:Float):Bool;
	static function skipTrivia(text:String, pos:Float, ?stopAfterLineBreak:Bool):Float;
	static function getLeadingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function getTrailingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function isIdentifierStart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function isIdentifierPart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function createScanner(languageVersion:ScriptTarget, skipTrivia:Bool, ?text:String, ?onError:ErrorCallback):Scanner;
	static function getNodeConstructor(kind:SyntaxKind):Dynamic;
	static function forEachChild<T>(node:Node, cbNode:Node -> T, ?cbNodes:Array<Node> -> T):T;
	static function createCompilerHost(options:CompilerOptions):CompilerHost;
	static function createSourceFile(filename:String, sourceText:String, languageVersion:ScriptTarget, version:String, ?isOpen:Bool):SourceFile;
	static function createProgram(rootNames:Array<String>, options:CompilerOptions, host:CompilerHost):Program;
	static function createTypeChecker(program:Program, fullTypeCheck:Bool):TypeChecker;
	static var servicesVersion : String;
}
extern class TypescriptTopLevel {
	static function tokenToString(t:SyntaxKind):String;
	static function computeLineStarts(text:String):Array<Float>;
	static function getPositionFromLineAndCharacter(lineStarts:Array<Float>, line:Float, character:Float):Float;
	static function getLineAndCharacterOfPosition(lineStarts:Array<Float>, position:Float):{ var line : Float; var character : Float; };
	static function positionToLineAndCharacter(text:String, pos:Float):{ var line : Float; var character : Float; };
	static function isWhiteSpace(ch:Float):Bool;
	static function isLineBreak(ch:Float):Bool;
	static function isOctalDigit(ch:Float):Bool;
	static function skipTrivia(text:String, pos:Float, ?stopAfterLineBreak:Bool):Float;
	static function getLeadingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function getTrailingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function isIdentifierStart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function isIdentifierPart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function createScanner(languageVersion:ScriptTarget, skipTrivia:Bool, ?text:String, ?onError:ErrorCallback):Scanner;
	static function getNodeConstructor(kind:SyntaxKind):Dynamic;
	static function forEachChild<T>(node:Node, cbNode:Node -> T, ?cbNodes:Array<Node> -> T):T;
	static function createCompilerHost(options:CompilerOptions):CompilerHost;
	static function createSourceFile(filename:String, sourceText:String, languageVersion:ScriptTarget, version:String, ?isOpen:Bool):SourceFile;
	static function createProgram(rootNames:Array<String>, options:CompilerOptions, host:CompilerHost):Program;
	static function createTypeChecker(program:Program, fullTypeCheck:Bool):TypeChecker;
	static var servicesVersion : String;
}
typedef Node = {
	function getSourceFile():SourceFile;
	function getChildCount(?sourceFile:SourceFile):Float;
	function getChildAt(index:Float, ?sourceFile:SourceFile):Node;
	function getChildren(?sourceFile:SourceFile):Array<Node>;
	function getStart(?sourceFile:SourceFile):Float;
	function getFullStart():Float;
	function getEnd():Float;
	function getWidth(?sourceFile:SourceFile):Float;
	function getFullWidth():Float;
	function getLeadingTriviaWidth(?sourceFile:SourceFile):Float;
	function getFullText(?sourceFile:SourceFile):String;
	function getText(?sourceFile:SourceFile):String;
	function getFirstToken(?sourceFile:SourceFile):Node;
	function getLastToken(?sourceFile:SourceFile):Node;
};
typedef Symbol = {
	function getFlags():SymbolFlags;
	function getName():String;
	function getDeclarations():Array<Declaration>;
	function getDocumentationComment():Array<SymbolDisplayPart>;
};
typedef Type = {
	function getFlags():TypeFlags;
	function getSymbol():Symbol;
	function getProperties():Array<Symbol>;
	function getProperty(propertyName:String):Symbol;
	function getApparentProperties():Array<Symbol>;
	function getCallSignatures():Array<Signature>;
	function getConstructSignatures():Array<Signature>;
	function getStringIndexType():Type;
	function getNumberIndexType():Type;
};
typedef Signature = {
	function getDeclaration():SignatureDeclaration;
	function getTypeParameters():Array<Type>;
	function getParameters():Array<Symbol>;
	function getReturnType():Type;
	function getDocumentationComment():Array<SymbolDisplayPart>;
};
typedef SourceFile = {
	function getScriptSnapshot():IScriptSnapshot;
	function getNamedDeclarations():Array<Declaration>;
	function update(scriptSnapshot:IScriptSnapshot, version:String, isOpen:Bool, textChangeRange:TextChangeRange):SourceFile;
};
typedef IScriptSnapshot = {
	function getText(start:Float, end:Float):String;
	function getLength():Float;
	function getLineStartPositions():Array<Float>;
	function getChangeRange(oldSnapshot:IScriptSnapshot):TextChangeRange;
};
extern class TypescriptTopLevel {
	static function tokenToString(t:SyntaxKind):String;
	static function computeLineStarts(text:String):Array<Float>;
	static function getPositionFromLineAndCharacter(lineStarts:Array<Float>, line:Float, character:Float):Float;
	static function getLineAndCharacterOfPosition(lineStarts:Array<Float>, position:Float):{ var line : Float; var character : Float; };
	static function positionToLineAndCharacter(text:String, pos:Float):{ var line : Float; var character : Float; };
	static function isWhiteSpace(ch:Float):Bool;
	static function isLineBreak(ch:Float):Bool;
	static function isOctalDigit(ch:Float):Bool;
	static function skipTrivia(text:String, pos:Float, ?stopAfterLineBreak:Bool):Float;
	static function getLeadingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function getTrailingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function isIdentifierStart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function isIdentifierPart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function createScanner(languageVersion:ScriptTarget, skipTrivia:Bool, ?text:String, ?onError:ErrorCallback):Scanner;
	static function getNodeConstructor(kind:SyntaxKind):Dynamic;
	static function forEachChild<T>(node:Node, cbNode:Node -> T, ?cbNodes:Array<Node> -> T):T;
	static function createCompilerHost(options:CompilerOptions):CompilerHost;
	static function createSourceFile(filename:String, sourceText:String, languageVersion:ScriptTarget, version:String, ?isOpen:Bool):SourceFile;
	static function createProgram(rootNames:Array<String>, options:CompilerOptions, host:CompilerHost):Program;
	static function createTypeChecker(program:Program, fullTypeCheck:Bool):TypeChecker;
	static var servicesVersion : String;
}
extern class TypescriptTopLevel {
	static function tokenToString(t:SyntaxKind):String;
	static function computeLineStarts(text:String):Array<Float>;
	static function getPositionFromLineAndCharacter(lineStarts:Array<Float>, line:Float, character:Float):Float;
	static function getLineAndCharacterOfPosition(lineStarts:Array<Float>, position:Float):{ var line : Float; var character : Float; };
	static function positionToLineAndCharacter(text:String, pos:Float):{ var line : Float; var character : Float; };
	static function isWhiteSpace(ch:Float):Bool;
	static function isLineBreak(ch:Float):Bool;
	static function isOctalDigit(ch:Float):Bool;
	static function skipTrivia(text:String, pos:Float, ?stopAfterLineBreak:Bool):Float;
	static function getLeadingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function getTrailingCommentRanges(text:String, pos:Float):Array<CommentRange>;
	static function isIdentifierStart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function isIdentifierPart(ch:Float, languageVersion:ScriptTarget):Bool;
	static function createScanner(languageVersion:ScriptTarget, skipTrivia:Bool, ?text:String, ?onError:ErrorCallback):Scanner;
	static function getNodeConstructor(kind:SyntaxKind):Dynamic;
	static function forEachChild<T>(node:Node, cbNode:Node -> T, ?cbNodes:Array<Node> -> T):T;
	static function createCompilerHost(options:CompilerOptions):CompilerHost;
	static function createSourceFile(filename:String, sourceText:String, languageVersion:ScriptTarget, version:String, ?isOpen:Bool):SourceFile;
	static function createProgram(rootNames:Array<String>, options:CompilerOptions, host:CompilerHost):Program;
	static function createTypeChecker(program:Program, fullTypeCheck:Bool):TypeChecker;
	static var servicesVersion : String;
}
