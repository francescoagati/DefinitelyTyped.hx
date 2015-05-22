typedef IArray = {
	>Ext.data.reader.IJson,
	@:optional
	var successProperty : String;
	@:optional
	var totalProperty : String;
	@:optional
	function getSuccessProperty():Dynamic;
	@:optional
	function getTotalProperty():Dynamic;
	@:optional
	function setSuccessProperty(?successProperty:Dynamic):Void;
	@:optional
	function setTotalProperty(?totalProperty:Dynamic):Void;
};
typedef IJson = {
	>Ext.data.reader.IReader,
	@:optional
	var record : String;
	@:optional
	var useSimpleAccessors : Bool;
	@:optional
	function getRecord():String;
	@:optional
	function getResponseData(?response:Dynamic):Dynamic;
	@:optional
	function getUseSimpleAccessors():Bool;
	@:optional
	function setRecord(?record:String):Void;
	@:optional
	function setUseSimpleAccessors(?useSimpleAccessors:Bool):Void;
};
typedef IReader = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var clientIdProperty : String;
	@:optional
	var idProperty : String;
	@:optional
	var implicitIncludes : Bool;
	@:optional
	var messageProperty : String;
	@:optional
	var root : String;
	@:optional
	var rootProperty : String;
	@:optional
	var successProperty : String;
	@:optional
	var totalProperty : String;
	@:optional
	var metaData : Dynamic;
	@:optional
	var rawData : Dynamic;
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
	function getClientIdProperty():String;
	@:optional
	function getIdProperty():String;
	@:optional
	function getImplicitIncludes():Bool;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getMessageProperty():String;
	@:optional
	function getModel():Dynamic;
	@:optional
	function getResponseData(?response:Dynamic):Dynamic;
	@:optional
	function getRootProperty():String;
	@:optional
	function getSuccessProperty():Dynamic;
	@:optional
	function getTotalProperty():Dynamic;
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
	function read(?response:Dynamic):Ext.data.IResultSet;
	@:optional
	function readRecords(?data:Dynamic):Ext.data.IResultSet;
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
	function setClientIdProperty(?clientIdProperty:String):Void;
	@:optional
	function setIdProperty(?idProperty:String):Void;
	@:optional
	function setImplicitIncludes(?implicitIncludes:Bool):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setMessageProperty(?messageProperty:String):Void;
	@:optional
	function setModel(?model:Dynamic):Void;
	@:optional
	function setRootProperty(?rootProperty:String):Void;
	@:optional
	function setSuccessProperty(?successProperty:String):Void;
	@:optional
	function setTotalProperty(?totalProperty:String):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IXml = {
	>Ext.data.reader.IReader,
	@:optional
	var record : String;
	@:optional
	function getData(?data:Dynamic):Dynamic;
	@:optional
	function getRecord():String;
	@:optional
	function getResponseData(?response:Dynamic):Dynamic;
	@:optional
	function readRecords(?doc:Dynamic):Ext.data.IResultSet;
	@:optional
	function setRecord(?record:String):Void;
};
