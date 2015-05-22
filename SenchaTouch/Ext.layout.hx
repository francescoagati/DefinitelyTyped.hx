typedef IAbstract = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
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
typedef IBox = {
	>Ext.layout.IDefault,
	@:optional
	var align : String;
	@:optional
	var pack : String;
	@:optional
	function getAlign():String;
	@:optional
	function getOrient():String;
	@:optional
	function getPack():String;
	@:optional
	function onItemInnerStateChange(?item:Dynamic, ?isInner:Dynamic):Void;
	@:optional
	function setAlign(?align:String):Void;
	@:optional
	function setOrient(?orient:String):Void;
	@:optional
	function setPack(?pack:String):Void;
};
typedef ICard = {
	>Ext.layout.IDefault,
	@:optional
	function destroy():Void;
	@:optional
	function onItemInnerStateChange(?item:Dynamic, ?isInner:Dynamic, ?destroying:Dynamic):Void;
};
typedef IDefault = {
	>Ext.layout.IAbstract,
	@:optional
	var animation : Ext.fx.layout.ICard;
	@:optional
	function destroy():Void;
	@:optional
	function getAnimation():Ext.fx.layout.ICard;
	@:optional
	function onItemInnerStateChange(?item:Ext.IComponent, ?isInner:Bool, ?destroying:Bool):Void;
	@:optional
	function setAnimation(?animation:Ext.fx.layout.ICard):Void;
};
typedef IFit = {
	>Ext.layout.IDefault,
	@:optional
	function onItemInnerStateChange(?item:Dynamic, ?isInner:Dynamic):Void;
};
typedef IFlexBox = {
	>Ext.layout.IBox,
	@:optional
	var align : String;
	@:optional
	function getAlign():String;
	@:optional
	function onItemInnerStateChange(?item:Dynamic, ?isInner:Dynamic):Void;
	@:optional
	function setAlign(?align:String):Void;
	@:optional
	function setItemFlex(?item:Ext.IComponent, ?flex:Float):Void;
};
typedef IFloat = {
	>Ext.layout.IDefault,
	@:optional
	function getDirection():String;
	@:optional
	function onItemInnerStateChange(?item:Dynamic, ?isInner:Dynamic):Void;
	@:optional
	function setDirection(?direction:String):Void;
};
typedef IHBox = {
	>Ext.layout.IFlexBox,
};
typedef IVBox = {
	>Ext.layout.IFlexBox,
	@:optional
	function getOrient():String;
	@:optional
	function setOrient(?orient:String):Void;
};
