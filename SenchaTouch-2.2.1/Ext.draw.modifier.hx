typedef IAnimation = {
	>Ext.draw.modifier.IModifier,
	>Ext.mixin.IObservable,
	@:optional
	var customDuration : Dynamic;
	@:optional
	var customEasings : Dynamic;
	@:optional
	var duration : Float;
	@:optional
	var easing : Dynamic;
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
	function clearDurationOn(?attrs:Dynamic):Void;
	@:optional
	function clearEasingOn(?attrs:Dynamic):Void;
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
	function getCustomDuration():Dynamic;
	@:optional
	function getCustomEasings():Dynamic;
	@:optional
	function getDuration():Float;
	@:optional
	function getEasing():Dynamic;
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
	function popUp(?attributes:Dynamic, ?changes:Dynamic):Void;
	@:optional
	function prepareAttributes(?attr:Dynamic):Void;
	@:optional
	function pushDown(?attr:Dynamic, ?changes:Dynamic):Dynamic;
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
	function setCustomDuration(?customDuration:Dynamic):Void;
	@:optional
	function setCustomEasings(?customEasings:Dynamic):Void;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setDurationOn(?attrs:Dynamic, ?duration:Dynamic):Void;
	@:optional
	function setEasing(?easing:Dynamic):Void;
	@:optional
	function setEasingOn(?attrs:Dynamic, ?easing:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function stop():Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IHighlight = {
	>Ext.draw.modifier.IModifier,
	@:optional
	var enabled : Bool;
	@:optional
	var highlightStyle : Dynamic;
	@:optional
	function filterChanges(?attr:Dynamic, ?changes:Dynamic):Dynamic;
	@:optional
	function getEnabled():Bool;
	@:optional
	function getHighlightStyle():Dynamic;
	@:optional
	function popUp(?attributes:Dynamic, ?changes:Dynamic):Void;
	@:optional
	function prepareAttributes(?attr:Dynamic):Void;
	@:optional
	function pushDown(?attr:Dynamic, ?changes:Dynamic):Dynamic;
	@:optional
	function setEnabled(?enabled:Bool):Void;
	@:optional
	function setHighlightStyle(?highlightStyle:Dynamic):Void;
};
typedef IModifier = {
	>Ext.IBase,
	@:optional
	var next : Ext.draw.modifier.IModifier;
	@:optional
	var previous : Ext.draw.modifier.IModifier;
	@:optional
	var sprite : Ext.draw.sprite.ISprite;
	@:optional
	function getNext():Ext.draw.modifier.IModifier;
	@:optional
	function getPrevious():Ext.draw.modifier.IModifier;
	@:optional
	function getSprite():Ext.draw.sprite.ISprite;
	@:optional
	function popUp(?attributes:Dynamic, ?changes:Dynamic):Void;
	@:optional
	function prepareAttributes(?attr:Dynamic):Void;
	@:optional
	function pushDown(?attr:Dynamic, ?changes:Dynamic):Dynamic;
	@:optional
	function setNext(?next:Ext.draw.modifier.IModifier):Void;
	@:optional
	function setPrevious(?previous:Ext.draw.modifier.IModifier):Void;
	@:optional
	function setSprite(?sprite:Ext.draw.sprite.ISprite):Void;
};
typedef ITarget = {
	>Ext.draw.modifier.IModifier,
	@:optional
	function popUp(?attributes:Dynamic, ?changes:Dynamic):Void;
	@:optional
	function prepareAttributes(?attr:Dynamic):Void;
	@:optional
	function pushDown(?attr:Dynamic, ?changes:Dynamic):Dynamic;
};
