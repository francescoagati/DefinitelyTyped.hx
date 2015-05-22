typedef IEvent = {
	>Ext.IBase,
	@:optional
	function getData():Dynamic;
	@:optional
	function getName():String;
};
typedef IExceptionEvent = {
	>Ext.direct.IRemotingEvent,
};
typedef IJsonProvider = {
	>Ext.direct.IProvider,
	@:optional
	function createEvent(?response:Dynamic):Ext.direct.IEvent;
	@:optional
	function createEvents(?response:Dynamic):Array<Ext.direct.IEvent>;
};
typedef IManager = {
	>Ext.IBase,
	>Ext.util.IObservable,
};
extern class Manager {
	static var exceptions : Dynamic;
	static var hasListeners : Dynamic;
	static var isObservable : Bool;
	static var self : Ext.IClass;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addProvider(?provider:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function getProvider(?id:Dynamic):Void;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function parseMethod(?fn:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeProvider(?provider:Dynamic):Ext.direct.IProvider;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
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
	function isConnected():Void;
};
typedef IProvider = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var id : String;
	@:optional
	var relayedEvents : Array<String>;
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
	function connect():Void;
	@:optional
	function disconnect():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isConnected():Void;
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
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IRemotingEvent = {
	>Ext.direct.IEvent,
	@:optional
	function getTransaction():Ext.direct.ITransaction;
};
typedef IRemotingMethod = {
	>Ext.IBase,
	@:optional
	function getCallData(?args:Array<Dynamic>):Dynamic;
};
typedef IRemotingProvider = {
	>Ext.direct.IJsonProvider,
	@:optional
	var actions : Dynamic;
	@:optional
	var disableNestedActions : Bool;
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
	function isConnected():Void;
};
typedef ITransaction = {
	>Ext.IBase,
	@:optional
	var provider : Ext.direct.IProvider;
};
