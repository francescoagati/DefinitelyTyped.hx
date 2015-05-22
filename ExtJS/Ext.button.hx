typedef IButton = {
	>Ext.IComponent,
	>Ext.IQueryable,
	@:optional
	var allowDepress : Bool;
	@:optional
	var arrowAlign : String;
	@:optional
	var arrowCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var baseParams : Dynamic;
	@:optional
	var clickEvent : String;
	@:optional
	var cls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var destroyMenu : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var enableToggle : Bool;
	@:optional
	var focusCls : String;
	@:optional
	var frame : Bool;
	@:optional
	var glyph : Dynamic;
	@:optional
	var handleMouseEvents : Bool;
	@:optional
	var handler : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefTarget : String;
	@:optional
	var icon : String;
	@:optional
	var iconAlign : String;
	@:optional
	var iconCls : String;
	@:optional
	var menu : Dynamic;
	@:optional
	var menuActiveCls : String;
	@:optional
	var menuAlign : String;
	@:optional
	var minWidth : Float;
	@:optional
	var overCls : String;
	@:optional
	var overflowText : String;
	@:optional
	var params : Dynamic;
	@:optional
	var pressed : Bool;
	@:optional
	var pressedCls : String;
	@:optional
	var preventDefault : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var repeat : Dynamic;
	@:optional
	var scale : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var showEmptyMenu : Bool;
	@:optional
	var shrinkWrap : Dynamic;
	@:optional
	var tabIndex : Float;
	@:optional
	var text : String;
	@:optional
	var textAlign : String;
	@:optional
	var toggleGroup : String;
	@:optional
	var toggleHandler : Dynamic;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var tooltipType : String;
	@:optional
	var isAction : Bool;
	@:optional
	var template : Ext.ITemplate;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function disable(?silent:Dynamic):Void;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function enable(?silent:Dynamic):Void;
	@:optional
	function getTemplateArgs():Dynamic;
	@:optional
	function getText():String;
	@:optional
	function hasVisibleMenu():Bool;
	@:optional
	function hideMenu():Ext.button.IButton;
	@:optional
	function initComponent():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function setGlyph(?glyph:Dynamic):Ext.button.IButton;
	@:optional
	function setHandler(?handler:Dynamic, ?scope:Dynamic):Ext.button.IButton;
	@:optional
	function setHref(?href:String):Void;
	@:optional
	function setIcon(?icon:String):Ext.button.IButton;
	@:optional
	function setIconCls(?cls:String):Ext.button.IButton;
	@:optional
	function setParams(?params:Dynamic):Void;
	@:optional
	function setScale(?scale:String):Void;
	@:optional
	function setText(?text:String):Ext.button.IButton;
	@:optional
	function setTextAlign(?align:String):Void;
	@:optional
	function setTooltip(?tooltip:Dynamic):Ext.button.IButton;
	@:optional
	function setUI(?ui:Dynamic):Void;
	@:optional
	function showMenu(?fromEvent:Dynamic):Void;
	@:optional
	function toggle(?state:Bool, ?suppressEvent:Bool):Ext.button.IButton;
};
typedef ICycle = {
	>Ext.button.ISplit,
	@:optional
	var changeHandler : Dynamic;
	@:optional
	var forceGlyph : Dynamic;
	@:optional
	var forceIcon : String;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var prependText : String;
	@:optional
	var showText : Bool;
	@:optional
	var menu : Ext.menu.IMenu;
	@:optional
	function getActiveItem():Ext.menu.ICheckItem;
	@:optional
	function setActiveItem(?item:Ext.menu.ICheckItem, ?suppressEvent:Bool):Void;
	@:optional
	function toggleSelected():Void;
};
typedef IManager = {
	>Ext.IBase,
};
extern class Manager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef ISplit = {
	>Ext.button.IButton,
	@:optional
	var arrowHandler : Dynamic;
	@:optional
	var arrowTooltip : String;
	@:optional
	function setArrowHandler(?handler:Dynamic, ?scope:Dynamic):Void;
};
