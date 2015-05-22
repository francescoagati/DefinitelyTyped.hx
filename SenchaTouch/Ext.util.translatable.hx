typedef IAbstract = {
	>Ext.IEvented,
	@:optional
	function destroy():Void;
	@:optional
	function getEasing():Dynamic;
	@:optional
	function getEasingX():Dynamic;
	@:optional
	function getEasingY():Dynamic;
	@:optional
	function getUseWrapper():Dynamic;
	@:optional
	function setEasing(?easing:Dynamic):Void;
	@:optional
	function setEasingX(?easingX:Dynamic):Void;
	@:optional
	function setEasingY(?easingY:Dynamic):Void;
	@:optional
	function setUseWrapper(?useWrapper:Dynamic):Void;
};
typedef ICssPosition = {
	>Ext.util.translatable.IDom,
	@:optional
	function destroy():Void;
};
typedef ICssTransform = {
	>Ext.util.translatable.IDom,
	@:optional
	function destroy():Void;
};
typedef IDom = {
	>Ext.util.translatable.IAbstract,
	@:optional
	function getElement():Dynamic;
	@:optional
	function setElement(?element:Dynamic):Void;
};
typedef IScrollPosition = {
	>Ext.util.translatable.IDom,
	@:optional
	function destroy():Void;
	@:optional
	function getUseWrapper():Bool;
	@:optional
	function setUseWrapper(?useWrapper:Bool):Void;
};
