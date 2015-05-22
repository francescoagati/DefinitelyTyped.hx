typedef IActionOverFlowMenuButton = {
	>Ext.ux.IMenuButton,
	@:optional
	var menuItems : Dynamic;
};
typedef IApplicationMenu = {
	>Ext.IMenu,
	@:optional
	var defaults : Dynamic;
	@:optional
	function getDefaults():Dynamic;
	@:optional
	function setDefaults(?defaults:Dynamic):Void;
};
typedef IContextMenu = {
	>Ext.IMenu,
};
typedef IMenuButton = {
	>Ext.IButton,
	@:optional
	function getMenuItems():Array<Dynamic>;
	@:optional
	function setMenuItems(?menuItems:Array<Dynamic>):Void;
};
typedef ITabMenuButton = {
	>Ext.ux.IMenuButton,
	@:optional
	var menuItems : Dynamic;
};
