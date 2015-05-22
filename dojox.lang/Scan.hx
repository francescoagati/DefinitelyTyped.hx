typedef Utils = {
	function coerceType(target:Dynamic, source:Dynamic):Dynamic;
	function merge(object:Dynamic, mixin:Dynamic):Dynamic;
	function updateWithObject(target:Dynamic, source:Dynamic, conv:Bool):Dynamic;
	function updateWithPattern(target:Dynamic, source:Dynamic, pattern:Dynamic, conv:Bool):Dynamic;
};
