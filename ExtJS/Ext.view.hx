typedef IAbstractView = {
	>Ext.IComponent,
	>Ext.util.IBindable,
	@:optional
	var blockRefresh : Bool;
	@:optional
	var deferEmptyText : Bool;
	@:optional
	var deferInitialRefresh : Bool;
	@:optional
	var disableSelection : Bool;
	@:optional
	var emptyText : String;
	@:optional
	var itemCls : String;
	@:optional
	var itemSelector : String;
	@:optional
	var itemTpl : Dynamic;
	@:optional
	var loadMask : Dynamic;
	@:optional
	var loadingCls : String;
	@:optional
	var loadingHeight : Float;
	@:optional
	var loadingText : String;
	@:optional
	var multiSelect : Bool;
	@:optional
	var overItemCls : String;
	@:optional
	var preserveScrollOnRefresh : Bool;
	@:optional
	var selectedItemCls : String;
	@:optional
	var simpleSelect : Bool;
	@:optional
	var singleSelect : Bool;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var tpl : Dynamic;
	@:optional
	var trackOver : Bool;
	@:optional
	function afterRender():Void;
	@:optional
	function bindStore(?store:Ext.data.IStore):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function clearSelections():Void;
	@:optional
	function collectData(?records:Array<Ext.data.IModel>, ?startIndex:Float):Array<Dynamic>;
	@:optional
	function deselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function findItemByChild(?node:HTMLElement):HTMLElement;
	@:optional
	function findTargetByEvent(?e:Ext.IEventObject):Void;
	@:optional
	function getNode(?nodeInfo:Dynamic):HTMLElement;
	@:optional
	function getNodes(?start:Float, ?end:Float):Array<HTMLElement>;
	@:optional
	function getRecord(?node:Dynamic):Ext.data.IModel;
	@:optional
	function getRecords(?nodes:Array<HTMLElement>):Array<Ext.data.IModel>;
	@:optional
	function getSelectedNodes():Array<HTMLElement>;
	@:optional
	function getSelectedRecords():Array<Ext.data.IModel>;
	@:optional
	function getSelectionCount():Float;
	@:optional
	function getSelectionModel():Ext.selection.IModel;
	@:optional
	function getStore():Ext.data.IStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function indexOf(?nodeInfo:Dynamic):Float;
	@:optional
	function initComponent():Void;
	@:optional
	function isSelected(?node:Dynamic):Bool;
	@:optional
	function onBindStore(?store:Dynamic, ?initial:Dynamic, ?propName:Dynamic):Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRender():Void;
	@:optional
	function onUnbindStore(?store:Dynamic):Void;
	@:optional
	function prepareData(?data:Dynamic, ?recordIndex:Float, ?record:Ext.data.IModel):Dynamic;
	@:optional
	function refresh():Void;
	@:optional
	function refreshNode(?index:Float):Void;
	@:optional
	function select(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef IBoundList = {
	>Ext.view.IView,
	>Ext.IQueryable,
	@:optional
	var baseCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var deferInitialRefresh : Bool;
	@:optional
	var displayField : String;
	@:optional
	var itemCls : String;
	@:optional
	var pageSize : Float;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var shadow : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	var trackOver : Bool;
	@:optional
	var pagingToolbar : Ext.toolbar.IPaging;
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function getInnerTpl(?displayField:String):String;
	@:optional
	function onDestroy():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function refresh():Void;
};
typedef IBoundListKeyNav = {
	>Ext.util.IKeyNav,
	@:optional
	var boundList : Ext.view.IBoundList;
	@:optional
	function highlightAt(?index:Float):Void;
	@:optional
	function selectHighlighted(?e:Dynamic):Void;
};
typedef IDragZone = {
	>Ext.dd.IDragZone,
	@:optional
	var containerScroll : Dynamic;
	@:optional
	function getDragData(?e:Dynamic):Dynamic;
	@:optional
	function getRepairXY(?e:Dynamic, ?data:Dynamic):Array<Float>;
	@:optional
	function init(?id:Dynamic, ?sGroup:Dynamic, ?config:Dynamic):Void;
	@:optional
	function onInitDrag(?x:Dynamic, ?y:Dynamic):Bool;
};
typedef IDropZone = {
	>Ext.dd.IDropZone,
	@:optional
	function destroy():Void;
	@:optional
	function getTargetFromEvent(?e:Dynamic):Dynamic;
	@:optional
	function notifyOut(?node:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):Void;
	@:optional
	function onContainerDrop(?dd:Dynamic, ?e:Dynamic, ?data:Dynamic):Bool;
	@:optional
	function onContainerOver(?dd:Dynamic, ?e:Dynamic, ?data:Dynamic):String;
	@:optional
	function onNodeDrop(?targetNode:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):Bool;
	@:optional
	function onNodeOver(?node:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):String;
};
typedef INodeCache = {
	>Ext.IBase,
	@:optional
	function clear(?removeDom:Bool):Void;
	@:optional
	function fill(?els:Array<HTMLElement>):Ext.view.INodeCache;
	@:optional
	function indexOf(?el:Dynamic):Float;
	@:optional
	function removeElement(?el:Dynamic, ?removeDom:Bool):Void;
	@:optional
	function replaceElement(?el:Dynamic, ?replacement:Dynamic, ?domReplace:Bool):Ext.view.INodeCache;
	@:optional
	function scroll(?newRecords:Array<Ext.data.IModel>, ?direction:Float, ?removeCount:Float):Void;
};
typedef ITable = {
	>Ext.view.IView,
	@:optional
	var baseCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var enableTextSelection : Bool;
	@:optional
	var firstCls : String;
	@:optional
	var itemSelector : String;
	@:optional
	var lastCls : String;
	@:optional
	var markDirty : Bool;
	@:optional
	var overItemCls : String;
	@:optional
	var selectedItemCls : String;
	@:optional
	var stripeRows : Bool;
	@:optional
	var trackOver : Bool;
	@:optional
	function addRowCls(?rowInfo:Dynamic, ?cls:String):Void;
	@:optional
	function autoSizeColumn(?header:Dynamic):Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function collectData(?records:Dynamic, ?startIndex:Dynamic):Array<Dynamic>;
	@:optional
	function expandToFit(?header:Dynamic):Void;
	@:optional
	function focus(?selectText:Dynamic, ?delay:Dynamic):Ext.IComponent;
	@:optional
	function focusRow(?row:Dynamic, ?delay:Dynamic):Void;
	@:optional
	function getBodySelector():Void;
	@:optional
	function getCellSelector(?header:Ext.grid.column.IColumn):Void;
	@:optional
	function getColumnSizerSelector(?header:Dynamic):Void;
	@:optional
	function getDataRowSelector():Void;
	@:optional
	function getFeature(?id:String):Ext.grid.feature.IFeature;
	@:optional
	function getItemSelector():Void;
	@:optional
	function getNode(?nodeInfo:Dynamic, ?dataRow:Bool):HTMLElement;
	@:optional
	function getNodeContainerSelector():Void;
	@:optional
	function getPosition(?record:Dynamic, ?header:Dynamic):Array<Float>;
	@:optional
	function getRecord(?node:Dynamic):Ext.data.IModel;
	@:optional
	function getRowClass(?record:Ext.data.IModel, ?index:Float, ?rowParams:Dynamic, ?store:Ext.data.IStore):String;
	@:optional
	function indexOf(?node:Dynamic):Float;
	@:optional
	function initComponent():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function refresh():Void;
	@:optional
	function removeRowCls(?rowInfo:Dynamic, ?cls:String):Void;
	@:optional
	function walkRecs(?startRec:Ext.data.IModel, ?distance:Float):Void;
	@:optional
	function walkRows(?startRow:Float, ?distance:Float):Void;
};
typedef ITableLayout = {
	>Ext.layout.component.IAuto,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout():Void;
};
typedef IView = {
	>Ext.view.IAbstractView,
	@:optional
	var mouseOverOutBuffer : Float;
	@:optional
	function clearHighlight():Void;
	@:optional
	function focusNode(?rec:Ext.data.IModel):Void;
	@:optional
	function highlightItem(?item:HTMLElement):Void;
	@:optional
	function initComponent():Void;
	@:optional
	function refresh():Void;
};
