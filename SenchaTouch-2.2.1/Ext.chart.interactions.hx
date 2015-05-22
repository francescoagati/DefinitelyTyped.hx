typedef IAbstract = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var chart : Ext.chart.IAbstractChart;
	@:optional
	var enabled : Bool;
	@:optional
	var gesture : String;
	@:optional
	var throttleGap : Float;
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
	function getChart():Ext.chart.IAbstractChart;
	@:optional
	function getEnabled():Bool;
	@:optional
	function getGesture():String;
	@:optional
	function getItemForEvent(?e:Event):Dynamic;
	@:optional
	function getItemsForEvent(?e:Event):Array<Dynamic>;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function initialize():Void;
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
	function onGesture():Void;
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
	function setChart(?chart:Ext.chart.IAbstractChart):Void;
	@:optional
	function setEnabled(?enabled:Bool):Void;
	@:optional
	function setGesture(?gesture:String):Void;
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
typedef ICrossZoom = {
	>Ext.chart.interactions.IAbstract,
	@:optional
	var axes : Dynamic;
	@:optional
	var gesture : String;
	@:optional
	function getAxes():Dynamic;
	@:optional
	function getGesture():String;
	@:optional
	function getUndoButton():Dynamic;
	@:optional
	function onGesture(?e:Dynamic):Void;
	@:optional
	function setAxes(?axes:Dynamic):Void;
	@:optional
	function setGesture(?gesture:String):Void;
	@:optional
	function setUndoButton(?undoButton:Dynamic):Void;
};
typedef IItemHighlight = {
	>Ext.chart.interactions.IAbstract,
	@:optional
	var gesture : String;
	@:optional
	function getGesture():String;
	@:optional
	function onGesture(?series:Dynamic, ?item:Dynamic, ?e:Dynamic):Void;
	@:optional
	function setGesture(?gesture:String):Void;
};
typedef IItemInfo = {
	>Ext.chart.interactions.IAbstract,
	@:optional
	var gesture : String;
	@:optional
	var panel : Dynamic;
	@:optional
	function getGesture():String;
	@:optional
	function getPanel():Dynamic;
	@:optional
	function onGesture(?series:Dynamic, ?item:Dynamic):Void;
	@:optional
	function setGesture(?gesture:String):Void;
	@:optional
	function setPanel(?panel:Dynamic):Void;
};
typedef IPanZoom = {
	>Ext.chart.interactions.IAbstract,
	@:optional
	var axes : Dynamic;
	@:optional
	var overflowArrowOptions : Dynamic;
	@:optional
	var showOverflowArrows : Bool;
	@:optional
	function destroy():Void;
	@:optional
	function getAxes():Dynamic;
	@:optional
	function getHideLabelInGesture():Bool;
	@:optional
	function getMaxZoom():Dynamic;
	@:optional
	function getMinZoom():Dynamic;
	@:optional
	function getModeToggleButton():Dynamic;
	@:optional
	function getPanGesture():String;
	@:optional
	function getShowOverflowArrows():Bool;
	@:optional
	function getZoomOnPanGesture():Bool;
	@:optional
	function onGesture(?e:Dynamic):Void;
	@:optional
	function setAxes(?axes:Dynamic):Void;
	@:optional
	function setHideLabelInGesture(?hideLabelInGesture:Bool):Void;
	@:optional
	function setMaxZoom(?maxZoom:Dynamic):Void;
	@:optional
	function setMinZoom(?minZoom:Dynamic):Void;
	@:optional
	function setModeToggleButton(?modeToggleButton:Dynamic):Void;
	@:optional
	function setPanGesture(?panGesture:String):Void;
	@:optional
	function setShowOverflowArrows(?showOverflowArrows:Bool):Void;
	@:optional
	function setZoomOnPanGesture(?zoomOnPanGesture:Bool):Void;
};
typedef IRotate = {
	>Ext.chart.interactions.IAbstract,
	@:optional
	var gesture : String;
	@:optional
	function getGesture():String;
	@:optional
	function onGesture(?e:Dynamic):Void;
	@:optional
	function setGesture(?gesture:String):Void;
};
typedef IRotatePie3D = {
	>Ext.chart.interactions.IRotate,
};
