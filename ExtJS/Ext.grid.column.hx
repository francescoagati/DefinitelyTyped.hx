typedef IAction = {
	>Ext.grid.column.IColumn,
	@:optional
	var altText : String;
	@:optional
	var disabled : Bool;
	@:optional
	var getClass : Dynamic;
	@:optional
	var getTip : Dynamic;
	@:optional
	var handler : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var menuText : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var sortable : Bool;
	@:optional
	var stopSelection : Bool;
	@:optional
	var tooltip : String;
	@:optional
	function cascade(?fn:Dynamic, ?scope:Dynamic):Ext.IContainer;
	@:optional
	function defaultRenderer(?v:Dynamic, ?meta:Dynamic, ?record:Dynamic, ?rowIdx:Dynamic, ?colIdx:Dynamic, ?store:Dynamic, ?view:Dynamic):Void;
	@:optional
	function disableAction(?index:Dynamic, ?silent:Bool):Void;
	@:optional
	function enableAction(?index:Dynamic, ?silent:Bool):Void;
	@:optional
	function getRefItems():Void;
};
typedef IBoolean = {
	>Ext.grid.column.IColumn,
	@:optional
	var falseText : String;
	@:optional
	var trueText : String;
	@:optional
	var undefinedText : String;
};
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
typedef IColumn = {
	>Ext.grid.header.IContainer,
	@:optional
	var align : String;
	@:optional
	var baseCls : String;
	@:optional
	var columns : Array<Dynamic>;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var dataIndex : String;
	@:optional
	var detachOnRemove : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var editRenderer : Dynamic;
	@:optional
	var editor : Dynamic;
	@:optional
	var emptyCellText : String;
	@:optional
	var field : Dynamic;
	@:optional
	var fixed : Bool;
	@:optional
	var groupable : Bool;
	@:optional
	var header : String;
	@:optional
	var hideable : Bool;
	@:optional
	var lockable : Bool;
	@:optional
	var locked : Bool;
	@:optional
	var menuDisabled : Bool;
	@:optional
	var menuText : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var renderer : Dynamic;
	@:optional
	var resizable : Bool;
	@:optional
	var scope : Dynamic;
	@:optional
	var sortable : Bool;
	@:optional
	var stateId : String;
	@:optional
	var tdCls : String;
	@:optional
	var text : String;
	@:optional
	var tooltip : String;
	@:optional
	var tooltipType : String;
	@:optional
	var isColumn : Bool;
	@:optional
	var isHeader : Bool;
	@:optional
	var textEl : Ext.IElement;
	@:optional
	var triggerEl : Ext.IElement;
	@:optional
	function afterComponentLayout(?width:Dynamic, ?height:Dynamic, ?oldWidth:Dynamic, ?oldHeight:Dynamic):Void;
	@:optional
	function afterRender():Void;
	@:optional
	function autoSize(?The:Dynamic):Void;
	@:optional
	function defaultRenderer():Void;
	@:optional
	function getEditor(?record:Dynamic, ?defaultField:Dynamic):Dynamic;
	@:optional
	function getIndex():Float;
	@:optional
	function getSortParam():String;
	@:optional
	function getVisibleIndex():Float;
	@:optional
	function hide(?fromOwner:Dynamic):Ext.IComponent;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function isHideable():Void;
	@:optional
	function isLockable():Void;
	@:optional
	function onAdd(?child:Dynamic):Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRemove(?child:Dynamic):Void;
	@:optional
	function setEditor(?field:Dynamic):Void;
	@:optional
	function setText(?text:String):Void;
	@:optional
	function show(?fromOwner:Dynamic, ?fromChild:Dynamic):Ext.IComponent;
};
typedef IDate = {
	>Ext.grid.column.IColumn,
	@:optional
	var format : String;
	@:optional
	function defaultRenderer(?value:Dynamic):Void;
};
typedef INumber = {
	>Ext.grid.column.IColumn,
	@:optional
	var format : String;
};
typedef IRowNumberer = {
	>Ext.grid.column.IColumn,
	@:optional
	var align : String;
	@:optional
	var cls : String;
	@:optional
	var dataIndex : String;
	@:optional
	var draggable : Bool;
	@:optional
	var hideable : Bool;
	@:optional
	var lockable : Bool;
	@:optional
	var menuDisabled : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var tdCls : String;
	@:optional
	var text : String;
	@:optional
	var width : Float;
};
typedef ITemplate = {
	>Ext.grid.column.IColumn,
	@:optional
	var tpl : Dynamic;
	@:optional
	function defaultRenderer(?value:Dynamic, ?meta:Dynamic, ?record:Dynamic):Void;
};
