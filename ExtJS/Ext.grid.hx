typedef ICellContext = {
	>Ext.IBase,
	@:optional
	var isCellContext : Bool;
};
typedef ICellEditor = {
	>Ext.IEditor,
	@:optional
	var alignment : String;
	@:optional
	var cls : String;
	@:optional
	var hideEl : Bool;
	@:optional
	var shadow : Dynamic;
};
typedef IActionColumn = {
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
typedef IBooleanColumn = {
	>Ext.grid.column.IColumn,
	@:optional
	var falseText : String;
	@:optional
	var trueText : String;
	@:optional
	var undefinedText : String;
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
typedef IDateColumn = {
	>Ext.grid.column.IColumn,
	@:optional
	var format : String;
	@:optional
	function defaultRenderer(?value:Dynamic):Void;
};
typedef INumberColumn = {
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
typedef ITemplateColumn = {
	>Ext.grid.column.IColumn,
	@:optional
	var tpl : Dynamic;
	@:optional
	function defaultRenderer(?value:Dynamic, ?meta:Dynamic, ?record:Dynamic):Void;
};
typedef IColumnComponentLayout = {
	>Ext.layout.component.IAuto,
	@:optional
	var setWidthInDom : Bool;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
};
typedef IColumnLayout = {
	>Ext.layout.container.IHBox,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function completeLayout(?ownerContext:Dynamic):Void;
	@:optional
	function initLayout():Void;
};
typedef IColumnManager = {
	>Ext.IBase,
	@:optional
	function getHeaderAtIndex(?index:Float):Ext.grid.column.IColumn;
	@:optional
	function getHeaderById(?id:String):Ext.grid.column.IColumn;
	@:optional
	function getHeaderIndex(?header:Ext.grid.column.IColumn):Float;
	@:optional
	function getVisibleHeaderClosestToIndex(?index:Float):Void;
};
typedef IColumnModel = {
	>Ext.IBase,
	@:optional
	function getHeaderAtIndex(?index:Float):Ext.grid.column.IColumn;
	@:optional
	function getHeaderById(?id:String):Ext.grid.column.IColumn;
	@:optional
	function getHeaderIndex(?header:Ext.grid.column.IColumn):Float;
	@:optional
	function getVisibleHeaderClosestToIndex(?index:Float):Void;
};
typedef ILockable = {
	>Ext.IBase,
	@:optional
	var lockedGridConfig : Dynamic;
	@:optional
	var lockedViewConfig : Dynamic;
	@:optional
	var normalGridConfig : Dynamic;
	@:optional
	var normalViewConfig : Dynamic;
	@:optional
	var scrollDelta : Float;
	@:optional
	var subGridXType : String;
	@:optional
	var syncRowHeight : Bool;
	@:optional
	function syncRowHeights():Void;
};
typedef ILockingView = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var isLockingView : Bool;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IPanel = {
	>Ext.panel.ITable,
	@:optional
	var columns : Dynamic;
	@:optional
	var rowLines : Bool;
	@:optional
	var viewType : String;
	@:optional
	function reconfigure(?store:Ext.data.IStore, ?columns:Array<Dynamic>):Void;
};
typedef IGridPanel = {
	>Ext.panel.ITable,
	@:optional
	var columns : Dynamic;
	@:optional
	var rowLines : Bool;
	@:optional
	var viewType : String;
	@:optional
	function reconfigure(?store:Ext.data.IStore, ?columns:Array<Dynamic>):Void;
};
typedef IPropertyGrid = {
	>Ext.grid.IPanel,
	@:optional
	var columnLines : Bool;
	@:optional
	var customEditors : Dynamic;
	@:optional
	var customRenderers : Dynamic;
	@:optional
	var enableColumnMove : Bool;
	@:optional
	var inferTypes : Bool;
	@:optional
	var nameColumnWidth : Dynamic;
	@:optional
	var nameField : String;
	@:optional
	var propertyNames : Dynamic;
	@:optional
	var source : Dynamic;
	@:optional
	var sourceConfig : Dynamic;
	@:optional
	var valueField : String;
	@:optional
	function getSource():Dynamic;
	@:optional
	function removeProperty(?prop:String):Void;
	@:optional
	function setProperty(?prop:String, ?value:Dynamic, ?create:Bool):Void;
	@:optional
	function setSource(?source:Dynamic, ?sourceConfig:Dynamic):Void;
};
typedef IPropertyColumnModel = {
	>Ext.grid.header.IContainer,
};
typedef IPropertyStore = {
	>Ext.data.IStore,
	@:optional
	var sortOnLoad : Bool;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
};
typedef IRowEditor = {
	>Ext.form.IPanel,
	@:optional
	var border : Dynamic;
	@:optional
	var hideMode : String;
	@:optional
	function afterRender():Void;
	@:optional
	function getRefItems():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function loadRecord(?record:Dynamic):Ext.form.IBasic;
	@:optional
	function onHide():Void;
	@:optional
	function onShow():Void;
	@:optional
	function startEdit(?record:Ext.data.IModel, ?columnHeader:Ext.data.IModel):Void;
};
typedef IRowEditorButtons = {
	>Ext.container.IContainer,
	@:optional
	var frame : Bool;
	@:optional
	var shrinkWrap : Dynamic;
};
typedef IView = {
	>Ext.view.ITable,
	@:optional
	var autoScroll : Bool;
	@:optional
	var stripeRows : Bool;
};
typedef IViewDropZone = {
	>Ext.view.IDropZone,
};
