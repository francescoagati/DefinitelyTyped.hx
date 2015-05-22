typedef IBufferedRenderer = {
	>Ext.IAbstractPlugin,
	@:optional
	var leadingBufferZone : Float;
	@:optional
	var numFromEdge : Float;
	@:optional
	var percentageFromEdge : Float;
	@:optional
	var scrollToLoadBuffer : Float;
	@:optional
	var synchronousRender : Bool;
	@:optional
	var trailingBufferZone : Float;
	@:optional
	var variableRowHeight : Bool;
	@:optional
	var position : Float;
	@:optional
	function destroy():Void;
	@:optional
	function init(?grid:Dynamic):Void;
	@:optional
	function scrollTo(?recordIdx:Float, ?doSelect:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef ICellEditing = {
	>Ext.grid.plugin.IEditing,
	@:optional
	function cancelEdit():Void;
	@:optional
	function completeEdit():Void;
	@:optional
	function startEdit(?record:Dynamic, ?columnHeader:Dynamic):Bool;
	@:optional
	function startEditByPosition(?position:Dynamic):Void;
};
typedef IDragDrop = {
	>Ext.IAbstractPlugin,
	@:optional
	var containerScroll : Dynamic;
	@:optional
	var ddGroup : String;
	@:optional
	var dragGroup : String;
	@:optional
	var dragText : String;
	@:optional
	var dropGroup : String;
	@:optional
	var enableDrag : Bool;
	@:optional
	var enableDrop : Bool;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function init(?view:Dynamic):Void;
};
typedef IEditing = {
	>Ext.IAbstractPlugin,
	>Ext.util.IObservable,
	@:optional
	var clicksToEdit : Float;
	@:optional
	var triggerEvent : String;
	@:optional
	var editing : Bool;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function cancelEdit():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function completeEdit():Void;
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
	function startEdit(?record:Dynamic, ?columnHeader:Dynamic):Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IHeaderReorderer = {
	>Ext.IAbstractPlugin,
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function init(?headerCt:Dynamic):Void;
};
typedef IHeaderResizer = {
	>Ext.IAbstractPlugin,
	@:optional
	var dynamic : Bool;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function getDynamic():Bool;
	@:optional
	function init(?headerCt:Dynamic):Void;
	@:optional
	function setDynamic(?dynamic:Bool):Void;
};
typedef IRowEditing = {
	>Ext.grid.plugin.IEditing,
	@:optional
	var autoCancel : Bool;
	@:optional
	var clicksToMoveEditor : Float;
	@:optional
	var errorSummary : Bool;
	@:optional
	function startEdit(?record:Ext.data.IModel, ?columnHeader:Ext.data.IModel):Bool;
};
typedef IRowExpander = {
	>Ext.IAbstractPlugin,
	@:optional
	var expandOnDblClick : Bool;
	@:optional
	var expandOnEnter : Bool;
	@:optional
	var selectRowOnExpand : Bool;
	@:optional
	function init(?grid:Dynamic):Void;
};
