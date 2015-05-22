typedef ICellModel = {
	>Ext.selection.IModel,
	@:optional
	var enableKeyNav : Bool;
	@:optional
	var mode : String;
	@:optional
	var preventWrap : Bool;
	@:optional
	function deselect(?record:Dynamic, ?suppressEvent:Dynamic):Void;
	@:optional
	function getCurrentPosition():Void;
	@:optional
	function select(?pos:Dynamic, ?keepExisting:Dynamic, ?suppressEvent:Dynamic):Void;
	@:optional
	function setCurrentPosition(?position:Dynamic, ?suppressEvent:Bool):Void;
};
typedef ICheckboxModel = {
	>Ext.selection.IRowModel,
	@:optional
	var checkOnly : Bool;
	@:optional
	var checkSelector : String;
	@:optional
	var injectCheckbox : Dynamic;
	@:optional
	var mode : Dynamic;
	@:optional
	var showHeaderCheckbox : Bool;
	@:optional
	function getHeaderConfig():Void;
	@:optional
	function onHeaderClick(?headerCt:Dynamic, ?header:Dynamic, ?e:Dynamic):Void;
	@:optional
	function renderer(?value:Dynamic, ?metaData:Dynamic, ?record:Dynamic, ?rowIndex:Dynamic, ?colIndex:Dynamic, ?store:Dynamic, ?view:Dynamic):Void;
};
typedef IDataViewModel = {
	>Ext.selection.IModel,
	@:optional
	var enableKeyNav : Bool;
};
typedef IModel = {
	>Ext.util.IObservable,
	>Ext.util.IBindable,
	@:optional
	var allowDeselect : Bool;
	@:optional
	var mode : Dynamic;
	@:optional
	var pruneRemoved : Bool;
	@:optional
	var toggleOnClick : Bool;
	@:optional
	var selected : Ext.util.IMixedCollection;
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function deselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function deselectAll(?suppressEvent:Bool):Void;
	@:optional
	function deselectRange(?startRow:Dynamic, ?endRow:Dynamic):Void;
	@:optional
	function getCount():Float;
	@:optional
	function getLastSelected():Ext.data.IModel;
	@:optional
	function getSelection():Array<Ext.data.IModel>;
	@:optional
	function getSelectionMode():String;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function hasSelection():Bool;
	@:optional
	function isFocused(?record:Ext.data.IModel):Void;
	@:optional
	function isLocked():Bool;
	@:optional
	function isRangeSelected(?from:Dynamic, ?to:Dynamic):Bool;
	@:optional
	function isSelected(?record:Dynamic):Bool;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function select(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function selectAll(?suppressEvent:Bool):Void;
	@:optional
	function selectRange(?startRow:Dynamic, ?endRow:Dynamic, ?keepExisting:Bool):Void;
	@:optional
	function setLastFocused(?record:Ext.data.IModel):Void;
	@:optional
	function setLocked(?locked:Bool):Void;
	@:optional
	function setSelectionMode(?selMode:String):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef IRowModel = {
	>Ext.selection.IModel,
	@:optional
	var enableKeyNav : Bool;
	@:optional
	var ignoreRightMouseSelection : Bool;
	@:optional
	function getCurrentPosition():Void;
	@:optional
	function selectNext(?keepExisting:Bool, ?suppressEvent:Bool):Bool;
	@:optional
	function selectPrevious(?keepExisting:Bool, ?suppressEvent:Bool):Bool;
};
typedef ITreeModel = {
	>Ext.selection.IRowModel,
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
};
