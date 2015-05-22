typedef IEvent = {
	>Ext.IBase,
	@:optional
	var data : Dynamic;
	@:optional
	var name : String;
	@:optional
	function getCode():Dynamic;
	@:optional
	function getData():Dynamic;
	@:optional
	function getMessage():String;
	@:optional
	function getName():String;
	@:optional
	function getResult():Dynamic;
	@:optional
	function getStatus():Bool;
	@:optional
	function getTransaction():Dynamic;
	@:optional
	function getXhr():Dynamic;
	@:optional
	function setCode(?code:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setMessage(?message:String):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setResult(?result:Dynamic):Void;
	@:optional
	function setStatus(?status:Bool):Void;
	@:optional
	function setTransaction(?transaction:Dynamic):Void;
	@:optional
	function setXhr(?xhr:Dynamic):Void;
};
typedef IExceptionEvent = {
	>Ext.direct.IRemotingEvent,
	@:optional
	var name : String;
	@:optional
	function getError():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getStatus():Bool;
	@:optional
	function setError(?error:Dynamic):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setStatus(?status:Bool):Void;
};
typedef IJsonProvider = {
	>Ext.direct.IProvider,
	@:optional
	function createEvent(?response:Dynamic):Ext.direct.IEvent;
};
typedef IManager = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
};
extern class Manager {
	static var self : Ext.IClass;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addProvider(?provider:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function getProvider(?id:Dynamic):Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function parseMethod(?fn:Dynamic):Dynamic;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeProvider(?provider:Dynamic):Dynamic;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef IPollingProvider = {
	>Ext.direct.IJsonProvider,
	@:optional
	var baseParams : Dynamic;
	@:optional
	var interval : Float;
	@:optional
	var url : Dynamic;
	@:optional
	function connect():Void;
	@:optional
	function disconnect():Void;
	@:optional
	function getBaseParams():Dynamic;
	@:optional
	function getInterval():Float;
	@:optional
	function getUrl():Dynamic;
	@:optional
	function isConnected():Bool;
	@:optional
	function setBaseParams(?baseParams:Dynamic):Void;
	@:optional
	function setInterval(?interval:Float):Void;
	@:optional
	function setUrl(?url:Dynamic):Void;
};
typedef IProvider = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var id : String;
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
	function connect():Void;
	@:optional
	function destroy():Void;
	@:optional
	function disconnect():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getId():String;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isConnected():Bool;
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
	function setId(?id:String):Void;
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
typedef IRemotingEvent = {
	>Ext.direct.IEvent,
	@:optional
	var name : String;
	@:optional
	function getName():String;
	@:optional
	function getTid():Dynamic;
	@:optional
	function getTransaction():Ext.direct.ITransaction;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setTid(?tid:Dynamic):Void;
	@:optional
	function setTransaction(?transaction:Dynamic):Void;
};
typedef IRemotingMethod = {
	>Ext.IBase,
	@:optional
	function getCallData(?args:Array<Dynamic>):Dynamic;
	@:optional
	function getFormHandler():Dynamic;
	@:optional
	function getLen():Dynamic;
	@:optional
	function getName():Dynamic;
	@:optional
	function getOrdered():Bool;
	@:optional
	function getParams():Dynamic;
	@:optional
	function setFormHandler(?formHandler:Dynamic):Void;
	@:optional
	function setLen(?len:Dynamic):Void;
	@:optional
	function setName(?name:Dynamic):Void;
	@:optional
	function setOrdered(?ordered:Bool):Void;
	@:optional
	function setParams(?params:Dynamic):Void;
};
typedef IRemotingProvider = {
	>Ext.direct.IJsonProvider,
	@:optional
	var actions : Dynamic;
	@:optional
	var enableBuffer : Dynamic;
	@:optional
	var enableUrlEncode : String;
	@:optional
	var maxRetries : Float;
	@:optional
	var namespace : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	function connect():Void;
	@:optional
	function disconnect():Void;
	@:optional
	function getActions():Dynamic;
	@:optional
	function getEnableBuffer():Dynamic;
	@:optional
	function getEnableUrlEncode():String;
	@:optional
	function getMaxRetries():Float;
	@:optional
	function getNamespace():Dynamic;
	@:optional
	function getTimeout():Float;
	@:optional
	function getUrl():String;
	@:optional
	function isConnected():Bool;
	@:optional
	function setActions(?actions:Dynamic):Void;
	@:optional
	function setEnableBuffer(?enableBuffer:Dynamic):Void;
	@:optional
	function setEnableUrlEncode(?enableUrlEncode:String):Void;
	@:optional
	function setMaxRetries(?maxRetries:Float):Void;
	@:optional
	function setNamespace(?namespace:Dynamic):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function setUrl(?url:String):Void;
};
typedef ITransaction = {
	>Ext.IBase,
	@:optional
	function getAction():Dynamic;
	@:optional
	function getArgs():Dynamic;
	@:optional
	function getCallback():Dynamic;
	@:optional
	function getData():Dynamic;
	@:optional
	function getForm():Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getMethod():Dynamic;
	@:optional
	function getProvider():Dynamic;
	@:optional
	function getRetryCount():Float;
	@:optional
	function setAction(?action:Dynamic):Void;
	@:optional
	function setArgs(?args:Dynamic):Void;
	@:optional
	function setCallback(?callback:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setForm(?form:Dynamic):Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setMethod(?method:Dynamic):Void;
	@:optional
	function setProvider(?provider:Dynamic):Void;
	@:optional
	function setRetryCount(?retryCount:Float):Void;
};
