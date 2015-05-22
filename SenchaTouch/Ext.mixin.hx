typedef IBindable = {
	>Ext.mixin.IMixin,
};
typedef IFilterable = {
	>Ext.mixin.IMixin,
	@:optional
	var filterRoot : String;
	@:optional
	var filters : Array<Dynamic>;
	@:optional
	var currentSortFn : Dynamic;
	@:optional
	var dirtyFilterFn : Bool;
	@:optional
	var filtered : Bool;
	@:optional
	function addFilter(?filter:Dynamic):Void;
	@:optional
	function addFilters(?filters:Array<Dynamic>):Dynamic;
	@:optional
	function filter(?data:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function getFilterFn():Dynamic;
	@:optional
	function getFilterRoot():String;
	@:optional
	function getFilters():Array<Dynamic>;
	@:optional
	function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	@:optional
	function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function removeFilters(?filters:Array<Dynamic>):Void;
	@:optional
	function setFilterRoot(?filterRoot:String):Void;
	@:optional
	function setFilters(?filters:Array<Dynamic>):Void;
};
typedef IIdentifiable = {
	>Ext.IBase,
	@:optional
	function getId():Dynamic;
};
typedef IMixin = {
	>Ext.IBase,
};
typedef IObservable = {
	>Ext.mixin.IMixin,
	>Ext.mixin.IIdentifiable,
	@:optional
	var bubbleEvents : Dynamic;
	@:optional
	var listeners : Dynamic;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IProgressable = {
	>Ext.mixin.IMixin,
	@:optional
	var dynamic : Bool;
	@:optional
	var maxProgressInput : Float;
	@:optional
	var maxProgressOutput : Float;
	@:optional
	var minProgressInput : Float;
	@:optional
	var minProgressOutput : Float;
	@:optional
	var state : String;
	@:optional
	function getDynamic():Bool;
	@:optional
	function getMaxProgressInput():Float;
	@:optional
	function getMaxProgressOutput():Float;
	@:optional
	function getMinProgressInput():Float;
	@:optional
	function getMinProgressOutput():Float;
	@:optional
	function getState():String;
	@:optional
	function setDynamic(?dynamic:Bool):Void;
	@:optional
	function setMaxProgressInput(?maxProgressInput:Float):Void;
	@:optional
	function setMaxProgressOutput(?maxProgressOutput:Float):Void;
	@:optional
	function setMinProgressInput(?minProgressInput:Float):Void;
	@:optional
	function setMinProgressOutput(?minProgressOutput:Float):Void;
	@:optional
	function setState(?state:String):Void;
};
typedef ISelectable = {
	>Ext.mixin.IMixin,
	@:optional
	var allowDeselect : Bool;
	@:optional
	var deselectOnContainerClick : Bool;
	@:optional
	var disableSelection : Bool;
	@:optional
	var locked : Bool;
	@:optional
	var mode : String;
	@:optional
	function clearSelections():Void;
	@:optional
	function deselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function deselectAll(?supress:Dynamic):Void;
	@:optional
	function doDeselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function doSelect(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function getAllowDeselect():Bool;
	@:optional
	function getCount():Float;
	@:optional
	function getDeselectOnContainerClick():Bool;
	@:optional
	function getDisableSelection():Bool;
	@:optional
	function getLastSelected():Array<Dynamic>;
	@:optional
	function getMode():String;
	@:optional
	function getSelection():Array<Dynamic>;
	@:optional
	function getSelectionCount():Float;
	@:optional
	function getSelectionMode():String;
	@:optional
	function hasSelection():Bool;
	@:optional
	function isLocked():Bool;
	@:optional
	function isSelected(?record:Dynamic):Bool;
	@:optional
	function select(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function selectAll(?silent:Bool):Void;
	@:optional
	function selectRange(?startRecord:Float, ?endRecord:Float, ?keepExisting:Bool):Void;
	@:optional
	function setAllowDeselect(?allowDeselect:Bool):Void;
	@:optional
	function setDeselectOnContainerClick(?deselectOnContainerClick:Bool):Void;
	@:optional
	function setDisableSelection(?disableSelection:Bool):Void;
	@:optional
	function setLastFocused():Void;
	@:optional
	function setMode(?mode:String):Void;
	@:optional
	function updateLastFocused(?newRecord:Ext.data.IRecord, ?oldRecord:Ext.data.IRecord):Void;
};
typedef ISortable = {
	>Ext.mixin.IMixin,
	@:optional
	var defaultSortDirection : String;
	@:optional
	var sortRoot : String;
	@:optional
	var sorters : Array<Dynamic>;
	@:optional
	var currentSortFn : Dynamic;
	@:optional
	var dirtySortFn : Bool;
	@:optional
	var sorted : Bool;
	@:optional
	function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	@:optional
	function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	@:optional
	function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	@:optional
	function getDefaultSortDirection():String;
	@:optional
	function getSortFn():Dynamic;
	@:optional
	function getSortRoot():String;
	@:optional
	function getSorters():Array<Dynamic>;
	@:optional
	function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	@:optional
	function insertSorters(?index:Float, ?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	@:optional
	function removeSorter(?sorter:Dynamic):Void;
	@:optional
	function removeSorters(?sorters:Array<Dynamic>):Void;
	@:optional
	function setDefaultSortDirection(?defaultSortDirection:String):Void;
	@:optional
	function setSortRoot(?sortRoot:String):Void;
	@:optional
	function setSorters(?sorters:Array<Dynamic>):Void;
	@:optional
	function sort(?data:Array<Dynamic>):Array<Dynamic>;
};
typedef ITemplatable = {
	>Ext.mixin.IMixin,
};
typedef ITraversable = {
	>Ext.mixin.IMixin,
};
