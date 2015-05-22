extern class _Templated extends dijit._TemplatedMixin {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	var searchContainerNode : Bool;
	var templatePath : String;
	var templateString : String;
	function buildRendering():Void;
	function destroyRendering():Void;
	@:overload(function():Dynamic { })
	function getCachedTemplate(templatePath:Dynamic, templateString:Dynamic, alwaysUseString:Dynamic):Dynamic;
	function render():Void;
	function startup():Void;
}
typedef _base = {
	var BOOLS : Dynamic;
	var data : Dynamic;
	var date : Dynamic;
	var dates : Dynamic;
	var dijit : Dynamic;
	var dom : Dynamic;
	var html : Dynamic;
	var htmlstrings : Dynamic;
	var integers : Dynamic;
	var lists : Dynamic;
	var loader : Dynamic;
	var logic : Dynamic;
	var loop : Dynamic;
	var misc : Dynamic;
	var objects : Dynamic;
	var register : Dynamic;
	var strings : Dynamic;
	var text : Dynamic;
	var TOKEN_ATTR : Float;
	var TOKEN_BLOCK : Float;
	var TOKEN_CHANGE : Float;
	var TOKEN_COMMENT : Float;
	var TOKEN_CUSTOM : Float;
	var TOKEN_NODE : Float;
	var TOKEN_TEXT : Float;
	var TOKEN_VAR : Float;
	function AttributeNode(key:Dynamic, value:Dynamic):Void;
	function ChangeNode(node:Dynamic, up:Bool, root:Bool):Void;
	function Context(dict:Dynamic):Void;
	function DomBuffer(parent:HTMLElement):Void;
	function DomInline(args:Dynamic, node:Dynamic):Void;
	@:overload(function(obj:HTMLElement):Void { })
	@:overload(function(obj:dojo._base.Url):Void { })
	function DomTemplate(obj:String):Void;
	function Inline(args:Dynamic, node:Dynamic):Void;
	function mark_safe(value:Dynamic):Void;
	function quickFilter(str:Dynamic):Void;
	@:overload(function(template:dojo._base.Url, isString:Bool):Void { })
	function Template(template:String, isString:Bool):Void;
};
