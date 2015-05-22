typedef NodeList_dom = { };
typedef NodeList_manipulate = { };
typedef NodeList_traverse = { };
typedef On = { };
typedef On = { };
typedef On = { };
typedef On = { };
typedef On = {
	function emit(target:Dynamic, type:Dynamic, event:Dynamic):Dynamic;
	function once(target:Dynamic, type:Dynamic, listener:Dynamic, ?dontFix:Dynamic):Dynamic;
	function parse(target:Dynamic, type:Dynamic, listener:Dynamic, addListener:Dynamic, dontFix:Dynamic, matchesTarget:Dynamic):Dynamic;
	function pausable(target:Dynamic, type:Dynamic, listener:Dynamic, dontFix:Dynamic):Dynamic;
	function selector(selector:Dynamic, eventType:Dynamic, children:Dynamic):haxe.Constraints.Function;
};
