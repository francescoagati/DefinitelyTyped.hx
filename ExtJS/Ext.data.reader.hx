typedef IArray = {
	>Ext.data.reader.IJson,
	@:optional
	var successProperty : String;
	@:optional
	var totalProperty : String;
};
typedef IJson = {
	>Ext.data.reader.IReader,
	@:optional
	var metaProperty : String;
	@:optional
	var record : String;
	@:optional
	var root : String;
	@:optional
	var useSimpleAccessors : Bool;
	@:optional
	var jsonData : Dynamic;
	@:optional
	function getResponseData(?response:Dynamic):Ext.data.IResultSet;
	@:optional
	function readRecords(?data:Dynamic):Ext.data.IResultSet;
};
typedef IReader = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var idProperty : String;
	@:optional
	var implicitIncludes : Bool;
	@:optional
	var messageProperty : String;
	@:optional
	var readRecordsOnFailure : Bool;
	@:optional
	var root : String;
	@:optional
	var successProperty : String;
	@:optional
	var totalProperty : String;
	@:optional
	var metaData : Dynamic;
	@:optional
	var rawData : Dynamic;
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
	function getResponseData(?response:Dynamic):Ext.data.IResultSet;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function read(?response:Dynamic):Ext.data.IResultSet;
	@:optional
	function readRecords(?data:Dynamic):Ext.data.IResultSet;
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
typedef IXml = {
	>Ext.data.reader.IReader,
	@:optional
	var namespace : String;
	@:optional
	var record : String;
	@:optional
	var xmlData : Dynamic;
	@:optional
	function getData(?data:Dynamic):Dynamic;
	@:optional
	function getResponseData(?response:Dynamic):Ext.data.IResultSet;
	@:optional
	function readRecords(?doc:Dynamic):Ext.data.IResultSet;
};
