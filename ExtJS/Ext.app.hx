typedef IApplication = {
	>Ext.app.IController,
	@:optional
	var appFolder : String;
	@:optional
	var appProperty : String;
	@:optional
	var autoCreateViewport : Bool;
	@:optional
	var controllers : Dynamic;
	@:optional
	var enableQuickTips : Bool;
	@:optional
	var name : String;
	@:optional
	var namespaces : Dynamic;
	@:optional
	var paths : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	function getApplication():Ext.app.IApplication;
	@:optional
	function getController(?name:Dynamic):Ext.app.IController;
	@:optional
	function launch(?profile:String):Bool;
};
typedef IController = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var id : String;
	@:optional
	var models : Dynamic;
	@:optional
	var refs : Array<Dynamic>;
	@:optional
	var stores : Dynamic;
	@:optional
	var views : Dynamic;
	@:optional
	var application : Ext.app.IApplication;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addRef(?refs:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function control(?selectors:Dynamic, ?listeners:Dynamic):Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getApplication():Ext.app.IApplication;
	@:optional
	function getController(?id:String):Ext.app.IController;
	@:optional
	function getModel(?name:String):Ext.data.IModel;
	@:optional
	function getStore(?name:String):Ext.data.IStore;
	@:optional
	function getView(?name:String):Ext.IBase;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hasRef(?ref:Dynamic):Bool;
	@:optional
	function init(?application:Ext.app.IApplication):Void;
	@:optional
	function listen(?to:Dynamic):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function onLaunch(?application:Ext.app.IApplication):Void;
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
typedef IEventBus = {
	>Ext.IBase,
};
extern class EventBus {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function control(?selectors:Dynamic, ?controller:Ext.app.IController):Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function listen(?to:Dynamic, ?controller:Ext.app.IController):Void;
	static function statics():Ext.IClass;
	static function unlisten(?controllerId:String):Void;
}
typedef IEventDomain = {
	>Ext.IBase,
	@:optional
	var idProperty : String;
	@:optional
	var instances : Dynamic;
	@:optional
	function match(?target:Dynamic, ?selector:String):Bool;
	@:optional
	function monitor(?observable:Ext.IClass):Void;
};
