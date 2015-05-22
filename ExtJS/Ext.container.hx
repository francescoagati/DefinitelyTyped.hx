typedef IAbstractContainer = {
	>Ext.IComponent,
	>Ext.IQueryable,
	@:optional
	var activeItem : Dynamic;
	@:optional
	var autoDestroy : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var bubbleEvents : Array<String>;
	@:optional
	var defaultType : String;
	@:optional
	var defaults : Dynamic;
	@:optional
	var detachOnRemove : Bool;
	@:optional
	var items : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var suspendLayout : Bool;
	@:optional
	function add(?component:Dynamic):Dynamic;
	@:optional
	function afterComponentLayout():Void;
	@:optional
	function afterLayout(?layout:Ext.layout.container.IContainer):Void;
	@:optional
	function cascade(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IContainer;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function contains(?comp:Ext.IComponent, ?deep:Bool):Bool;
	@:optional
	function disable():Ext.container.IAbstractContainer;
	@:optional
	function doLayout():Ext.container.IContainer;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function getComponent(?comp:Dynamic):Ext.IComponent;
	@:optional
	function getLayout():Ext.layout.container.IContainer;
	@:optional
	function getRefItems(?deep:Dynamic):Void;
	@:optional
	function insert(?index:Float, ?component:Dynamic):Ext.IComponent;
	@:optional
	function isAncestor(?possibleDescendant:Ext.IComponent):Void;
	@:optional
	function move(?fromIdx:Dynamic, ?toIdx:Float):Ext.IComponent;
	@:optional
	function onAdd(?component:Ext.IComponent, ?position:Float):Void;
	@:optional
	function onBeforeAdd(?item:Ext.IComponent):Void;
	@:optional
	function onPosition():Void;
	@:optional
	function onRemove(?component:Ext.IComponent, ?autoDestroy:Bool):Void;
	@:optional
	function onResize():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function remove(?component:Dynamic, ?autoDestroy:Bool):Ext.IComponent;
	@:optional
	function removeAll(?autoDestroy:Bool):Array<Ext.IComponent>;
};
typedef IButtonGroup = {
	>Ext.panel.IPanel,
	@:optional
	var baseCls : String;
	@:optional
	var columns : Float;
	@:optional
	var defaultButtonUI : String;
	@:optional
	var defaultType : String;
	@:optional
	var frame : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var titleAlign : String;
	@:optional
	function onBeforeAdd(?component:Dynamic):Void;
};
typedef IContainer = {
	>Ext.container.IAbstractContainer,
	@:optional
	var anchorSize : Dynamic;
	@:optional
	function getChildByElement(?el:Dynamic, ?deep:Bool):Ext.IComponent;
};
typedef IDockingContainer = {
	>Ext.IBase,
	@:optional
	var defaultDockWeights : Dynamic;
	@:optional
	function addDocked(?component:Dynamic, ?pos:Float):Array<Ext.IComponent>;
	@:optional
	function getDockedComponent(?comp:Dynamic):Ext.IComponent;
	@:optional
	function getDockedItems(?selector:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	@:optional
	function insertDocked(?pos:Float, ?component:Dynamic):Void;
	@:optional
	function onDockedAdd(?component:Ext.IComponent):Void;
	@:optional
	function onDockedRemove(?component:Ext.IComponent):Void;
	@:optional
	function removeDocked(?item:Ext.IComponent, ?autoDestroy:Bool):Void;
};
typedef IMonitor = {
	>Ext.IBase,
};
typedef IViewport = {
	>Ext.container.IContainer,
	@:optional
	var isViewport : Bool;
	@:optional
	function onRender():Void;
};
