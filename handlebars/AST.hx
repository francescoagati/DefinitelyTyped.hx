typedef IStripInfo = {
	@:optional
	var left : Bool;
	@:optional
	var right : Bool;
	@:optional
	var inlineStandalone : Bool;
};
extern class NodeBase {
	var firstColumn : Float;
	var firstLine : Float;
	var lastColumn : Float;
	var lastLine : Float;
	var type : String;
}
extern class ProgramNode extends NodeBase {
	var statements : Array<NodeBase>;
}
extern class IdNode extends NodeBase {
	var original : String;
	var parts : Array<String>;
	var string : String;
	var depth : Float;
	var idName : String;
	var isSimple : Bool;
	var stringModeValue : String;
}
extern class HashNode extends NodeBase {
	var pairs : Array<{ var _0 : String; var _1 : NodeBase; }>;
}
extern class SexprNode extends NodeBase {
	var hash : HashNode;
	var id : NodeBase;
	var params : Array<NodeBase>;
	var isHelper : Bool;
	var eligibleHelper : Bool;
}
extern class MustacheNode extends NodeBase {
	var strip : IStripInfo;
	var escaped : Bool;
	var sexpr : SexprNode;
}
extern class BlockNode extends NodeBase {
	var mustache : MustacheNode;
	var program : ProgramNode;
	var inverse : ProgramNode;
	var strip : IStripInfo;
	var isInverse : Bool;
}
extern class PartialNameNode extends NodeBase {
	var name : String;
}
extern class PartialNode extends NodeBase {
	var partialName : PartialNameNode;
	var context : NodeBase;
	var hash : HashNode;
	var strip : IStripInfo;
}
extern class RawBlockNode extends NodeBase {
	var mustache : MustacheNode;
	var program : ProgramNode;
}
extern class ContentNode extends NodeBase {
	var original : String;
	var string : String;
}
extern class DataNode extends NodeBase {
	var id : IdNode;
	var stringModeValue : String;
	var idName : String;
}
extern class StringNode extends NodeBase {
	var original : String;
	var string : String;
	var stringModeValue : String;
}
extern class NumberNode extends NodeBase {
	var original : String;
	var number : String;
	var stringModeValue : Float;
}
extern class BooleanNode extends NodeBase {
	var bool : String;
	var stringModeValue : Bool;
}
extern class CommentNode extends NodeBase {
	var comment : String;
	var strip : IStripInfo;
}
