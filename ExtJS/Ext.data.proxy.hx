typedef IAjax = {
	>Ext.data.proxy.IServer,
	@:optional
	var binary : Bool;
	@:optional
	var headers : Dynamic;
	@:optional
	var actionMethods : Dynamic;
	@:optional
	function getMethod(?request:Ext.data.IRequest):String;
};
typedef IClient = {
	>Ext.data.proxy.IProxy,
	@:optional
	var isSynchronous : Bool;
	@:optional
	function clear():Void;
};
typedef IDirect = {
	>Ext.data.proxy.IServer,
	@:optional
	var api : Dynamic;
	@:optional
	var directFn : Dynamic;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var paramOrder : Dynamic;
	@:optional
	var paramsAsHash : Bool;
	@:optional
	function buildUrl():String;
	@:optional
	function doRequest(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IJsonP = {
	>Ext.data.proxy.IServer,
	@:optional
	var autoAppendParams : Bool;
	@:optional
	var callbackKey : String;
	@:optional
	var recordParam : String;
	@:optional
	function abort():Void;
	@:optional
	function buildUrl(?request:Ext.data.IRequest):String;
	@:optional
	function encodeRecords(?records:Array<Ext.data.IModel>):Array<Dynamic>;
};
typedef ILocalStorage = {
	>Ext.data.proxy.IWebStorage,
};
typedef IMemory = {
	>Ext.data.proxy.IClient,
	@:optional
	var data : Dynamic;
	@:optional
	var enablePaging : Bool;
	@:optional
	function clear():Void;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IProxy = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var batchActions : Bool;
	@:optional
	var batchOrder : String;
	@:optional
	var model : Dynamic;
	@:optional
	var reader : Dynamic;
	@:optional
	var writer : Dynamic;
	@:optional
	var isProxy : Bool;
	@:optional
	var isSynchronous : Bool;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function batch(?options:Dynamic):Ext.data.IBatch;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getModel():Ext.data.IModel;
	@:optional
	function getReader():Ext.data.reader.IReader;
	@:optional
	function getWriter():Ext.data.writer.IWriter;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
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
	function setModel(?model:Dynamic, ?setOnStore:Bool):Void;
	@:optional
	function setReader(?reader:Dynamic):Ext.data.reader.IReader;
	@:optional
	function setWriter(?writer:Dynamic):Ext.data.writer.IWriter;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IRest = {
	>Ext.data.proxy.IAjax,
	@:optional
	var appendId : Bool;
	@:optional
	var batchActions : Bool;
	@:optional
	var format : String;
	@:optional
	var actionMethods : Dynamic;
};
typedef IServer = {
	>Ext.data.proxy.IProxy,
	@:optional
	var api : Dynamic;
	@:optional
	var cacheString : String;
	@:optional
	var directionParam : String;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var filterParam : String;
	@:optional
	var groupDirectionParam : String;
	@:optional
	var groupParam : String;
	@:optional
	var idParam : String;
	@:optional
	var limitParam : String;
	@:optional
	var noCache : Bool;
	@:optional
	var pageParam : String;
	@:optional
	var simpleGroupMode : Bool;
	@:optional
	var simpleSortMode : Bool;
	@:optional
	var sortParam : String;
	@:optional
	var startParam : String;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	function afterRequest(?request:Ext.data.IRequest, ?success:Bool):Void;
	@:optional
	function buildRequest(?operation:Ext.data.IOperation):Ext.data.IRequest;
	@:optional
	function buildUrl(?request:Ext.data.IRequest):String;
	@:optional
	function create():Void;
	@:optional
	function destroy():Void;
	@:optional
	function doRequest(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function encodeFilters(?filters:Array<Ext.util.IFilter>):String;
	@:optional
	function encodeSorters(?sorters:Array<Ext.util.ISorter>):String;
	@:optional
	function read():Void;
	@:optional
	function setExtraParam(?name:String, ?value:Dynamic):Void;
	@:optional
	function update():Void;
};
typedef ISessionStorage = {
	>Ext.data.proxy.IWebStorage,
};
typedef IWebStorage = {
	>Ext.data.proxy.IClient,
	@:optional
	var id : String;
	@:optional
	var cache : Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function create(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function read(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel, ?id:String):Void;
	@:optional
	function update(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
};
