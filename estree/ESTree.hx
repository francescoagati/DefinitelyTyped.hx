typedef Node = {
	var type : String;
	@:optional
	var loc : SourceLocation;
	@:optional
	var range : Array<Dynamic>;
};
typedef SourceLocation = {
	@:optional
	var source : String;
	var start : Position;
	var end : Position;
};
typedef Position = {
	var line : Float;
	var column : Float;
};
typedef Program = {
	>Node,
	var body : Array<Statement>;
	var sourceType : String;
};
typedef Function = {
	>Node,
	@:optional
	var id : Identifier;
	var params : Array<Pattern>;
	var body : haxe.extern.EitherType<BlockStatement, Expression>;
	var generator : Bool;
};
typedef Statement = {
	>Node,
};
typedef EmptyStatement = {
	>Statement,
};
typedef BlockStatement = {
	>Statement,
	var body : Array<Statement>;
};
typedef ExpressionStatement = {
	>Statement,
	var expression : Expression;
};
typedef IfStatement = {
	>Statement,
	var test : Expression;
	var consequent : Statement;
	@:optional
	var alternate : Statement;
};
typedef LabeledStatement = {
	>Statement,
	var label : Identifier;
	var body : Statement;
};
typedef BreakStatement = {
	>Statement,
	@:optional
	var label : Identifier;
};
typedef ContinueStatement = {
	>Statement,
	@:optional
	var label : Identifier;
};
typedef WithStatement = {
	>Statement,
	var object : Expression;
	var body : Statement;
};
typedef SwitchStatement = {
	>Statement,
	var discriminant : Expression;
	var cases : Array<SwitchCase>;
	var lexical : Bool;
};
typedef ReturnStatement = {
	>Statement,
	@:optional
	var argument : Expression;
};
typedef ThrowStatement = {
	>Statement,
	var argument : Expression;
};
typedef TryStatement = {
	>Statement,
	var block : BlockStatement;
	@:optional
	var handler : CatchClause;
	@:optional
	var finalizer : BlockStatement;
};
typedef WhileStatement = {
	>Statement,
	var test : Expression;
	var body : Statement;
};
typedef DoWhileStatement = {
	>Statement,
	var body : Statement;
	var test : Expression;
};
typedef ForStatement = {
	>Statement,
	@:optional
	var init : haxe.extern.EitherType<VariableDeclaration, Expression>;
	@:optional
	var test : Expression;
	@:optional
	var update : Expression;
	var body : Statement;
};
typedef ForInStatement = {
	>Statement,
	var left : haxe.extern.EitherType<VariableDeclaration, Expression>;
	var right : Expression;
	var body : Statement;
};
typedef DebuggerStatement = {
	>Statement,
};
typedef Declaration = {
	>Statement,
};
typedef FunctionDeclaration = {
	>haxe.Constraints.Function,
	>Declaration,
	var id : Identifier;
};
typedef VariableDeclaration = {
	>Declaration,
	var declarations : Array<VariableDeclarator>;
	var kind : String;
};
typedef VariableDeclarator = {
	>Node,
	var id : Pattern;
	@:optional
	var init : Expression;
};
typedef Expression = {
	>Node,
};
typedef ThisExpression = {
	>Expression,
};
typedef ArrayExpression = {
	>Expression,
	var elements : Array<haxe.extern.EitherType<Expression, SpreadElement>>;
};
typedef ObjectExpression = {
	>Expression,
	var properties : Array<Property>;
};
typedef Property = {
	>Node,
	var key : Expression;
	var value : Expression;
	var kind : String;
	var method : Bool;
	var shorthand : Bool;
	var computed : Bool;
};
typedef FunctionExpression = {
	>haxe.Constraints.Function,
	>Expression,
};
typedef SequenceExpression = {
	>Expression,
	var expressions : Array<Expression>;
};
typedef UnaryExpression = {
	>Expression,
	var operator : UnaryOperator;
	var prefix : Bool;
	var argument : Expression;
};
typedef BinaryExpression = {
	>Expression,
	var operator : BinaryOperator;
	var left : Expression;
	var right : Expression;
};
typedef AssignmentExpression = {
	>Expression,
	var operator : AssignmentOperator;
	var left : haxe.extern.EitherType<Pattern, MemberExpression>;
	var right : Expression;
};
typedef UpdateExpression = {
	>Expression,
	var operator : UpdateOperator;
	var argument : Expression;
	var prefix : Bool;
};
typedef LogicalExpression = {
	>Expression,
	var operator : LogicalOperator;
	var left : Expression;
	var right : Expression;
};
typedef ConditionalExpression = {
	>Expression,
	var test : Expression;
	var alternate : Expression;
	var consequent : Expression;
};
typedef CallExpression = {
	>Expression,
	var callee : haxe.extern.EitherType<Expression, Super>;
	var arguments : Array<haxe.extern.EitherType<Expression, SpreadElement>>;
};
typedef NewExpression = {
	>CallExpression,
};
typedef MemberExpression = {
	>Expression,
	>Pattern,
	var object : haxe.extern.EitherType<Expression, Super>;
	var property : Expression;
	var computed : Bool;
};
typedef Pattern = {
	>Node,
};
typedef SwitchCase = {
	>Node,
	@:optional
	var test : Expression;
	var consequent : Array<Statement>;
};
typedef CatchClause = {
	>Node,
	var param : Pattern;
	var guard : Dynamic;
	var body : BlockStatement;
};
typedef Identifier = {
	>Node,
	>Expression,
	>Pattern,
	var name : String;
};
typedef Literal = {
	>Node,
	>Expression,
	@:optional
	var value : haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, haxe.extern.EitherType<Float, js.RegExp>>>;
};
typedef RegexLiteral = {
	>Literal,
	var regex : { var pattern : String; var flags : String; };
};
typedef ForOfStatement = {
	>ForInStatement,
};
typedef Super = {
	>Node,
};
typedef SpreadElement = {
	>Node,
	var argument : Expression;
};
typedef ArrowFunctionExpression = {
	>haxe.Constraints.Function,
	>Expression,
	var expression : Bool;
};
typedef YieldExpression = {
	>Expression,
	@:optional
	var argument : Expression;
};
typedef TemplateLiteral = {
	>Expression,
	var quasis : Array<TemplateElement>;
	var expressions : Array<Expression>;
};
typedef TaggedTemplateExpression = {
	>Expression,
	var tag : Expression;
	var quasi : TemplateLiteral;
};
typedef TemplateElement = {
	>Node,
	var tail : Bool;
	var value : { var cooked : String; var value : String; };
};
typedef AssignmentProperty = {
	>Property,
	var value : Pattern;
	var kind : String;
	var method : Bool;
};
typedef ObjectPattern = {
	>Pattern,
	var properties : Array<AssignmentProperty>;
};
typedef ArrayPattern = {
	>Pattern,
	var elements : Array<Pattern>;
};
typedef RestElement = {
	>Pattern,
	var argument : Pattern;
};
typedef AssignmentPattern = {
	>Pattern,
	var left : Pattern;
	var right : Expression;
};
typedef Class = {
	>Node,
	@:optional
	var id : Identifier;
	var superClass : Expression;
	var body : ClassBody;
};
typedef ClassBody = {
	>Node,
	var body : Array<MethodDefinition>;
};
typedef MethodDefinition = {
	>Node,
	var key : Identifier;
	var value : FunctionExpression;
	var kind : String;
	var computed : Bool;
	var static : Bool;
};
typedef ClassDeclaration = {
	>Class,
	>Declaration,
	var id : Identifier;
};
typedef ClassExpression = {
	>Class,
	>Expression,
};
typedef MetaProperty = {
	>Expression,
	var meta : Identifier;
	var property : Identifier;
};
typedef ImportDeclaration = {
	>Node,
	var specifiers : Array<haxe.extern.EitherType<ImportSpecifier, haxe.extern.EitherType<ImportDefaultSpecifier, ImportNamespaceSpecifier>>>;
	var source : Literal;
};
typedef ImportSpecifier = {
	var imported : Identifier;
	var local : Identifier;
};
typedef ImportDefaultSpecifier = {
	var local : Identifier;
};
typedef ImportNamespaceSpecifier = {
	var local : Identifier;
};
typedef ExportNamedDeclaration = {
	>Node,
	@:optional
	var declaration : Declaration;
	var specifiers : Array<ExportSpecifier>;
	@:optional
	var source : Literal;
};
typedef ExportSpecifier = {
	var exported : Identifier;
	var local : Identifier;
};
typedef ExportDefaultDeclaration = {
	>Node,
	var declaration : haxe.extern.EitherType<Declaration, Expression>;
};
typedef ExportAllDeclaration = {
	>Node,
	var source : Literal;
};
