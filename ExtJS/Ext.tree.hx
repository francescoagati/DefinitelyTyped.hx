typedef IColumn = {
	>Ext.grid.column.IColumn,
	@:optional
	var hideable : Bool;
	@:optional
	var lockable : Bool;
	@:optional
	var tdCls : String;
	@:optional
	var draggable : Bool;
};
typedef IPanel = {
	>Ext.panel.ITable,
	@:optional
	var animate : Bool;
	@:optional
	var deferRowRender : Bool;
	@:optional
	var displayField : String;
	@:optional
	var folderSort : Bool;
	@:optional
	var hideHeaders : Bool;
	@:optional
	var lines : Bool;
	@:optional
	var root : Dynamic;
	@:optional
	var rootVisible : Bool;
	@:optional
	var rowLines : Bool;
	@:optional
	var selType : String;
	@:optional
	var singleExpand : Bool;
	@:optional
	var store : Ext.data.ITreeStore;
	@:optional
	var useArrows : Bool;
	@:optional
	var viewType : String;
	@:optional
	function collapseAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function collapseNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getChecked():Array<Ext.data.INodeInterface>;
	@:optional
	function getRootNode():Ext.data.INodeInterface;
	@:optional
	function selectPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setRootNode(?root:Dynamic):Ext.data.INodeInterface;
};
typedef ITreePanel = {
	>Ext.panel.ITable,
	@:optional
	var animate : Bool;
	@:optional
	var deferRowRender : Bool;
	@:optional
	var displayField : String;
	@:optional
	var folderSort : Bool;
	@:optional
	var hideHeaders : Bool;
	@:optional
	var lines : Bool;
	@:optional
	var root : Dynamic;
	@:optional
	var rootVisible : Bool;
	@:optional
	var rowLines : Bool;
	@:optional
	var selType : String;
	@:optional
	var singleExpand : Bool;
	@:optional
	var store : Ext.data.ITreeStore;
	@:optional
	var useArrows : Bool;
	@:optional
	var viewType : String;
	@:optional
	function collapseAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function collapseNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getChecked():Array<Ext.data.INodeInterface>;
	@:optional
	function getRootNode():Ext.data.INodeInterface;
	@:optional
	function selectPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setRootNode(?root:Dynamic):Ext.data.INodeInterface;
};
typedef IView = {
	>Ext.view.ITable,
	@:optional
	var animate : Bool;
	@:optional
	var blockRefresh : Bool;
	@:optional
	var deferInitialRefresh : Bool;
	@:optional
	var loadMask : Bool;
	@:optional
	var loadingCls : String;
	@:optional
	var rootVisible : Bool;
	@:optional
	var stripeRows : Bool;
	@:optional
	var isTreeView : Bool;
	@:optional
	function afterComponentLayout():Void;
	@:optional
	function collapse(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expand(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function getTreeStore():Void;
	@:optional
	function initComponent():Void;
	@:optional
	function onBindStore():Void;
	@:optional
	function onUnbindStore():Void;
	@:optional
	function toggle(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IViewDragZone = {
	>Ext.view.IDragZone,
};
typedef IViewDropZone = {
	>Ext.view.IDropZone,
	@:optional
	var allowContainerDrop : Bool;
	@:optional
	var allowParentInserts : Bool;
	@:optional
	var appendOnly : Bool;
	@:optional
	var expandDelay : Float;
	@:optional
	function notifyOut():Void;
	@:optional
	function onContainerOver(?dd:Dynamic, ?e:Dynamic, ?data:Dynamic):String;
	@:optional
	function onNodeOut(?n:Dynamic, ?dd:Dynamic, ?e:Dynamic, ?data:Dynamic):Void;
	@:optional
	function onNodeOver(?node:Dynamic, ?dragZone:Dynamic, ?e:Dynamic, ?data:Dynamic):String;
};
