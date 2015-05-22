extern class BasicWriter {
	function new():Void;
	function openTag(tagName:String, attributes:Dynamic):Void;
	function openTagClose(tagName:String, isSelfClose:Bool):Void;
	function attribute(attName:String, attValue:String):Void;
	function closeTag(tagName:String):Void;
	function text(text:String):Void;
	function comment(comment:String):Void;
	function write(data:String):Void;
	function reset():Void;
	function getHtml(reset:Bool):String;
}
extern class Node {
	function new():Void;
	function remove(?preserveChildren:Bool):Node;
	function replaceWith(node:Node):Void;
	function insertAfter(node:Node):Void;
	function insertBefore(node:Node):Void;
	@:overload(function(condition:Dynamic):Element { })
	@:overload(function(condition:haxe.Constraints.Function):Element { })
	function getAscendant(condition:String):Element;
	function wrapWith(wrapper:Element):Element;
	function getIndex():Float;
}
extern class Filter {
	function new(?rules:FilterRulesDefinition):Void;
	var id : Float;
	var elementNameRules : FilterRulesGroup;
	var attributeNameRules : FilterRulesGroup;
	var elementsRules : Dynamic;
	var attributesRules : Dynamic;
	var textRules : FilterRulesGroup;
	var commentRules : FilterRulesGroup;
	var rootRules : FilterRulesGroup;
	@:overload(function(rules:FilterRulesDefinition, ?options:{ @:optional
	var priority : Float; @:optional
	var applyToAll : Bool; }):Void { })
	function addRules(rules:FilterRulesDefinition, ?options:Float):Void;
	function applyTo(node:Node):Void;
}
typedef FilterRulesDefinition = { };
extern class FilterRulesGroup {
	var rules : Array<Dynamic>;
	@:overload(function(rule:Array<Dynamic>, priority:Float, options:Dynamic):Void { })
	function add(rule:haxe.Constraints.Function, priority:Float, options:Dynamic):Void;
	function addMany(rules:Array<Dynamic>, priority:Float, options:Dynamic):Void;
	function findIndex(priority:Float):Float;
	function exec(currentValue:Dynamic):Dynamic;
	function execOnName(currentName:String):String;
}
extern class Cdata extends Node {
	function new(value:String):Void;
	var type : Float;
	function writeHtml(writer:BasicWriter):Void;
}
extern class Comment extends Node {
	function new(value:String):Void;
	var type : Float;
	function filter(filter:Filter):Bool;
	function writeHtml(writer:BasicWriter, filter:Filter):Void;
}
extern class Element extends Node {
	function new(name:String, attributes:Dynamic):Void;
	var name : String;
	var attributes : Dynamic;
	var children : Array<Dynamic>;
	var type : Float;
	function add(node:Node):Float;
	function clone():Element;
	function filter(filter:Filter):Bool;
	function filterChildren(filter:Filter):Void;
	function writeHtml(writer:BasicWriter, filter:Filter):Void;
	function writeChildrenHtml(writer:BasicWriter, filter:Filter):Void;
	function replaceWithChildren():Void;
	function forEach(callback:Node -> ?Float -> Bool):Void;
	@:overload(function(condition:Dynamic):Node { })
	@:overload(function(condition:haxe.Constraints.Function):Node { })
	function getFirst(condition:String):Node;
	function getHtml():String;
	function setHtml(html:String):Void;
	function getOuterHtml():String;
	function split(index:Float):Element;
	function removeClass(className:String):Void;
	function hasClass(className:String):Bool;
}
extern class Fragment {
	function new():Void;
	var children : Array<Dynamic>;
	var parent : Dynamic;
	var type : Float;
	@:overload(function(fragmentHtml:String, ?parent:String, ?fixingBlock:String):Void { })
	@:overload(function(fragmentHtml:String, ?parent:Element, ?fixingBlock:Bool):Void { })
	@:overload(function(fragmentHtml:String, ?parent:String, ?fixingBlock:Bool):Void { })
	function fromHtml(fragmentHtml:String, ?parent:Element, ?fixingBlock:String):Void;
	function add(node:Node, ?index:Float):Void;
	function filter(filter:Filter):Void;
	function filterChildren(filter:Filter, ?filterRoot:Bool):Void;
	function writeHtml(writer:BasicWriter, ?filter:Filter):Void;
	function writeChildrenHtml(writer:BasicWriter, ?filter:Filter, ?filterRoot:Bool):Void;
	function forEach(callback:Node -> ?Float -> Bool, ?type:Float, ?skipRoot:Bool):Void;
}
extern class CssStyle {
	@:overload(function(styleText:String):Void { })
	function new(element:Element):Void;
	@:overload(function(obj:dom.Element):Void { })
	@:overload(function(obj:Dynamic):Void { })
	function populate(obj:Element):Void;
}
extern class Text extends Node {
	function new(value:String):Void;
	var type : Float;
	function filter(filter:Filter):Bool;
	function writeHtml(writer:BasicWriter, ?filter:Filter):Void;
}
typedef Dialog = {
	function addFocusable(element:CKEDITOR.dom.Element, index:Float):Void;
};
