typedef IMenu = {
	>Ext.layout.container.boxoverflow.INone,
	@:optional
	var triggerButtonCls : String;
	@:optional
	var menuItems : Array<Dynamic>;
	@:optional
	var noItemsMenuText : String;
};
typedef INone = {
	>Ext.IBase,
};
typedef IScroller = {
	>Ext.layout.container.boxoverflow.INone,
	>Ext.util.IObservable,
	@:optional
	var afterCtCls : String;
	@:optional
	var afterScrollerCls : String;
	@:optional
	var animateScroll : Bool;
	@:optional
	var beforeCtCls : String;
	@:optional
	var beforeScrollerCls : String;
	@:optional
	var scrollDuration : Float;
	@:optional
	var scrollIncrement : Float;
	@:optional
	var scrollRepeatInterval : Float;
	@:optional
	var scrollerCls : String;
	@:optional
	var wheelIncrement : Float;
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
	function getScrollPosition():Float;
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
	function scrollToItem(?item:Dynamic, ?animate:Bool):Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
