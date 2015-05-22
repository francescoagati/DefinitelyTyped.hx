typedef ICookieProvider = {
	>Ext.state.IProvider,
	@:optional
	var domain : String;
	@:optional
	var expires : Dynamic;
	@:optional
	var path : String;
	@:optional
	var secure : Bool;
	@:optional
	function clear(?name:Dynamic):Void;
	@:optional
	function set(?name:Dynamic, ?value:Dynamic):Void;
};
typedef ILocalStorageProvider = {
	>Ext.state.IProvider,
	@:optional
	function clear(?name:Dynamic):Void;
	@:optional
	function set(?name:Dynamic, ?value:Dynamic):Void;
};
typedef IManager = {
	>Ext.IBase,
};
extern class Manager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear(?name:String):Void;
	static function get(?name:String, ?defaultValue:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function getProvider():Ext.state.IProvider;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function set(?name:String, ?value:Dynamic):Void;
	static function setProvider(?stateProvider:Ext.state.IProvider):Void;
	static function statics():Ext.IClass;
}
typedef IProvider = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var prefix : String;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clear(?name:String):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function decodeValue(?value:String):Dynamic;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function encodeValue(?value:Dynamic):String;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function get(?name:String, ?defaultValue:Dynamic):Dynamic;
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
	function set(?name:String, ?value:Dynamic):Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IStateful = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var saveDelay : Float;
	@:optional
	var stateEvents : Array<String>;
	@:optional
	var stateId : String;
	@:optional
	var stateful : Bool;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addStateEvents(?events:Dynamic):Void;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getState():Dynamic;
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
	function savePropToState(?propName:String, ?state:Dynamic, ?stateName:String):Bool;
	@:optional
	function savePropsToState(?propNames:Dynamic, ?state:Dynamic):Dynamic;
	@:optional
	function saveState():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
