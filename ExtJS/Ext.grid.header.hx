typedef IContainer = {
	>Ext.container.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var defaultWidth : Float;
	@:optional
	var detachOnRemove : Bool;
	@:optional
	var enableColumnHide : Bool;
	@:optional
	var sealed : Bool;
	@:optional
	var sortable : Bool;
	@:optional
	var weight : Float;
	@:optional
	var isGroupHeader : Bool;
	@:optional
	function getColumnCount():Void;
	@:optional
	function getColumnMenu(?headerContainer:Dynamic):Void;
	@:optional
	function getFullWidth():Void;
	@:optional
	function getGridColumns(?inResult:Dynamic, ?hiddenAncestor:Dynamic):Array<Dynamic>;
	@:optional
	function getHeaderAtIndex(?index:Float):Void;
	@:optional
	function getHeaderIndex(?header:Ext.grid.column.IColumn):Float;
	@:optional
	function getMenuItems():Array<Dynamic>;
	@:optional
	function getVisibleGridColumns():Array<Dynamic>;
	@:optional
	function getVisibleHeaderClosestToIndex(?index:Float):Void;
	@:optional
	function isLayoutRoot():Void;
	@:optional
	function onAdd(?c:Dynamic):Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRemove(?c:Dynamic):Void;
	@:optional
	function onShow():Void;
};
typedef IDragZone = {
	>Ext.dd.IDragZone,
	@:optional
	function getDragData(?e:Dynamic):Dynamic;
	@:optional
	function getRepairXY():Array<Float>;
	@:optional
	function onBeforeDrag():Bool;
	@:optional
	function onInitDrag():Bool;
};
typedef IDropZone = {
	>Ext.dd.IDropZone,
	@:optional
	function getTargetFromEvent(?e:Dynamic):Dynamic;
	@:optional
	function onNodeDrop(?node:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):Bool;
	@:optional
	function onNodeOut():Void;
	@:optional
	function onNodeOver(?node:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):String;
};
