typedef IAbstractStore = {
	>Ext.IBase,
	>Ext.util.IObservable,
	>Ext.util.ISortable,
	@:optional
	var autoLoad : Dynamic;
	@:optional
	var autoSync : Bool;
	@:optional
	var batchUpdateMode : String;
	@:optional
	var fields : Array<Dynamic>;
	@:optional
	var filterOnLoad : Bool;
	@:optional
	var filters : Dynamic;
	@:optional
	var model : String;
	@:optional
	var proxy : Dynamic;
	@:optional
	var remoteFilter : Bool;
	@:optional
	var remoteSort : Bool;
	@:optional
	var sortOnLoad : Bool;
	@:optional
	var statefulFilters : Bool;
	@:optional
	var storeId : String;
	@:optional
	var defaultProxyType : String;
	@:optional
	var isDestroyed : Bool;
	@:optional
	var isStore : Bool;
	@:optional
	var removed : Array<Ext.data.IModel>;
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
	function generateComparator():Void;
	@:optional
	function getFirstSorter():Ext.util.ISorter;
	@:optional
	function getModifiedRecords():Array<Ext.data.IModel>;
	@:optional
	function getNewRecords():Array<Ext.data.IModel>;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
	@:optional
	function getRemovedRecords():Array<Ext.data.IModel>;
	@:optional
	function getUpdatedRecords():Array<Ext.data.IModel>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function initSortable():Void;
	@:optional
	function isLoading():Bool;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function reload(?options:Dynamic):Void;
	@:optional
	function removeAll():Void;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeAutoSync():Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function save():Void;
	@:optional
	function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
	@:optional
	function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	@:optional
	function suspendAutoSync():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function sync(?options:Dynamic):Ext.data.IStore;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
extern class AbstractStore {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create(?store:Dynamic):Ext.data.IAbstractStore;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IArrayStore = {
	>Ext.data.IStore,
	@:optional
	function loadData(?data:Dynamic, ?append:Dynamic):Void;
};
typedef IAssociation = {
	>Ext.IBase,
	@:optional
	var associatedModel : String;
	@:optional
	var associationKey : String;
	@:optional
	var model : String;
	@:optional
	var ownerModel : String;
	@:optional
	var primaryKey : String;
	@:optional
	var reader : Ext.data.reader.IReader;
	@:optional
	var associatedName : String;
	@:optional
	var ownerName : String;
	@:optional
	function getReader():Ext.data.reader.IReader;
};
typedef IBelongsToAssociation = {
	>Ext.data.association.IAssociation,
	@:optional
	var foreignKey : String;
	@:optional
	var getterName : String;
	@:optional
	var setterName : String;
	@:optional
	var type : String;
};
typedef IHasManyAssociation = {
	>Ext.data.association.IAssociation,
	@:optional
	var autoLoad : Bool;
	@:optional
	var filterProperty : String;
	@:optional
	var foreignKey : String;
	@:optional
	var name : String;
	@:optional
	var storeConfig : Dynamic;
	@:optional
	var type : String;
};
typedef IHasOneAssociation = {
	>Ext.data.association.IAssociation,
	@:optional
	var foreignKey : String;
	@:optional
	var getterName : String;
	@:optional
	var setterName : String;
	@:optional
	var type : String;
};
typedef IBatch = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var autoStart : Bool;
	@:optional
	var pauseOnException : Bool;
	@:optional
	var current : Float;
	@:optional
	var exceptions : Array<Ext.data.IOperation>;
	@:optional
	var hasException : Bool;
	@:optional
	var isComplete : Bool;
	@:optional
	var isRunning : Bool;
	@:optional
	var operations : Array<Ext.data.IOperation>;
	@:optional
	var total : Float;
	@:optional
	function add(?operation:Dynamic):Ext.data.IBatch;
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
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function pause():Ext.data.IBatch;
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
	function retry():Ext.data.IBatch;
	@:optional
	function runOperation(?index:Float):Ext.data.IBatch;
	@:optional
	function start(?index:Dynamic):Ext.data.IBatch;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IBufferStore = {
	>Ext.data.IStore,
	@:optional
	var filterOnLoad : Bool;
	@:optional
	var sortOnLoad : Bool;
};
typedef IConnection = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var autoAbort : Bool;
	@:optional
	var binary : Bool;
	@:optional
	var cors : Bool;
	@:optional
	var defaultHeaders : Dynamic;
	@:optional
	var disableCaching : Bool;
	@:optional
	var disableCachingParam : String;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var method : String;
	@:optional
	var timeout : Float;
	@:optional
	var withCredentials : Bool;
	@:optional
	function abort(?request:Dynamic):Void;
	@:optional
	function abortAll():Void;
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
	function hasListener(?eventName:String):Bool;
	@:optional
	function isLoading(?request:Dynamic):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function parseStatus(?status:Float):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function request(?options:Dynamic):Dynamic;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function setOptions(?options:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function upload(?form:Dynamic, ?url:String, ?params:String, ?options:Dynamic):Void;
};
typedef IDirectStore = {
	>Ext.data.IStore,
};
typedef IErrors = {
	>Ext.util.IMixedCollection,
	@:optional
	function getByField(?fieldName:String):Array<Dynamic>;
	@:optional
	function isValid():Bool;
};
typedef IField = {
	>Ext.IBase,
	@:optional
	var convert : Dynamic;
	@:optional
	var dateFormat : String;
	@:optional
	var dateReadFormat : String;
	@:optional
	var dateWriteFormat : String;
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var mapping : Dynamic;
	@:optional
	var name : String;
	@:optional
	var persist : Bool;
	@:optional
	var serialize : Dynamic;
	@:optional
	var sortDir : String;
	@:optional
	var sortType : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var useNull : Bool;
};
typedef IGroup = {
	>Ext.util.IObservable,
};
typedef IIdGenerator = {
	>Ext.IBase,
	@:optional
	var id : String;
	@:optional
	var isGenerator : Bool;
	@:optional
	function generate():String;
};
extern class IdGenerator {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function get(?config:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IJsonP = {
	>Ext.IBase,
};
extern class JsonP {
	static var callbackKey : String;
	static var disableCaching : Bool;
	static var disableCachingParam : String;
	static var self : Ext.IClass;
	static var timeout : Float;
	static function abort(?request:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function request(?options:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IJsonPStore = {
	>Ext.data.IStore,
};
typedef IJsonStore = {
	>Ext.data.IStore,
};
typedef IModel = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var associations : Array<Dynamic>;
	@:optional
	var belongsTo : Dynamic;
	@:optional
	var clientIdProperty : String;
	@:optional
	var defaultProxyType : String;
	@:optional
	var fields : Dynamic;
	@:optional
	var hasMany : Dynamic;
	@:optional
	var idProperty : Dynamic;
	@:optional
	var idgen : Dynamic;
	@:optional
	var persistenceProperty : String;
	@:optional
	var proxy : Dynamic;
	@:optional
	var validations : Array<Dynamic>;
	@:optional
	var dirty : Bool;
	@:optional
	var editing : Bool;
	@:optional
	var isModel : Bool;
	@:optional
	var modified : Dynamic;
	@:optional
	var phantom : Bool;
	@:optional
	var raw : Dynamic;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var stores : Array<Ext.data.IStore>;
	@:optional
	var COMMIT : String;
	@:optional
	var EDIT : String;
	@:optional
	var REJECT : String;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function beginEdit():Void;
	@:optional
	function cancelEdit():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function commit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function copy(?id:String):Ext.data.IModel;
	@:optional
	function destroy(?options:Dynamic):Ext.data.IModel;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function endEdit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function get(?fieldName:String):Dynamic;
	@:optional
	function getAssociatedData():Dynamic;
	@:optional
	function getChanges():Dynamic;
	@:optional
	function getData(?includeAssociated:Bool):Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isModified(?fieldName:String):Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function join(?store:Ext.data.IStore):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function reject(?silent:Bool):Void;
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
	function save(?options:Dynamic):Ext.data.IModel;
	@:optional
	function set(?fieldName:Dynamic, ?newValue:Dynamic):Array<String>;
	@:optional
	function setDirty():Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function unjoin(?store:Ext.data.IStore):Void;
	@:optional
	function validate():Ext.data.IErrors;
};
extern class Model {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getFields():Array<Ext.data.IField>;
	static function getName():String;
	static function getProxy():Ext.data.proxy.IProxy;
	static function id(?rec:Ext.data.IModel):String;
	static function implement():Void;
	static function load(?id:Dynamic, ?config:Dynamic):Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function setFields(?fields:Dynamic, ?idProperty:Dynamic, ?clientIdProperty:Dynamic):Void;
	static function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
}
typedef IRecord = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var associations : Array<Dynamic>;
	@:optional
	var belongsTo : Dynamic;
	@:optional
	var clientIdProperty : String;
	@:optional
	var defaultProxyType : String;
	@:optional
	var fields : Dynamic;
	@:optional
	var hasMany : Dynamic;
	@:optional
	var idProperty : Dynamic;
	@:optional
	var idgen : Dynamic;
	@:optional
	var persistenceProperty : String;
	@:optional
	var proxy : Dynamic;
	@:optional
	var validations : Array<Dynamic>;
	@:optional
	var dirty : Bool;
	@:optional
	var editing : Bool;
	@:optional
	var isModel : Bool;
	@:optional
	var modified : Dynamic;
	@:optional
	var phantom : Bool;
	@:optional
	var raw : Dynamic;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var stores : Array<Ext.data.IStore>;
	@:optional
	var COMMIT : String;
	@:optional
	var EDIT : String;
	@:optional
	var REJECT : String;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function beginEdit():Void;
	@:optional
	function cancelEdit():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function commit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function copy(?id:String):Ext.data.IModel;
	@:optional
	function destroy(?options:Dynamic):Ext.data.IModel;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function endEdit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function get(?fieldName:String):Dynamic;
	@:optional
	function getAssociatedData():Dynamic;
	@:optional
	function getChanges():Dynamic;
	@:optional
	function getData(?includeAssociated:Bool):Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isModified(?fieldName:String):Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function join(?store:Ext.data.IStore):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function reject(?silent:Bool):Void;
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
	function save(?options:Dynamic):Ext.data.IModel;
	@:optional
	function set(?fieldName:Dynamic, ?newValue:Dynamic):Array<String>;
	@:optional
	function setDirty():Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function unjoin(?store:Ext.data.IStore):Void;
	@:optional
	function validate():Ext.data.IErrors;
};
extern class Record {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getFields():Array<Ext.data.IField>;
	static function getName():String;
	static function getProxy():Ext.data.proxy.IProxy;
	static function id(?rec:Ext.data.IModel):String;
	static function implement():Void;
	static function load(?id:Dynamic, ?config:Dynamic):Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function setFields(?fields:Dynamic, ?idProperty:Dynamic, ?clientIdProperty:Dynamic):Void;
	static function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
}
typedef INodeInterface = {
	>Ext.IBase,
	@:optional
	var allowDrag : Bool;
	@:optional
	var allowDrop : Bool;
	@:optional
	var checked : Bool;
	@:optional
	var children : Array<Ext.data.INodeInterface>;
	@:optional
	var cls : String;
	@:optional
	var depth : Float;
	@:optional
	var expandable : Bool;
	@:optional
	var expanded : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefTarget : String;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var index : Float;
	@:optional
	var isFirst : Bool;
	@:optional
	var isLast : Bool;
	@:optional
	var leaf : Bool;
	@:optional
	var loaded : Bool;
	@:optional
	var loading : Bool;
	@:optional
	var parentId : String;
	@:optional
	var qshowDelay : Float;
	@:optional
	var qtip : String;
	@:optional
	var qtitle : String;
	@:optional
	var root : Bool;
	@:optional
	var text : String;
	@:optional
	var childNodes : Array<Ext.data.INodeInterface>;
	@:optional
	var firstChild : Ext.data.INodeInterface;
	@:optional
	var isNode : Bool;
	@:optional
	var lastChild : Ext.data.INodeInterface;
	@:optional
	var nextSibling : Ext.data.INodeInterface;
	@:optional
	var parentNode : Ext.data.INodeInterface;
	@:optional
	var previousSibling : Ext.data.INodeInterface;
	@:optional
	function appendChild(?node:Dynamic, ?suppressEvents:Bool, ?commit:Bool):Ext.data.INodeInterface;
	@:optional
	function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function cascadeBy(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function collapse(?recursive:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function collapseChildren(?recursive:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function contains(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function copy(?id:String, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function createNode(?node:Dynamic):Ext.data.INodeInterface;
	@:optional
	function destroy(?silent:Dynamic):Void;
	@:optional
	function eachChild(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function expand(?recursive:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandChildren(?recursive:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function findChild(?attribute:String, ?value:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function findChildBy(?fn:Dynamic, ?scope:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function getChildAt(?index:Float):Ext.data.INodeInterface;
	@:optional
	function getDepth():Float;
	@:optional
	function getOwnerTree():Ext.tree.IPanel;
	@:optional
	function getPath(?field:String, ?separator:String):String;
	@:optional
	function hasChildNodes():Bool;
	@:optional
	function indexOf(?node:Ext.data.INodeInterface):Float;
	@:optional
	function indexOfId(?id:String):Float;
	@:optional
	function insertBefore(?node:Ext.data.INodeInterface, ?refNode:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function insertChild(?index:Float, ?node:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function isAncestor(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function isExpandable():Bool;
	@:optional
	function isExpanded():Bool;
	@:optional
	function isLeaf():Bool;
	@:optional
	function isLoaded():Bool;
	@:optional
	function isLoading():Bool;
	@:optional
	function isRoot():Bool;
	@:optional
	function isVisible():Bool;
	@:optional
	function remove(?destroy:Bool):Ext.data.INodeInterface;
	@:optional
	function removeAll(?destroy:Bool):Ext.data.INodeInterface;
	@:optional
	function removeChild(?node:Ext.data.INodeInterface, ?destroy:Bool):Ext.data.INodeInterface;
	@:optional
	function replaceChild(?newChild:Ext.data.INodeInterface, ?oldChild:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function serialize():Void;
	@:optional
	function sort(?fn:Dynamic, ?recursive:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function updateInfo(?commit:Bool, ?info:Dynamic):Void;
};
extern class NodeInterface {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function decorate(?modelClass:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef INodeStore = {
	>Ext.data.IStore,
	@:optional
	var node : Ext.data.IModel;
	@:optional
	var recursive : Bool;
	@:optional
	var rootVisible : Bool;
	@:optional
	var treeStore : Ext.data.ITreeStore;
	@:optional
	var isExpandingOrCollapsing : Float;
	@:optional
	var isNodeStore : Bool;
	@:optional
	function getTotalCount():Float;
};
typedef IOperation = {
	>Ext.IBase,
	@:optional
	var action : String;
	@:optional
	var batch : Ext.data.IBatch;
	@:optional
	var callback : Dynamic;
	@:optional
	var filters : Array<Ext.util.IFilter>;
	@:optional
	var groupers : Array<Ext.util.IGrouper>;
	@:optional
	var limit : Float;
	@:optional
	var params : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var sorters : Array<Ext.util.ISorter>;
	@:optional
	var start : Float;
	@:optional
	var synchronous : Bool;
	@:optional
	var actionCommitRecordsRe : js.RegExp;
	@:optional
	var actionSkipSyncRe : js.RegExp;
	@:optional
	function allowWrite():Bool;
	@:optional
	function commitRecords(?serverRecords:Array<Ext.data.IModel>):Void;
	@:optional
	function getError():Dynamic;
	@:optional
	function getRecords():Array<Ext.data.IModel>;
	@:optional
	function getResultSet():Ext.data.IResultSet;
	@:optional
	function hasException():Bool;
	@:optional
	function isComplete():Bool;
	@:optional
	function isRunning():Bool;
	@:optional
	function isStarted():Bool;
	@:optional
	function setCompleted():Void;
	@:optional
	function setException(?error:Dynamic):Void;
	@:optional
	function setStarted():Void;
	@:optional
	function setSuccessful():Void;
	@:optional
	function wasSuccessful():Bool;
};
typedef IPageMap = {
	>Ext.util.ILruCache,
	@:optional
	function clear(?initial:Dynamic):Ext.util.IHashMap;
	@:optional
	function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function findIndexBy(?fn:Dynamic, ?scope:Dynamic):Float;
	@:optional
	function getCount():Float;
	@:optional
	function remove():Bool;
};
typedef IHttpProxy = {
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
typedef IAjaxProxy = {
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
typedef IClientProxy = {
	>Ext.data.proxy.IProxy,
	@:optional
	var isSynchronous : Bool;
	@:optional
	function clear():Void;
};
typedef IDirectProxy = {
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
typedef IScriptTagProxy = {
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
typedef ILocalStorageProxy = {
	>Ext.data.proxy.IWebStorage,
};
typedef IMemoryProxy = {
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
typedef IDataProxy = {
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
typedef IRestProxy = {
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
typedef IServerProxy = {
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
typedef ISessionStorageProxy = {
	>Ext.data.proxy.IWebStorage,
};
typedef IWebStorageProxy = {
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
typedef IArrayReader = {
	>Ext.data.reader.IJson,
	@:optional
	var successProperty : String;
	@:optional
	var totalProperty : String;
};
typedef IJsonReader = {
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
typedef IDataReader = {
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
typedef IXmlReader = {
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
typedef IRequest = {
	>Ext.IBase,
	@:optional
	var action : String;
	@:optional
	var method : String;
	@:optional
	var params : Dynamic;
	@:optional
	var url : String;
};
typedef IResultSet = {
	>Ext.IBase,
	@:optional
	var count : Float;
	@:optional
	var loaded : Bool;
	@:optional
	var records : Array<Ext.data.IModel>;
	@:optional
	var success : Bool;
	@:optional
	var total : Float;
	@:optional
	var totalRecords : Float;
};
typedef ISequentialIdGenerator = {
	>Ext.data.IIdGenerator,
	@:optional
	var prefix : String;
	@:optional
	var seed : Float;
	@:optional
	function generate():String;
};
typedef ISortTypes = {
	>Ext.IBase,
};
extern class SortTypes {
	static var self : Ext.IClass;
	static var stripTagsRE : js.RegExp;
	static function asDate(?s:Dynamic):Float;
	static function asFloat(?s:Dynamic):Float;
	static function asInt(?s:Dynamic):Float;
	static function asText(?s:Dynamic):String;
	static function asUCString(?s:Dynamic):String;
	static function asUCText(?s:Dynamic):String;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function none(?s:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IStore = {
	>Ext.data.IAbstractStore,
	@:optional
	var autoDestroy : Bool;
	@:optional
	var buffered : Bool;
	@:optional
	var clearOnPageLoad : Bool;
	@:optional
	var clearRemovedOnLoad : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var groupDir : String;
	@:optional
	var groupField : String;
	@:optional
	var groupers : Ext.util.IMixedCollection;
	@:optional
	var leadingBufferZone : Float;
	@:optional
	var pageSize : Float;
	@:optional
	var proxy : Dynamic;
	@:optional
	var purgePageCount : Float;
	@:optional
	var remoteFilter : Bool;
	@:optional
	var remoteGroup : Bool;
	@:optional
	var remoteSort : Bool;
	@:optional
	var sortOnFilter : Bool;
	@:optional
	var trailingBufferZone : Float;
	@:optional
	var currentPage : Float;
	@:optional
	var snapshot : Ext.util.IMixedCollection;
	@:optional
	function add(?model:Dynamic):Array<Ext.data.IModel>;
	@:optional
	function addFilter(?filters:Dynamic, ?applyFilters:Bool):Void;
	@:optional
	function addSorted(?record:Ext.data.IRecord):Void;
	@:optional
	function aggregate(?fn:Dynamic, ?scope:Dynamic, ?grouped:Bool, ?args:Array<Dynamic>):Dynamic;
	@:optional
	function average(?field:String, ?grouped:Bool):Dynamic;
	@:optional
	function clearFilter(?suppressEvent:Bool):Void;
	@:optional
	function clearGrouping():Void;
	@:optional
	function collect(?dataIndex:String, ?allowNull:Bool, ?bypassFilter:Bool):Array<Dynamic>;
	@:optional
	function commitChanges():Void;
	@:optional
	function count(?grouped:Bool):Float;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function filter(?filters:Dynamic, ?value:String):Void;
	@:optional
	function filterBy(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function find(?fieldName:String, ?value:Dynamic, ?startIndex:Float, ?anyMatch:Bool, ?caseSensitive:Bool, ?exactMatch:Bool):Float;
	@:optional
	function findBy(?fn:Dynamic, ?scope:Dynamic, ?startIndex:Float):Float;
	@:optional
	function findExact(?fieldName:String, ?value:Dynamic, ?startIndex:Float):Float;
	@:optional
	function findRecord(?fieldName:String, ?value:Dynamic, ?startIndex:Float, ?anyMatch:Bool, ?caseSensitive:Bool, ?exactMatch:Bool):Ext.data.IModel;
	@:optional
	function first(?grouped:Bool):Dynamic;
	@:optional
	function getAt(?index:Float):Ext.data.IModel;
	@:optional
	function getById(?id:Dynamic):Ext.data.IModel;
	@:optional
	function getCount():Float;
	@:optional
	function getGroupString(?instance:Ext.data.IModel):String;
	@:optional
	function getGroups(?groupName:String):Dynamic;
	@:optional
	function getNewRecords():Array<Ext.data.IModel>;
	@:optional
	function getPageFromRecordIndex(?index:Float):Float;
	@:optional
	function getRange(?start:Float, ?end:Float, ?options:Dynamic):Array<Ext.data.IModel>;
	@:optional
	function getTotalCount():Float;
	@:optional
	function getUpdatedRecords():Array<Ext.data.IModel>;
	@:optional
	function group(?groupers:Dynamic, ?direction:String):Void;
	@:optional
	function guaranteeRange(?start:Dynamic, ?end:Dynamic, ?callback:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function indexOf(?record:Ext.data.IModel):Float;
	@:optional
	function indexOfId(?id:String):Float;
	@:optional
	function indexOfTotal(?record:Ext.data.IModel):Float;
	@:optional
	function insert(?index:Float, ?records:Array<Ext.data.IModel>):Array<Ext.data.IModel>;
	@:optional
	function isFiltered():Bool;
	@:optional
	function isGrouped():Bool;
	@:optional
	function last(?grouped:Bool):Dynamic;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function loadData(?data:Dynamic, ?append:Bool):Void;
	@:optional
	function loadPage(?page:Float, ?options:Dynamic):Void;
	@:optional
	function loadRawData(?data:Array<Dynamic>, ?append:Bool):Void;
	@:optional
	function loadRecords(?records:Array<Ext.data.IModel>, ?options:Dynamic):Void;
	@:optional
	function max(?field:String, ?grouped:Bool):Dynamic;
	@:optional
	function min(?field:String, ?grouped:Bool):Dynamic;
	@:optional
	function nextPage(?options:Dynamic):Void;
	@:optional
	function prefetch(?options:Dynamic):Void;
	@:optional
	function prefetchPage(?page:Float, ?options:Dynamic):Void;
	@:optional
	function prefetchRange(?start:Dynamic, ?end:Dynamic):Void;
	@:optional
	function previousPage(?options:Dynamic):Void;
	@:optional
	function query(?property:String, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool, ?exactMatch:Bool):Ext.util.IMixedCollection;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	@:optional
	function rejectChanges():Void;
	@:optional
	function reload(?options:Dynamic):Void;
	@:optional
	function remove(?records:Dynamic):Void;
	@:optional
	function removeAll(?silent:Bool):Void;
	@:optional
	function removeAt(?index:Float, ?count:Float):Void;
	@:optional
	function removeFilter(?toRemove:Dynamic, ?applyFilters:Bool):Void;
	@:optional
	function sort():Array<Ext.util.ISorter>;
	@:optional
	function sum(?field:String, ?grouped:Bool):Float;
};
typedef IStoreManager = {
	>Ext.util.IMixedCollection,
};
extern class StoreManager {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function register(stores:Ext.data.IStore):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unregister(?stores:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef IStoreMgr = {
	>Ext.util.IMixedCollection,
};
extern class StoreMgr {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function register(stores:Ext.data.IStore):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unregister(?stores:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef ITree = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var root : Ext.data.INodeInterface;
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
	function getNodeById(?id:String):Ext.data.INodeInterface;
	@:optional
	function getRootNode():Ext.data.INodeInterface;
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
	function removeRootNode():Ext.data.INodeInterface;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function setRootNode(?node:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef ITreeModel = {
	>Ext.data.IModel,
};
typedef ITreeStore = {
	>Ext.data.IAbstractStore,
	@:optional
	var clearOnLoad : Bool;
	@:optional
	var clearRemovedOnLoad : Bool;
	@:optional
	var defaultRootId : String;
	@:optional
	var defaultRootProperty : String;
	@:optional
	var defaultRootText : String;
	@:optional
	var folderSort : Bool;
	@:optional
	var nodeParam : String;
	@:optional
	var root : Dynamic;
	@:optional
	function getNewRecords():Array<Ext.data.IModel>;
	@:optional
	function getNodeById(?id:Dynamic):Ext.data.INodeInterface;
	@:optional
	function getRootNode():Ext.data.INodeInterface;
	@:optional
	function getUpdatedRecords():Array<Ext.data.IModel>;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function removeAll():Void;
	@:optional
	function setProxy(?proxy:Dynamic):Ext.data.proxy.IProxy;
	@:optional
	function setRootNode(?root:Dynamic):Ext.data.INodeInterface;
};
typedef ITypes = {
	>Ext.IBase,
};
extern class Types {
	static var AUTO : Dynamic;
	static var BOOL : Dynamic;
	static var BOOLEAN : Dynamic;
	static var DATE : Dynamic;
	static var FLOAT : Dynamic;
	static var INT : Dynamic;
	static var INTEGER : Dynamic;
	static var NUMBER : Dynamic;
	static var STRING : Dynamic;
	static var self : Ext.IClass;
	static var stripRe : js.RegExp;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef IUuidGenerator = {
	>Ext.data.IIdGenerator,
	@:optional
	var version : Float;
	@:optional
	var salt : Dynamic;
	@:optional
	var timestamp : Dynamic;
	@:optional
	function reconfigure(?config:Dynamic):Void;
};
typedef IValidations = {
	>Ext.IBase,
};
extern class Validations {
	static var emailMessage : String;
	static var emailRe : js.RegExp;
	static var exclusionMessage : String;
	static var formatMessage : String;
	static var inclusionMessage : String;
	static var lengthMessage : String;
	static var presenceMessage : String;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function email(?config:Dynamic, ?email:String):Bool;
	static function exclusion(?config:Dynamic, ?value:String):Bool;
	static function format(?config:Dynamic, ?value:String):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function inclusion(?config:Dynamic, ?value:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function length(?config:Dynamic, ?value:String):Bool;
	static function presence(?config:Dynamic, ?value:Dynamic):Bool;
	static function statics():Ext.IClass;
}
typedef IJsonWriter = {
	>Ext.data.writer.IWriter,
	@:optional
	var allowSingle : Bool;
	@:optional
	var encode : Bool;
	@:optional
	var expandData : Bool;
	@:optional
	var root : String;
	@:optional
	function getExpandedData(?data:Dynamic):Void;
};
typedef IDataWriter = {
	>Ext.IBase,
	@:optional
	var dateFormat : String;
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	var writeRecordId : Bool;
	@:optional
	function getRecordData(?record:Ext.data.IModel, ?operation:Ext.data.IOperation):Dynamic;
	@:optional
	function write(?request:Ext.data.IRequest):Ext.data.IRequest;
};
typedef IWriter = {
	>Ext.IBase,
	@:optional
	var dateFormat : String;
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	var writeRecordId : Bool;
	@:optional
	function getRecordData(?record:Ext.data.IModel, ?operation:Ext.data.IOperation):Dynamic;
	@:optional
	function write(?request:Ext.data.IRequest):Ext.data.IRequest;
};
typedef IXmlWriter = {
	>Ext.data.writer.IWriter,
	@:optional
	var defaultDocumentRoot : String;
	@:optional
	var documentRoot : String;
	@:optional
	var header : String;
	@:optional
	var record : String;
};
typedef IXmlStore = {
	>Ext.data.IStore,
};
