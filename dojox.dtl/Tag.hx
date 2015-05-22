typedef Date = {
	function now(parser:Dynamic, token:Dynamic):Void;
	function NowNode(format:Dynamic, node:Dynamic):Void;
};
typedef Logic = {
	function for_(parser:Dynamic, token:Dynamic):Dynamic;
	function ForNode(assign:Dynamic, loop:Dynamic, reversed:Dynamic, nodelist:Dynamic):Void;
	function if_(parser:Dynamic, token:Dynamic):Dynamic;
	function ifequal(parser:Dynamic, token:Dynamic):Dynamic;
	function IfEqualNode(var1:Dynamic, var2:Dynamic, trues:Dynamic, falses:Dynamic, negate:Dynamic):Void;
	function IfNode(bools:Dynamic, trues:Dynamic, falses:Dynamic, type:Dynamic):Void;
	function ifnotequal(parser:Dynamic, token:Dynamic):Dynamic;
};
typedef Loader = {
	function block(parser:Dynamic, token:Dynamic):Dynamic;
	function BlockNode(name:Dynamic, nodelist:Dynamic):Void;
	function extends_(parser:Dynamic, token:Dynamic):Dynamic;
	function ExtendsNode(getTemplate:Dynamic, nodelist:Dynamic, shared:Dynamic, parent:Dynamic, key:Dynamic):Void;
	function include(parser:Dynamic, token:Dynamic):Dynamic;
	function IncludeNode(path:Dynamic, constant:Dynamic, getTemplate:Dynamic, text:Dynamic, parsed:Dynamic):Void;
	function ssi(parser:Dynamic, token:Dynamic):Dynamic;
};
typedef Loop = {
	function cycle(parser:Dynamic, token:Dynamic):Dynamic;
	function CycleNode(cyclevars:Dynamic, name:Dynamic, text:Dynamic, shared:Dynamic):Void;
	function ifchanged(parser:Dynamic, token:Dynamic):Dynamic;
	function IfChangedNode(nodes:Dynamic, vars:Dynamic, shared:Dynamic):Void;
	function regroup(parser:Dynamic, token:Dynamic):Dynamic;
	function RegroupNode(expression:Dynamic, key:Dynamic, alias:Dynamic):Void;
};
typedef Misc = {
	function comment(parser:Dynamic, token:Dynamic):Dynamic;
	function debug(parser:Dynamic, token:Dynamic):Dynamic;
	function DebugNode(text:Dynamic):Void;
	function filter(parser:Dynamic, token:Dynamic):Dynamic;
	function FilterNode(varnode:Dynamic, nodelist:Dynamic):Void;
	function firstof(parser:Dynamic, token:Dynamic):Dynamic;
	function FirstOfNode(vars:Dynamic, text:Dynamic):Void;
	function spaceless(parser:Dynamic, token:Dynamic):Dynamic;
	function SpacelessNode(nodelist:Dynamic, text:Dynamic):Void;
	function templatetag(parser:Dynamic, token:Dynamic):Dynamic;
	function TemplateTagNode(tag:Dynamic, text:Dynamic):Void;
	function widthratio(parser:Dynamic, token:Dynamic):Dynamic;
	function WidthRatioNode(current:Dynamic, max:Dynamic, width:Dynamic, text:Dynamic):Void;
	function with_(parser:Dynamic, token:Dynamic):Dynamic;
	function WithNode(target:Dynamic, alias:Dynamic, nodelist:Dynamic):Void;
};
