extern class Node {
	var lineno : Float;
	var column : Float;
	var filename : String;
	var first : Node;
	var hash : String;
	var nodeName : String;
	function new():Void;
	function clone():Node;
	function toJSON():{ var lineno : Float; var column : Float; var filename : String; };
	function eval():Node;
	function toBoolean():Boolean;
	function toExpression():Expression;
	function shouldCoerce(op:String):Bool;
	function operate(op:String, right:Node):Node;
	function coerce(other:Node):Node;
}
extern class Root extends Node {
	var nodes : Array<Node>;
	function push(node:Node):Void;
	function unshift(node:Node):Void;
	function toJSON():{ var nodes : Array<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class String extends Node {
	var val : String;
	var string : String;
	var prefixed : Bool;
	var quote : String;
	@:overload(function(val:String, quote:String):Void { })
	function new(val:String):Void;
	function toJSON():{ var val : String; var quote : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Number extends Node {

}
extern class Boolean extends Node {
	var val : Bool;
	var isTrue : Bool;
	var isFalse : Bool;
	@:overload(function(val:Bool):Void { })
	function new():Void;
	function negate():Boolean;
	function inspect():Boolean;
	function toJSON():{ var __type : String; var val : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Object extends Node {
	var vals : Dictionary<Node>;
	var length : Float;
	function new():Void;
	function set(key:String, value:Node):Dynamic;
	function get(key:String):Node;
	function has(key:String):Bool;
	function toBlock():String;
	function toJSON():{ var __type : String; var vals : Dictionary<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Null extends Node {
	var isNull : Bool;
	function new():Void;
	function toJSON():{ var __type : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Ident extends Node {
	var name : String;
	var string : String;
	var val : Node;
	var mixin : Bool;
	var isEmpty : Bool;
	@:overload(function(name:String, val:Node, mixin:Bool):Void { })
	function new(name:String, val:Node):Void;
	function toJSON():{ var __type : String; var name : String; var val : Node; var mixin : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Literal extends Node {
	var val : String;
	var string : String;
	var prefixed : Bool;
	function new(str:String):Void;
	function toJSON():{ var __type : String; var string : String; var val : String; var prefixed : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Unit extends Node {
	var val : Float;
	var type : String;
	function new(val:Float, type:String):Void;
	function toJSON():{ var __type : String; var val : Float; var type : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class RGBA extends Node {
	var r : Float;
	var g : Float;
	var b : Float;
	var a : Float;
	var rgba : RGBA;
	var hsla : HSLA;
	function new(r:Float, g:Float, b:Float, a:Float):Void;
	static function withoutClamping(r:Float, g:Float, b:Float, a:Float):RGBA;
	static function fromHSLA(hsla:HSLA):RGBA;
	function add(r:Float, g:Float, b:Float, a:Float):RGBA;
	function substract(r:Float, g:Float, b:Float, a:Float):RGBA;
	function multiply(n:Float):RGBA;
	function divide(n:Float):RGBA;
	function toJSON():{ var __type : String; var r : Float; var g : Float; var b : Float; var a : Float; var lineno : Float; var column : Float; var filename : String; };
}
extern class HSLA extends Node {
	var h : Float;
	var s : Float;
	var l : Float;
	var a : Float;
	var hsla : HSLA;
	var rgba : RGBA;
	function new(h:Float, s:Float, l:Float, a:Float):Void;
	static function fromRGBA(rgba:RGBA):HSLA;
	function add(h:Float, s:Float, l:Float):HSLA;
	function substract(h:Float, s:Float, l:Float):HSLA;
	function adjustLightness(percent:Float):HSLA;
	function adjustHue(deg:Float):HSLA;
	function toJSON():{ var __type : String; var h : Float; var s : Float; var l : Float; var a : Float; var lineno : Float; var column : Float; var filename : String; };
}
extern class Block extends Node {
	var nodes : Array<Node>;
	var parent : Block;
	var node : Node;
	var scope : Bool;
	var hasProperties : Bool;
	var hasMedia : Bool;
	var isEmpty : Bool;
	@:overload(function(parent:Block, node:Node):Void { })
	function new(parent:Block):Void;
	function push(node:Node):Void;
	function toJSON():{ var __type : String; var nodes : Array<Node>; var scope : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Group extends Node {
	var nodes : Array<Node>;
	var block : Block;
	var hasOnlyPlaceholders : Bool;
	function new():Void;
	function push(node:Node):Void;
	function toJSON():{ var __type : String; var nodes : Array<Node>; var block : Block; var lineno : Float; var column : Float; var filename : String; };
}
extern class Expression extends Node {
	var nodes : Array<Node>;
	var isList : Bool;
	var isEmpty : Bool;
	var first : Node;
	function new(isList:Bool):Void;
	function push(node:Node):Void;
	function toJSON():{ var __type : String; var nodes : Array<Node>; var isList : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Property extends Node {
	var segments : Array<Node>;
	var expr : Expression;
	function new(segs:Array<Node>, expr:Expression):Void;
	function toJSON():{ var __type : String; var segments : Array<Node>; var name : String; @:optional
	var expr : Expression; @:optional
	var literal : Literal; var lineno : Float; var column : Float; var filename : String; };
}
extern class Each extends Node {
	var val : String;
	var key : String;
	var expr : Expression;
	var block : Block;
	function toJSON():{ var __type : String; var val : String; var key : String; var expr : Expression; var block : Block; var lineno : Float; var column : Float; var filename : String; };
}
extern class If extends Node {
	var cond : Expression;
	var elses : Array<Expression>;
	var block : Block;
	var negate : Bool;
	@:overload(function(cond:Expression, block:Block):Void { })
	function new(cond:Expression, negate:Bool):Void;
	function toJSON():{ var __type : String; var cond : Expression; var elses : Array<Expression>; var block : Block; var negate : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Call extends Node {
	var name : String;
	var args : Expression;
	function new(name:String, args:Expression):Void;
	function toJSON():{ var __type : String; var name : String; var args : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class UnaryOp extends Node {
	var op : String;
	var expr : Expression;
	function new(op:String, expr:Expression):Void;
	function toJSON():{ var __type : String; var op : String; var expr : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class BinOp extends Node {
	var op : String;
	var left : Expression;
	var right : Expression;
	function new(op:String, left:Expression, right:Expression):Void;
	function toJSON():{ var __type : String; var op : String; var left : Expression; var right : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class Ternary extends Node {
	var op : String;
	var trueExpr : Expression;
	var falseExpr : Expression;
	function new(op:String, trueExpr:Expression, falseExpr:Expression):Void;
	function toJSON():{ var __type : String; var op : String; var trueExpr : Expression; var falseExpr : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class Return extends Node {
	var expr : Expression;
	function new(expr:Expression):Void;
	function toJSON():{ var __type : String; var expr : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class Media extends Node {
	var val : String;
	function new(val:String):Void;
	function toJSON():{ var __type : String; var val : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class QueryList extends Node {
	var nodes : Array<Node>;
	function new():Void;
	function push(node:Node):Void;
	function merge(other:MediaQueryList):MediaQueryList;
	function toJSON():{ var __type : String; var nodes : Array<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Query extends Node {
	var nodes : Array<QueryExpr>;
	var type : String;
	var predicate : String;
	var resolvedType : String;
	var resolvedPredicate : String;
	function new():Void;
	function push(expr:QueryExpr):Void;
	function merge(other:Query):Query;
	function toJSON():{ var __type : String; var nodes : Array<QueryExpr>; var predicate : String; var type : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class QueryExpr extends Node {
	var segments : Array<Node>;
	var expr : Expression;
	function new(segs:Array<Node>):Void;
	function toJSON():{ var __type : String; var segments : Array<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Params extends Node {
	var nodes : Array<Node>;
	var length : Float;
	function push(node:Node):Void;
	function toJSON():{ var __type : String; var nodes : Array<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Comment extends Node {
	var str : String;
	var suppress : Bool;
	var inline : Bool;
	function new(str:String, suppress:Bool, inline:Bool):Void;
	function toJSON():{ var __type : String; var str : String; var suppress : Bool; var inline : Bool; var lineno : Float; var column : Float; var filename : String; };
}
extern class Keyframes extends Node {
	var segments : Array<Node>;
	var prefix : String;
	@:overload(function(segs:Array<Node>, prefix:String):Void { })
	function new(segs:Array<Node>):Void;
	function toJSON():{ var __type : String; var segments : Array<Node>; var prefix : String; var block : Block; var lineno : Float; var column : Float; var filename : String; };
}
extern class Member extends Node {
	var left : Node;
	var right : Node;
	function new(left:Node, right:Node):Void;
	function toJSON():{ var __type : String; var left : Node; var right : Node; @:optional
	var val : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Charset extends Node {
	var val : String;
	function new(val:String):Void;
	function toJSON():{ var __type : String; var val : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Namespace extends Node {
	var val : String;
	var prefix : String;
	function new(val:String, prefix:String):Void;
	function toJSON():{ var __type : String; var val : String; var prefix : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Import extends Node {
	var path : Expression;
	var once : Bool;
	@:overload(function(path:Expression, once:Bool):Void { })
	function new(path:Expression):Void;
	function toJSON():{ var __type : String; var path : Expression; var lineno : Float; var column : Float; var filename : String; };
}
extern class Extend extends Node {
	var selectors : Array<Selector>;
	function new(selectors:Array<Selector>):Void;
	function toJSON():{ var __type : String; var selectors : Array<Selector>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Function extends Node {
	var name : String;
	var params : Params;
	var body : Block;
	function new(name:String, params:Params, body:Block):Void;
	function toJSON():{ var __type : String; var name : String; var params : Params; var body : Block; var lineno : Float; var column : Float; var filename : String; };
}
extern class Selector extends Node {
	var inherits : Bool;
	var segments : Array<Node>;
	function new(segs:Array<Node>):Void;
	function toJSON():{ var __type : String; var segments : Array<Node>; var inherits : Bool; var val : String; var lineno : Float; var column : Float; var filename : String; };
}
extern class Arguments extends Expression {
	var map : Dictionary<Node>;
	function new():Void;
	function toJSON():{ var __type : String; var map : Dictionary<Node>; var isList : Bool; var preserve : Bool; var nodes : Array<Node>; var lineno : Float; var column : Float; var filename : String; };
}
extern class Atblock extends Node {
	var block : Block;
	var nodes : Array<Node>;
	function new():Void;
	function toJSON():{ var __type : String; var block : Block; var lineno : Float; var column : Float; var filename : String; };
}
extern class Atrule extends Node {
	var type : String;
	var hasOnlyProperties : Bool;
	function new(type:String):Void;
	function toJSON():{ var __type : String; var type : String; var segments : Array<Node>; @:optional
	var block : Block; var lineno : Float; var column : Float; var filename : String; };
}
typedef Dictionary<T> = { };
typedef RenderOptions = {
	@:optional
	var globals : Dictionary<Dynamic>;
	@:optional
	var functions : Dictionary<Dynamic>;
	@:optional
	var imports : Array<String>;
	@:optional
	var paths : Array<String>;
	@:optional
	var filename : String;
	@:optional
	var Evaluator : Dynamic;
};
typedef RenderCallback = { };
typedef UrlOptions = {
	@:optional
	var limit : String;
	var path : String;
};
typedef LiteralFunction = {
	var raw : Bool;
};
typedef ExceptionOptions = {
	var filename : String;
	var context : Float;
	var lineno : Float;
	var column : Float;
	var input : String;
};
