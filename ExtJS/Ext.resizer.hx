typedef IBorderSplitter = {
	>Ext.resizer.ISplitter,
	@:optional
	var collapseTarget : Dynamic;
	@:optional
	function getTrackerConfig():Void;
};
typedef IBorderSplitterTracker = {
	>Ext.resizer.ISplitterTracker,
	@:optional
	function onBeforeStart(?e:Dynamic):Void;
};
typedef IHandle = {
	>Ext.IComponent,
	@:optional
	var region : Dynamic;
};
typedef IResizer = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var constrainTo : Dynamic;
	@:optional
	var dynamic : Bool;
	@:optional
	var handles : String;
	@:optional
	var height : Float;
	@:optional
	var heightIncrement : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var pinned : Bool;
	@:optional
	var preserveRatio : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var transparent : Bool;
	@:optional
	var width : Float;
	@:optional
	var widthIncrement : Float;
	@:optional
	var el : Ext.IElement;
	@:optional
	var originalTarget : Dynamic;
	@:optional
	var resizeTracker : Ext.resizer.IResizeTracker;
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
	function getEl():Ext.IElement;
	@:optional
	function getTarget():Dynamic;
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
	function resizeTo(?width:Float, ?height:Float):Void;
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
typedef IResizeTracker = {
	>Ext.dd.IDragTracker,
	@:optional
	var constrainTo : Dynamic;
	@:optional
	function createProxy(?target:Dynamic):Ext.IElement;
	@:optional
	function onBeforeStart(?e:Dynamic):Void;
	@:optional
	function onDrag(?e:Dynamic):Void;
	@:optional
	function onEnd(?e:Dynamic):Void;
	@:optional
	function onStart(?e:Dynamic):Void;
};
typedef ISplitter = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var collapseOnDblClick : Bool;
	@:optional
	var collapseTarget : Dynamic;
	@:optional
	var collapsedCls : String;
	@:optional
	var collapsible : Bool;
	@:optional
	var defaultSplitMax : Float;
	@:optional
	var defaultSplitMin : Float;
	@:optional
	var performCollapse : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var size : Float;
	@:optional
	var orientation : String;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getTrackerConfig():Void;
	@:optional
	function onRender():Void;
	@:optional
	function setSize():Ext.IComponent;
};
typedef ISplitterTracker = {
	>Ext.dd.IDragTracker,
	@:optional
	function onBeforeStart(?e:Dynamic):Void;
	@:optional
	function onDrag(?e:Dynamic):Void;
	@:optional
	function onEnd(?e:Dynamic):Void;
	@:optional
	function onStart(?e:Dynamic):Void;
};
