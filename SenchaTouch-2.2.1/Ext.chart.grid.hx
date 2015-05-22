typedef ICircularGrid = {
	>Ext.draw.sprite.ICircle,
};
typedef IHorizontalGrid = {
	>Ext.draw.sprite.ISprite,
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic):Dynamic;
};
typedef IRadialGrid = {
	>Ext.draw.sprite.IPath,
	@:optional
	function render():Dynamic;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
};
typedef IVerticalGrid = {
	>Ext.draw.sprite.ISprite,
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic):Dynamic;
};
