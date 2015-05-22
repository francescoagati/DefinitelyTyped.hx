typedef ICallout = {
	>Ext.draw.modifier.IModifier,
	@:optional
	function popUp(?attr:Dynamic, ?changes:Dynamic):Void;
	@:optional
	function prepareAttributes(?attr:Dynamic):Void;
	@:optional
	function pushDown(?attr:Dynamic, ?changes:Dynamic):Dynamic;
};
typedef ILabel = {
	>Ext.draw.sprite.IText,
	@:optional
	var fx : Dynamic;
	@:optional
	function getFx():Dynamic;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic):Dynamic;
	@:optional
	function setFx(?fx:Dynamic):Void;
};
