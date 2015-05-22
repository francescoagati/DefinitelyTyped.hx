typedef ICheckColumn = {
	>Ext.grid.column.IColumn,
	@:optional
	var stopSelection : Bool;
	@:optional
	var tdCls : String;
	@:optional
	function onDisable(?silent:Bool):Void;
	@:optional
	function onEnable(?silent:Bool):Void;
};
