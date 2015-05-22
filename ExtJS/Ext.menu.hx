typedef ICheckItem = {
	>Ext.menu.IItem,
	@:optional
	var checkChangeDisabled : Bool;
	@:optional
	var checkHandler : Dynamic;
	@:optional
	var checked : Bool;
	@:optional
	var checkedCls : String;
	@:optional
	var group : String;
	@:optional
	var groupCls : String;
	@:optional
	var hideOnClick : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var uncheckedCls : String;
	@:optional
	function afterRender():Void;
	@:optional
	function disableCheckChange():Void;
	@:optional
	function enableCheckChange():Void;
	@:optional
	function initComponent():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function setChecked(?checked:Bool, ?suppressEvents:Bool):Void;
};
typedef IColorPicker = {
	>Ext.menu.IMenu,
	@:optional
	var hideOnClick : Bool;
	@:optional
	var pickerId : String;
	@:optional
	var picker : Ext.picker.IColor;
};
typedef IDatePicker = {
	>Ext.menu.IMenu,
	@:optional
	var hideOnClick : Bool;
	@:optional
	var pickerId : String;
	@:optional
	var picker : Ext.picker.IDate;
};
typedef IItem = {
	>Ext.IComponent,
	>Ext.IQueryable,
	@:optional
	var activeCls : String;
	@:optional
	var canActivate : Bool;
	@:optional
	var clickHideDelay : Float;
	@:optional
	var destroyMenu : Bool;
	@:optional
	var disabledCls : String;
	@:optional
	var glyph : Dynamic;
	@:optional
	var handler : Dynamic;
	@:optional
	var hideOnClick : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefTarget : String;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var menu : Dynamic;
	@:optional
	var menuAlign : String;
	@:optional
	var menuExpandDelay : Float;
	@:optional
	var menuHideDelay : Float;
	@:optional
	var plain : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var text : String;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var tooltipType : String;
	@:optional
	var activated : Bool;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	var parentMenu : Ext.menu.IMenu;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRemoved():Void;
	@:optional
	function onRender():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function setHandler(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setIcon(?icon:String):Void;
	@:optional
	function setIconCls(?iconCls:String):Void;
	@:optional
	function setMenu(?menu:Dynamic, ?destroyMenu:Bool):Void;
	@:optional
	function setText(?text:String):Void;
	@:optional
	function setTooltip(?tooltip:Dynamic):Ext.menu.IItem;
};
typedef ITextItem = {
	>Ext.IComponent,
	>Ext.IQueryable,
	@:optional
	var activeCls : String;
	@:optional
	var canActivate : Bool;
	@:optional
	var clickHideDelay : Float;
	@:optional
	var destroyMenu : Bool;
	@:optional
	var disabledCls : String;
	@:optional
	var glyph : Dynamic;
	@:optional
	var handler : Dynamic;
	@:optional
	var hideOnClick : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefTarget : String;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var menu : Dynamic;
	@:optional
	var menuAlign : String;
	@:optional
	var menuExpandDelay : Float;
	@:optional
	var menuHideDelay : Float;
	@:optional
	var plain : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var text : String;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var tooltipType : String;
	@:optional
	var activated : Bool;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	var parentMenu : Ext.menu.IMenu;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRemoved():Void;
	@:optional
	function onRender():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function setHandler(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setIcon(?icon:String):Void;
	@:optional
	function setIconCls(?iconCls:String):Void;
	@:optional
	function setMenu(?menu:Dynamic, ?destroyMenu:Bool):Void;
	@:optional
	function setText(?text:String):Void;
	@:optional
	function setTooltip(?tooltip:Dynamic):Ext.menu.IItem;
};
typedef IKeyNav = {
	>Ext.util.IKeyNav,
};
typedef IManager = {
	>Ext.IBase,
};
extern class Manager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function get(?menu:Dynamic):Ext.menu.IMenu;
	static function getInitialConfig(?name:String):Dynamic;
	static function hideAll():Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef IMenuMgr = {
	>Ext.IBase,
};
extern class MenuMgr {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function get(?menu:Dynamic):Ext.menu.IMenu;
	static function getInitialConfig(?name:String):Dynamic;
	static function hideAll():Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef IMenu = {
	>Ext.panel.IPanel,
	@:optional
	var allowOtherMenus : Bool;
	@:optional
	var enableKeyNav : Bool;
	@:optional
	var floating : Bool;
	@:optional
	var hidden : Bool;
	@:optional
	var hideMode : String;
	@:optional
	var ignoreParentClicks : Bool;
	@:optional
	var minWidth : Float;
	@:optional
	var plain : Bool;
	@:optional
	var showSeparator : Bool;
	@:optional
	var isMenu : Bool;
	@:optional
	var parentMenu : Ext.menu.IMenu;
	@:optional
	function afterShow():Void;
	@:optional
	function beforeShow():Void;
	@:optional
	function canActivateItem(?item:Dynamic):Bool;
	@:optional
	function deactivateActiveItem(?andBlurFocusedItem:Dynamic):Void;
	@:optional
	function hide():Ext.IComponent;
	@:optional
	function isVisible():Bool;
	@:optional
	function onDestroy():Void;
	@:optional
	function showBy(?cmp:Dynamic, ?pos:Dynamic, ?off:Dynamic):Ext.IComponent;
};
typedef ISeparator = {
	>Ext.menu.IItem,
	@:optional
	var separatorCls : String;
};
