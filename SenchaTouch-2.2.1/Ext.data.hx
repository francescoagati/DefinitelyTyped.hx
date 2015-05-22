typedef IArrayStore = {
	>Ext.data.IStore,
	@:optional
	var proxy : Dynamic;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function loadData(?data:Dynamic, ?append:Dynamic):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
};
typedef IAssociation = {
	>Ext.IBase,
	@:optional
	var associatedModel : String;
	@:optional
	var associatedName : String;
	@:optional
	var associationKey : String;
	@:optional
	var ownerModel : Dynamic;
	@:optional
	var primaryKey : String;
	@:optional
	var reader : Ext.data.reader.IReader;
	@:optional
	var type : String;
	@:optional
	function getAssociatedModel():String;
	@:optional
	function getAssociatedName():String;
	@:optional
	function getAssociationKey():String;
	@:optional
	function getName():Dynamic;
	@:optional
	function getOwnerModel():Dynamic;
	@:optional
	function getOwnerName():String;
	@:optional
	function getPrimaryKey():String;
	@:optional
	function getReader():Ext.data.reader.IReader;
	@:optional
	function getType():String;
	@:optional
	function setAssociatedModel(?associatedModel:String):Void;
	@:optional
	function setAssociatedName(?associatedName:String):Void;
	@:optional
	function setAssociationKey(?associationKey:String):Void;
	@:optional
	function setName(?name:Dynamic):Void;
	@:optional
	function setOwnerModel(?ownerModel:Dynamic):Void;
	@:optional
	function setOwnerName(?ownerName:String):Void;
	@:optional
	function setPrimaryKey(?primaryKey:String):Void;
	@:optional
	function setReader(?reader:Ext.data.reader.IReader):Void;
	@:optional
	function setType(?type:String):Void;
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
	function getForeignKey():String;
	@:optional
	function getGetterName():String;
	@:optional
	function getInstanceName():Dynamic;
	@:optional
	function getSetterName():String;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setGetterName(?getterName:String):Void;
	@:optional
	function setInstanceName(?instanceName:Dynamic):Void;
	@:optional
	function setSetterName(?setterName:String):Void;
};
typedef IHasManyAssociation = {
	>Ext.data.association.IAssociation,
	@:optional
	var autoLoad : Bool;
	@:optional
	var autoSync : Bool;
	@:optional
	var filterProperty : String;
	@:optional
	var foreignKey : String;
	@:optional
	var name : String;
	@:optional
	var store : Dynamic;
	@:optional
	var storeConfig : Dynamic;
	@:optional
	var storeName : String;
	@:optional
	function getAutoLoad():Bool;
	@:optional
	function getAutoSync():Bool;
	@:optional
	function getFilterProperty():String;
	@:optional
	function getForeignKey():String;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getStoreName():String;
	@:optional
	function setAutoLoad(?autoLoad:Bool):Void;
	@:optional
	function setAutoSync(?autoSync:Bool):Void;
	@:optional
	function setFilterProperty(?filterProperty:String):Void;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setStoreName(?storeName:String):Void;
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
	function getForeignKey():String;
	@:optional
	function getGetterName():String;
	@:optional
	function getInstanceName():Dynamic;
	@:optional
	function getSetterName():String;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setGetterName(?getterName:String):Void;
	@:optional
	function setInstanceName(?instanceName:Dynamic):Void;
	@:optional
	function setSetterName(?setterName:String):Void;
};
typedef IBatch = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var autoStart : Bool;
	@:optional
	var pauseOnException : Bool;
	@:optional
	var proxy : Ext.data.IProxy;
	@:optional
	var current : Float;
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
	function add(?operation:Dynamic):Void;
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
	function getAutoStart():Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getPauseOnException():Bool;
	@:optional
	function getProxy():Ext.data.IProxy;
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
	function pause():Void;
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
	function runOperation(?index:Float):Void;
	@:optional
	function setAutoStart(?autoStart:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setPauseOnException(?pauseOnException:Bool):Void;
	@:optional
	function setProxy(?proxy:Ext.data.IProxy):Void;
	@:optional
	function start():Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IConnection = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var defaultHeaders : Dynamic;
	@:optional
	var defaultXhrHeader : String;
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
	var url : String;
	@:optional
	var useDefaultXhrHeader : Bool;
	@:optional
	function abort(?request:Dynamic):Void;
	@:optional
	function abortAll():Void;
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
	function getAsync():Bool;
	@:optional
	function getAutoAbort():Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getDefaultHeaders():Dynamic;
	@:optional
	function getDefaultPostHeader():String;
	@:optional
	function getDefaultXhrHeader():String;
	@:optional
	function getDisableCaching():Bool;
	@:optional
	function getDisableCachingParam():String;
	@:optional
	function getExtraParams():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getMethod():String;
	@:optional
	function getPassword():String;
	@:optional
	function getTimeout():Float;
	@:optional
	function getUrl():String;
	@:optional
	function getUseDefaultHeader():Bool;
	@:optional
	function getUseDefaultXhrHeader():Bool;
	@:optional
	function getUsername():String;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isLoading(?request:Dynamic):Bool;
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
	function parseStatus(?status:Float, ?xhr:Dynamic):Dynamic;
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
	function request(?options:Dynamic):Dynamic;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setAsync(?async:Bool):Void;
	@:optional
	function setAutoAbort(?autoAbort:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setDefaultHeaders(?defaultHeaders:Dynamic):Void;
	@:optional
	function setDefaultPostHeader(?defaultPostHeader:String):Void;
	@:optional
	function setDefaultXhrHeader(?defaultXhrHeader:String):Void;
	@:optional
	function setDisableCaching(?disableCaching:Bool):Void;
	@:optional
	function setDisableCachingParam(?disableCachingParam:String):Void;
	@:optional
	function setExtraParams(?extraParams:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setMethod(?method:String):Void;
	@:optional
	function setOptions(?options:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function setPassword(?password:String):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function setUrl(?url:String):Void;
	@:optional
	function setUseDefaultHeader(?useDefaultHeader:Bool):Void;
	@:optional
	function setUseDefaultXhrHeader(?useDefaultXhrHeader:Bool):Void;
	@:optional
	function setUsername(?username:String):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function upload(?form:Dynamic, ?url:String, ?params:String, ?options:Dynamic):Void;
};
typedef IDirectStore = {
	>Ext.data.IStore,
	@:optional
	var proxy : Dynamic;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
};
typedef IError = {
	>Ext.IBase,
	@:optional
	var field : String;
	@:optional
	var message : String;
	@:optional
	function getField():String;
	@:optional
	function getMessage():String;
	@:optional
	function setField(?field:String):Void;
	@:optional
	function setMessage(?message:String):Void;
};
typedef IErrors = {
	>Ext.util.ICollection,
	@:optional
	function add():Dynamic;
	@:optional
	function getByField(?fieldName:String):Array<Dynamic>;
	@:optional
	function isValid():Bool;
};
typedef IField = {
	>Ext.IBase,
	@:optional
	var allowNull : Bool;
	@:optional
	var convert : Dynamic;
	@:optional
	var dateFormat : String;
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var mapping : Dynamic;
	@:optional
	var name : String;
	@:optional
	var persist : Bool;
	@:optional
	var sortDir : String;
	@:optional
	var sortType : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var useNull : Bool;
	@:optional
	function getAllowNull():Bool;
	@:optional
	function getBubbleEvents():String;
	@:optional
	function getConvert():Dynamic;
	@:optional
	function getDateFormat():String;
	@:optional
	function getDecode():Dynamic;
	@:optional
	function getDefaultValue():Dynamic;
	@:optional
	function getEncode():Dynamic;
	@:optional
	function getMapping():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getPersist():Bool;
	@:optional
	function getSortDir():String;
	@:optional
	function getSortType():Dynamic;
	@:optional
	function getType():Dynamic;
	@:optional
	function setAllowNull(?allowNull:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:String):Void;
	@:optional
	function setConvert(?convert:Dynamic):Void;
	@:optional
	function setDateFormat(?dateFormat:String):Void;
	@:optional
	function setDecode(?decode:Dynamic):Void;
	@:optional
	function setDefaultValue(?defaultValue:Dynamic):Void;
	@:optional
	function setEncode(?encode:Dynamic):Void;
	@:optional
	function setMapping(?mapping:Dynamic):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setPersist(?persist:Bool):Void;
	@:optional
	function setSortDir(?sortDir:String):Void;
	@:optional
	function setSortType(?sortType:Dynamic):Void;
	@:optional
	function setType(?type:Dynamic):Void;
};
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
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function request(?options:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IJsonStore = {
	>Ext.data.IStore,
	@:optional
	var proxy : Dynamic;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
};
typedef IModel = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var associations : Array<Dynamic>;
	@:optional
	var belongsTo : Dynamic;
	@:optional
	var clientIdProperty : String;
	@:optional
	var fields : Dynamic;
	@:optional
	var hasMany : Dynamic;
	@:optional
	var hasOne : Dynamic;
	@:optional
	var idProperty : String;
	@:optional
	var identifier : Dynamic;
	@:optional
	var proxy : Dynamic;
	@:optional
	var useCache : Bool;
	@:optional
	var validations : Array<Dynamic>;
	@:optional
	var dirty : Bool;
	@:optional
	var editing : Bool;
	@:optional
	var modified : Dynamic;
	@:optional
	var phantom : Bool;
	@:optional
	var raw : Dynamic;
	@:optional
	var stores : Array<Dynamic>;
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
	function beginEdit():Void;
	@:optional
	function cancelEdit():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function commit(?silent:Bool):Void;
	@:optional
	function copy(?id:String):Ext.data.IModel;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function endEdit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function erase(?options:Dynamic, ?scope:Dynamic):Ext.data.IModel;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function get(?fieldName:String):Dynamic;
	@:optional
	function getAssociatedData():Dynamic;
	@:optional
	function getAssociations():Array<Dynamic>;
	@:optional
	function getBelongsTo():Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getChanges():Dynamic;
	@:optional
	function getClientIdProperty():String;
	@:optional
	function getData(?includeAssociated:Bool):Dynamic;
	@:optional
	function getFields():Dynamic;
	@:optional
	function getHasMany():Dynamic;
	@:optional
	function getHasOne():Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getIdProperty():String;
	@:optional
	function getIdentifier():Dynamic;
	@:optional
	function getIsErased():Void;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function getUseCache():Bool;
	@:optional
	function getValidations():Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isModified(?fieldName:String):Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function join(?store:Ext.data.IStore):Void;
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
	function reject(?silent:Bool):Void;
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
	function save(?options:Dynamic, ?scope:Dynamic):Ext.data.IModel;
	@:optional
	function set(?fieldName:Dynamic, ?value:Dynamic):Void;
	@:optional
	function setAssociations(?associations:Array<Dynamic>):Void;
	@:optional
	function setBelongsTo(?belongsTo:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setClientIdProperty(?clientIdProperty:String):Void;
	@:optional
	function setConvertedData(?data:Dynamic):Ext.data.IModel;
	@:optional
	function setData(?rawData:Dynamic):Ext.data.IModel;
	@:optional
	function setDirty():Void;
	@:optional
	function setFields(?fields:Array<Dynamic>):Dynamic;
	@:optional
	function setHasMany(?hasMany:Dynamic):Void;
	@:optional
	function setHasOne(?hasOne:Dynamic):Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setIdProperty(?idProperty:String):Void;
	@:optional
	function setIdentifier(?identifier:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
	@:optional
	function setUseCache(?useCache:Bool):Void;
	@:optional
	function setValidations(?validations:Array<Dynamic>):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function toUrl():String;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unjoin(?store:Ext.data.IStore):Void;
	@:optional
	function validate():Ext.data.IErrors;
};
extern class Model {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function load(?id:Float, ?config:Dynamic, ?scope:Dynamic):Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IRecord = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var associations : Array<Dynamic>;
	@:optional
	var belongsTo : Dynamic;
	@:optional
	var clientIdProperty : String;
	@:optional
	var fields : Dynamic;
	@:optional
	var hasMany : Dynamic;
	@:optional
	var hasOne : Dynamic;
	@:optional
	var idProperty : String;
	@:optional
	var identifier : Dynamic;
	@:optional
	var proxy : Dynamic;
	@:optional
	var useCache : Bool;
	@:optional
	var validations : Array<Dynamic>;
	@:optional
	var dirty : Bool;
	@:optional
	var editing : Bool;
	@:optional
	var modified : Dynamic;
	@:optional
	var phantom : Bool;
	@:optional
	var raw : Dynamic;
	@:optional
	var stores : Array<Dynamic>;
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
	function beginEdit():Void;
	@:optional
	function cancelEdit():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function commit(?silent:Bool):Void;
	@:optional
	function copy(?id:String):Ext.data.IModel;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function endEdit(?silent:Bool, ?modifiedFieldNames:Array<String>):Void;
	@:optional
	function erase(?options:Dynamic, ?scope:Dynamic):Ext.data.IModel;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function get(?fieldName:String):Dynamic;
	@:optional
	function getAssociatedData():Dynamic;
	@:optional
	function getAssociations():Array<Dynamic>;
	@:optional
	function getBelongsTo():Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getChanges():Dynamic;
	@:optional
	function getClientIdProperty():String;
	@:optional
	function getData(?includeAssociated:Bool):Dynamic;
	@:optional
	function getFields():Dynamic;
	@:optional
	function getHasMany():Dynamic;
	@:optional
	function getHasOne():Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getIdProperty():String;
	@:optional
	function getIdentifier():Dynamic;
	@:optional
	function getIsErased():Void;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function getUseCache():Bool;
	@:optional
	function getValidations():Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isModified(?fieldName:String):Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function join(?store:Ext.data.IStore):Void;
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
	function reject(?silent:Bool):Void;
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
	function save(?options:Dynamic, ?scope:Dynamic):Ext.data.IModel;
	@:optional
	function set(?fieldName:Dynamic, ?value:Dynamic):Void;
	@:optional
	function setAssociations(?associations:Array<Dynamic>):Void;
	@:optional
	function setBelongsTo(?belongsTo:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setClientIdProperty(?clientIdProperty:String):Void;
	@:optional
	function setConvertedData(?data:Dynamic):Ext.data.IModel;
	@:optional
	function setData(?rawData:Dynamic):Ext.data.IModel;
	@:optional
	function setDirty():Void;
	@:optional
	function setFields(?fields:Array<Dynamic>):Dynamic;
	@:optional
	function setHasMany(?hasMany:Dynamic):Void;
	@:optional
	function setHasOne(?hasOne:Dynamic):Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setIdProperty(?idProperty:String):Void;
	@:optional
	function setIdentifier(?identifier:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
	@:optional
	function setUseCache(?useCache:Bool):Void;
	@:optional
	function setValidations(?validations:Array<Dynamic>):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function toUrl():String;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unjoin(?store:Ext.data.IStore):Void;
	@:optional
	function validate():Ext.data.IErrors;
};
extern class Record {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function load(?id:Float, ?config:Dynamic, ?scope:Dynamic):Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IModelManager = {
	>Ext.IAbstractManager,
};
extern class ModelManager {
	static var all : Ext.util.IHashMap;
	static var associationStack : Dynamic;
	static var defaultProxyType : Dynamic;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?data:Dynamic, ?name:String, ?id:Float):Dynamic;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getModel(?id:Dynamic):Ext.data.IModel;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?name:Dynamic, ?config:Dynamic):Dynamic;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
typedef INodeInterface = {
	>Ext.IBase,
	@:optional
	var childNodes : Dynamic;
	@:optional
	var firstChild : Dynamic;
	@:optional
	var lastChild : Dynamic;
	@:optional
	var nextSibling : Dynamic;
	@:optional
	var parentNode : Dynamic;
	@:optional
	var previousSibling : Dynamic;
	@:optional
	function appendChild(?node:Dynamic):Ext.data.INodeInterface;
	@:optional
	function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function cascadeBy(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function collapse(?recursive:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function contains(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function copy(?newId:String, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function destroy(?silent:Dynamic):Void;
	@:optional
	function eachChild(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function expand(?recursive:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function findChild(?attribute:String, ?value:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function findChildBy(?fn:Dynamic, ?scope:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function getChildAt(?index:Float):Ext.data.INodeInterface;
	@:optional
	function getDepth():Float;
	@:optional
	function getPath(?field:String, ?separator:String):String;
	@:optional
	function hasChildNodes():Bool;
	@:optional
	function indexOf(?child:Ext.data.INodeInterface):Float;
	@:optional
	function insertBefore(?node:Ext.data.INodeInterface, ?refNode:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function insertChild(?index:Float, ?node:Ext.data.IModel):Ext.data.IModel;
	@:optional
	function isAncestor(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function isExpandable():Bool;
	@:optional
	function isExpanded():Bool;
	@:optional
	function isFirst():Bool;
	@:optional
	function isLast():Bool;
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
	function sort(?sortFn:Dynamic, ?recursive:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function updateInfo(?silent:Dynamic):Bool;
};
extern class NodeInterface {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function decorate(?record:Ext.data.IModel):Void;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef INode = {
	>Ext.IBase,
	@:optional
	var childNodes : Dynamic;
	@:optional
	var firstChild : Dynamic;
	@:optional
	var lastChild : Dynamic;
	@:optional
	var nextSibling : Dynamic;
	@:optional
	var parentNode : Dynamic;
	@:optional
	var previousSibling : Dynamic;
	@:optional
	function appendChild(?node:Dynamic):Ext.data.INodeInterface;
	@:optional
	function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function cascadeBy(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function collapse(?recursive:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function contains(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function copy(?newId:String, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function destroy(?silent:Dynamic):Void;
	@:optional
	function eachChild(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Void;
	@:optional
	function expand(?recursive:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function findChild(?attribute:String, ?value:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function findChildBy(?fn:Dynamic, ?scope:Dynamic, ?deep:Bool):Ext.data.INodeInterface;
	@:optional
	function getChildAt(?index:Float):Ext.data.INodeInterface;
	@:optional
	function getDepth():Float;
	@:optional
	function getPath(?field:String, ?separator:String):String;
	@:optional
	function hasChildNodes():Bool;
	@:optional
	function indexOf(?child:Ext.data.INodeInterface):Float;
	@:optional
	function insertBefore(?node:Ext.data.INodeInterface, ?refNode:Ext.data.INodeInterface):Ext.data.INodeInterface;
	@:optional
	function insertChild(?index:Float, ?node:Ext.data.IModel):Ext.data.IModel;
	@:optional
	function isAncestor(?node:Ext.data.INodeInterface):Bool;
	@:optional
	function isExpandable():Bool;
	@:optional
	function isExpanded():Bool;
	@:optional
	function isFirst():Bool;
	@:optional
	function isLast():Bool;
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
	function sort(?sortFn:Dynamic, ?recursive:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function updateInfo(?silent:Dynamic):Bool;
};
extern class Node {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function decorate(?record:Ext.data.IModel):Void;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef INodeStore = {
	>Ext.data.IStore,
	@:optional
	var filters : Array<Dynamic>;
	@:optional
	var folderSort : Bool;
	@:optional
	var node : Ext.data.IModel;
	@:optional
	var recursive : Bool;
	@:optional
	var rootVisible : Bool;
	@:optional
	var sorters : Array<Dynamic>;
	@:optional
	function getFilters():Dynamic;
	@:optional
	function getFolderSort():Bool;
	@:optional
	function getNode():Ext.data.IModel;
	@:optional
	function getRecursive():Bool;
	@:optional
	function getRootVisible():Bool;
	@:optional
	function getSorters():Dynamic;
	@:optional
	function isVisible(?node:Dynamic):Bool;
	@:optional
	function setFilters(?filters:Dynamic):Void;
	@:optional
	function setFolderSort(?folderSort:Bool):Void;
	@:optional
	function setNode(?node:Ext.data.IModel):Void;
	@:optional
	function setRecursive(?recursive:Bool):Void;
	@:optional
	function setRootVisible(?rootVisible:Bool):Void;
	@:optional
	function setSorters(?sorters:Dynamic):Void;
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
	var group : Bool;
	@:optional
	var grouper : Ext.util.IGrouper;
	@:optional
	var limit : Float;
	@:optional
	var model : Ext.data.IModel;
	@:optional
	var params : Dynamic;
	@:optional
	var records : Array<Dynamic>;
	@:optional
	var request : Ext.data.IRequest;
	@:optional
	var response : Dynamic;
	@:optional
	var resultSet : Ext.data.IResultSet;
	@:optional
	var scope : Dynamic;
	@:optional
	var sorters : Array<Ext.util.ISorter>;
	@:optional
	var start : Float;
	@:optional
	var synchronous : Bool;
	@:optional
	var withCredentials : Bool;
	@:optional
	function allowWrite():Bool;
	@:optional
	function getAction():String;
	@:optional
	function getAddRecords():Bool;
	@:optional
	function getBatch():Ext.data.IBatch;
	@:optional
	function getCallback():Dynamic;
	@:optional
	function getError():Dynamic;
	@:optional
	function getFilters():Array<Ext.util.IFilter>;
	@:optional
	function getGrouper():Ext.util.IGrouper;
	@:optional
	function getLimit():Float;
	@:optional
	function getModel():Ext.data.IModel;
	@:optional
	function getNode():Dynamic;
	@:optional
	function getPage():Dynamic;
	@:optional
	function getParams():Dynamic;
	@:optional
	function getRequest():Ext.data.IRequest;
	@:optional
	function getResponse():Dynamic;
	@:optional
	function getResultSet():Ext.data.IResultSet;
	@:optional
	function getScope():Dynamic;
	@:optional
	function getSorters():Array<Ext.util.ISorter>;
	@:optional
	function getStart():Float;
	@:optional
	function getSynchronous():Bool;
	@:optional
	function getUrl():Dynamic;
	@:optional
	function getWithCredentials():Bool;
	@:optional
	function hasException():Bool;
	@:optional
	function isComplete():Bool;
	@:optional
	function isRunning():Bool;
	@:optional
	function isStarted():Bool;
	@:optional
	function setAction(?action:String):Void;
	@:optional
	function setAddRecords(?addRecords:Bool):Void;
	@:optional
	function setBatch(?batch:Ext.data.IBatch):Void;
	@:optional
	function setCallback(?callback:Dynamic):Void;
	@:optional
	function setCompleted():Void;
	@:optional
	function setException(?error:Dynamic):Void;
	@:optional
	function setFilters(?filters:Array<Ext.util.IFilter>):Void;
	@:optional
	function setGrouper(?grouper:Ext.util.IGrouper):Void;
	@:optional
	function setLimit(?limit:Float):Void;
	@:optional
	function setModel(?model:Ext.data.IModel):Void;
	@:optional
	function setNode(?node:Dynamic):Void;
	@:optional
	function setPage(?page:Dynamic):Void;
	@:optional
	function setParams(?params:Dynamic):Void;
	@:optional
	function setRecords(?records:Array<Dynamic>):Void;
	@:optional
	function setRequest(?request:Ext.data.IRequest):Void;
	@:optional
	function setResponse(?response:Dynamic):Void;
	@:optional
	function setResultSet(?resultSet:Ext.data.IResultSet):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
	@:optional
	function setSorters(?sorters:Array<Ext.util.ISorter>):Void;
	@:optional
	function setStart(?start:Float):Void;
	@:optional
	function setStarted():Void;
	@:optional
	function setSuccessful():Void;
	@:optional
	function setSynchronous(?synchronous:Bool):Void;
	@:optional
	function setUrl(?url:Dynamic):Void;
	@:optional
	function setWithCredentials(?withCredentials:Bool):Void;
	@:optional
	function wasSuccessful():Bool;
};
typedef IHttpProxy = {
	>Ext.data.proxy.IServer,
	@:optional
	var headers : Dynamic;
	@:optional
	var password : String;
	@:optional
	var useDefaultXhrHeader : Bool;
	@:optional
	var username : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var actionMethods : Dynamic;
	@:optional
	function doRequest(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function getHeaders():Dynamic;
	@:optional
	function getMethod(?request:Ext.data.IRequest):String;
	@:optional
	function getPassword():String;
	@:optional
	function getUseDefaultXhrHeader():Bool;
	@:optional
	function getUsername():String;
	@:optional
	function getWithCredentials():Bool;
	@:optional
	function setHeaders(?headers:Dynamic):Void;
	@:optional
	function setPassword(?password:String):Void;
	@:optional
	function setUseDefaultXhrHeader(?useDefaultXhrHeader:Bool):Void;
	@:optional
	function setUsername(?username:String):Void;
	@:optional
	function setWithCredentials(?withCredentials:Bool):Void;
};
typedef IAjaxProxy = {
	>Ext.data.proxy.IServer,
	@:optional
	var headers : Dynamic;
	@:optional
	var password : String;
	@:optional
	var useDefaultXhrHeader : Bool;
	@:optional
	var username : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var actionMethods : Dynamic;
	@:optional
	function doRequest(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function getHeaders():Dynamic;
	@:optional
	function getMethod(?request:Ext.data.IRequest):String;
	@:optional
	function getPassword():String;
	@:optional
	function getUseDefaultXhrHeader():Bool;
	@:optional
	function getUsername():String;
	@:optional
	function getWithCredentials():Bool;
	@:optional
	function setHeaders(?headers:Dynamic):Void;
	@:optional
	function setPassword(?password:String):Void;
	@:optional
	function setUseDefaultXhrHeader(?useDefaultXhrHeader:Bool):Void;
	@:optional
	function setUsername(?username:String):Void;
	@:optional
	function setWithCredentials(?withCredentials:Bool):Void;
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
	@:optional
	function getApi():Dynamic;
	@:optional
	function getDirectFn():Dynamic;
	@:optional
	function getExtraParams():Dynamic;
	@:optional
	function getParamOrder():Dynamic;
	@:optional
	function getParamsAsHash():Bool;
	@:optional
	function setApi(?api:Dynamic):Void;
	@:optional
	function setDirectFn(?directFn:Dynamic):Void;
	@:optional
	function setExtraParams(?extraParams:Dynamic):Void;
	@:optional
	function setParamOrder(?paramOrder:Dynamic):Void;
	@:optional
	function setParamsAsHash(?paramsAsHash:Bool):Void;
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
	function destroy():Void;
	@:optional
	function doRequest(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function getAutoAppendParams():Bool;
	@:optional
	function getCallbackKey():String;
	@:optional
	function getDefaultWriterType():String;
	@:optional
	function getRecordParam():String;
	@:optional
	function setAutoAppendParams(?autoAppendParams:Bool):Void;
	@:optional
	function setCallbackKey(?callbackKey:String):Void;
	@:optional
	function setDefaultWriterType(?defaultWriterType:String):Void;
	@:optional
	function setRecordParam(?recordParam:String):Void;
};
typedef ILocalStorageProxy = {
	>Ext.data.proxy.IWebStorage,
};
typedef IMemoryProxy = {
	>Ext.data.proxy.IClient,
	@:optional
	var data : Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getData():Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IDataProxy = {
	>Ext.IEvented,
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
	function batch(?options:Dynamic):Ext.data.IBatch;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getBatchActions():Bool;
	@:optional
	function getBatchOrder():String;
	@:optional
	function getModel():Dynamic;
	@:optional
	function getReader():Dynamic;
	@:optional
	function getWriter():Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setBatchActions(?batchActions:Bool):Void;
	@:optional
	function setBatchOrder(?batchOrder:String):Void;
	@:optional
	function setModel(?model:Dynamic):Void;
	@:optional
	function setReader(?reader:Dynamic):Void;
	@:optional
	function setWriter(?writer:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IProxy = {
	>Ext.IEvented,
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
	function batch(?options:Dynamic):Ext.data.IBatch;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getBatchActions():Bool;
	@:optional
	function getBatchOrder():String;
	@:optional
	function getModel():Dynamic;
	@:optional
	function getReader():Dynamic;
	@:optional
	function getWriter():Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setBatchActions(?batchActions:Bool):Void;
	@:optional
	function setBatchOrder(?batchOrder:String):Void;
	@:optional
	function setModel(?model:Dynamic):Void;
	@:optional
	function setReader(?reader:Dynamic):Void;
	@:optional
	function setWriter(?writer:Dynamic):Void;
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
	function getActionMethods():Dynamic;
	@:optional
	function getAppendId():Bool;
	@:optional
	function getBatchActions():Bool;
	@:optional
	function getFormat():String;
	@:optional
	function setActionMethods(?actionMethods:Dynamic):Void;
	@:optional
	function setAppendId(?appendId:Bool):Void;
	@:optional
	function setBatchActions(?batchActions:Bool):Void;
	@:optional
	function setFormat(?format:String):Void;
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
	var enablePagingParams : Bool;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var filterParam : String;
	@:optional
	var groupParam : String;
	@:optional
	var limitParam : String;
	@:optional
	var noCache : Bool;
	@:optional
	var pageParam : String;
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
	function getApi():Dynamic;
	@:optional
	function getCacheString():String;
	@:optional
	function getDirectionParam():String;
	@:optional
	function getEnablePagingParams():Bool;
	@:optional
	function getExtraParams():Dynamic;
	@:optional
	function getFilterParam():String;
	@:optional
	function getGroupParam():String;
	@:optional
	function getLimitParam():String;
	@:optional
	function getNoCache():Bool;
	@:optional
	function getPageParam():String;
	@:optional
	function getSimpleSortMode():Bool;
	@:optional
	function getSortParam():String;
	@:optional
	function getStartParam():String;
	@:optional
	function getTimeout():Float;
	@:optional
	function processResponse(?success:Bool, ?operation:Ext.data.IOperation, ?request:Ext.data.IRequest, ?response:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function read():Void;
	@:optional
	function setApi(?api:Dynamic):Void;
	@:optional
	function setCacheString(?cacheString:String):Void;
	@:optional
	function setDirectionParam(?directionParam:String):Void;
	@:optional
	function setEnablePagingParams(?enablePagingParams:Bool):Void;
	@:optional
	function setExtraParam(?name:String, ?value:Dynamic):Void;
	@:optional
	function setExtraParams(?extraParams:Dynamic):Void;
	@:optional
	function setFilterParam(?filterParam:String):Void;
	@:optional
	function setGroupParam(?groupParam:String):Void;
	@:optional
	function setLimitParam(?limitParam:String):Void;
	@:optional
	function setNoCache(?noCache:Bool):Void;
	@:optional
	function setPageParam(?pageParam:String):Void;
	@:optional
	function setSimpleSortMode(?simpleSortMode:Bool):Void;
	@:optional
	function setSortParam(?sortParam:String):Void;
	@:optional
	function setStartParam(?startParam:String):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function setUrl(?url:String):Void;
	@:optional
	function update():Void;
};
typedef ISessionStorageProxy = {
	>Ext.data.proxy.IWebStorage,
};
typedef IWebStorageProxy = {
	>Ext.data.proxy.IClient,
	@:optional
	var enablePagingParams : Bool;
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
	function getDefaultDateFormat():String;
	@:optional
	function getEnablePagingParams():Bool;
	@:optional
	function getId():String;
	@:optional
	function read(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setDefaultDateFormat(?defaultDateFormat:String):Void;
	@:optional
	function setEnablePagingParams(?enablePagingParams:Bool):Void;
	@:optional
	function setId(?id:String):Void;
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
	@:optional
	function getSuccessProperty():Dynamic;
	@:optional
	function getTotalProperty():Dynamic;
	@:optional
	function setSuccessProperty(?successProperty:Dynamic):Void;
	@:optional
	function setTotalProperty(?totalProperty:Dynamic):Void;
};
typedef IJsonReader = {
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
typedef IDataReader = {
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
typedef IXmlReader = {
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
typedef IRequest = {
	>Ext.IBase,
	@:optional
	var action : String;
	@:optional
	var callbackKey : String;
	@:optional
	var disableCaching : Bool;
	@:optional
	var headers : Dynamic;
	@:optional
	var jsonData : Dynamic;
	@:optional
	var jsonp : Ext.data.IJsonP;
	@:optional
	var method : String;
	@:optional
	var operation : Ext.data.IOperation;
	@:optional
	var params : Dynamic;
	@:optional
	var password : String;
	@:optional
	var proxy : Ext.data.proxy.IProxy;
	@:optional
	var url : String;
	@:optional
	var username : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var xmlData : Dynamic;
	@:optional
	function getAction():String;
	@:optional
	function getArgs():Dynamic;
	@:optional
	function getCallback():Dynamic;
	@:optional
	function getCallbackKey():String;
	@:optional
	function getDirectFn():Dynamic;
	@:optional
	function getDisableCaching():Bool;
	@:optional
	function getHeaders():Dynamic;
	@:optional
	function getJsonData():Dynamic;
	@:optional
	function getMethod():String;
	@:optional
	function getOperation():Ext.data.IOperation;
	@:optional
	function getParams():Dynamic;
	@:optional
	function getPassword():String;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
	@:optional
	function getRecords():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function getTimeout():Float;
	@:optional
	function getUrl():String;
	@:optional
	function getUsername():String;
	@:optional
	function getWithCredentials():Bool;
	@:optional
	function getXmlData():Dynamic;
	@:optional
	function setAction(?action:String):Void;
	@:optional
	function setArgs(?args:Dynamic):Void;
	@:optional
	function setCallback(?callback:Dynamic):Void;
	@:optional
	function setCallbackKey(?callbackKey:String):Void;
	@:optional
	function setDirectFn(?directFn:Dynamic):Void;
	@:optional
	function setDisableCaching(?disableCaching:Bool):Void;
	@:optional
	function setHeaders(?headers:Dynamic):Void;
	@:optional
	function setJsonData(?jsonData:Dynamic):Void;
	@:optional
	function setMethod(?method:String):Void;
	@:optional
	function setOperation(?operation:Ext.data.IOperation):Void;
	@:optional
	function setParams(?params:Dynamic):Void;
	@:optional
	function setPassword(?password:String):Void;
	@:optional
	function setProxy(?proxy:Ext.data.proxy.IProxy):Void;
	@:optional
	function setRecords(?records:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function setUrl(?url:String):Void;
	@:optional
	function setUsername(?username:String):Void;
	@:optional
	function setWithCredentials(?withCredentials:Bool):Void;
	@:optional
	function setXmlData(?xmlData:Dynamic):Void;
};
typedef IResultSet = {
	>Ext.IBase,
	@:optional
	var count : Float;
	@:optional
	var loaded : Bool;
	@:optional
	var message : String;
	@:optional
	var records : Array<Ext.data.IModel>;
	@:optional
	var success : Bool;
	@:optional
	var total : Float;
	@:optional
	function getCount():Float;
	@:optional
	function getLoaded():Bool;
	@:optional
	function getMessage():String;
	@:optional
	function getRecords():Array<Ext.data.IModel>;
	@:optional
	function getSuccess():Bool;
	@:optional
	function getTotal():Float;
	@:optional
	function setCount(?count:Float):Void;
	@:optional
	function setLoaded(?loaded:Bool):Void;
	@:optional
	function setMessage(?message:String):Void;
	@:optional
	function setRecords(?records:Array<Ext.data.IModel>):Void;
	@:optional
	function setSuccess(?success:Bool):Void;
	@:optional
	function setTotal(?total:Float):Void;
};
typedef ISortTypes = {
	>Ext.IBase,
};
extern class SortTypes {
	static var self : Ext.IClass;
	static var stripTagsRE : js.RegExp;
	static function asDate(?value:Dynamic):Float;
	static function asFloat(?value:Dynamic):Float;
	static function asInt(?value:Dynamic):Float;
	static function asText(?value:Dynamic):String;
	static function asUCString(?value:Dynamic):String;
	static function asUCText(?value:Dynamic):String;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function none(?value:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IStore = {
	>Ext.IEvented,
	@:optional
	var autoLoad : Dynamic;
	@:optional
	var autoSync : Bool;
	@:optional
	var clearOnPageLoad : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var destroyRemovedRecords : Bool;
	@:optional
	var fields : Array<Dynamic>;
	@:optional
	var filters : Array<Dynamic>;
	@:optional
	var getGroupString : Dynamic;
	@:optional
	var groupDir : String;
	@:optional
	var groupField : String;
	@:optional
	var grouper : Dynamic;
	@:optional
	var model : String;
	@:optional
	var pageSize : Float;
	@:optional
	var proxy : Dynamic;
	@:optional
	var remoteFilter : Bool;
	@:optional
	var remoteGroup : Bool;
	@:optional
	var remoteSort : Bool;
	@:optional
	var sorters : Array<Dynamic>;
	@:optional
	var storeId : String;
	@:optional
	var syncRemovedRecords : Bool;
	@:optional
	var totalCount : Float;
	@:optional
	var currentPage : Float;
	@:optional
	function add(?model:Dynamic):Array<Ext.data.IModel>;
	@:optional
	function applyData(?data:Dynamic):Void;
	@:optional
	function average(?field:String):Float;
	@:optional
	function clearFilter(?suppressEvent:Bool):Void;
	@:optional
	function destroy():Void;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function filter(?filters:Dynamic, ?value:String, ?anyMatch:Bool, ?caseSensitive:Bool):Void;
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
	function first():Dynamic;
	@:optional
	function getAllCount():Float;
	@:optional
	function getAt(?index:Float):Dynamic;
	@:optional
	function getAutoLoad():Dynamic;
	@:optional
	function getAutoSync():Bool;
	@:optional
	function getById(?id:String):Dynamic;
	@:optional
	function getClearOnPageLoad():Bool;
	@:optional
	function getCount():Float;
	@:optional
	function getData():Dynamic;
	@:optional
	function getDestroyRemovedRecords():Bool;
	@:optional
	function getFields():Array<Dynamic>;
	@:optional
	function getGetGroupString():Dynamic;
	@:optional
	function getGroupDir():String;
	@:optional
	function getGroupField():String;
	@:optional
	function getGrouper():Dynamic;
	@:optional
	function getGroups(?groupName:String):Dynamic;
	@:optional
	function getModel():String;
	@:optional
	function getModelDefaults():Dynamic;
	@:optional
	function getNewRecords():Array<Ext.data.IModel>;
	@:optional
	function getPageSize():Float;
	@:optional
	function getProxy():Dynamic;
	@:optional
	function getRange(?startIndex:Float, ?endIndex:Float):Array<Ext.data.IModel>;
	@:optional
	function getRemoteFilter():Bool;
	@:optional
	function getRemoteGroup():Bool;
	@:optional
	function getRemoteSort():Bool;
	@:optional
	function getRemovedRecords():Array<Ext.data.IModel>;
	@:optional
	function getStoreId():String;
	@:optional
	function getSyncRemovedRecords():Bool;
	@:optional
	function getTotalCount():Float;
	@:optional
	function getUpdatedRecords():Array<Ext.data.IModel>;
	@:optional
	function indexOf(?record:Ext.data.IModel):Float;
	@:optional
	function indexOfId(?id:String):Float;
	@:optional
	function insert(?index:Float, ?records:Array<Ext.data.IModel>):Dynamic;
	@:optional
	function isAutoLoading():Bool;
	@:optional
	function isFiltered():Bool;
	@:optional
	function isGrouped():Bool;
	@:optional
	function isLoaded():Bool;
	@:optional
	function isLoading():Bool;
	@:optional
	function isSorted():Bool;
	@:optional
	function last():Dynamic;
	@:optional
	function load(?options:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function loadData(?data:Dynamic, ?append:Bool):Void;
	@:optional
	function loadPage(?page:Float, ?options:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function loadRecords(?model:Dynamic):Array<Ext.data.IModel>;
	@:optional
	function max(?field:String):Dynamic;
	@:optional
	function min(?field:String):Dynamic;
	@:optional
	function nextPage(?options:Dynamic):Void;
	@:optional
	function previousPage(?options:Dynamic):Void;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	@:optional
	function remove(?records:Dynamic):Void;
	@:optional
	function removeAll(?silent:Bool):Void;
	@:optional
	function removeAt(?index:Float):Void;
	@:optional
	function setAutoLoad(?autoLoad:Dynamic):Void;
	@:optional
	function setAutoSync(?autoSync:Bool):Void;
	@:optional
	function setClearOnPageLoad(?clearOnPageLoad:Bool):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setDestroyRemovedRecords(?destroyRemovedRecords:Bool):Void;
	@:optional
	function setFields(?fields:Array<Dynamic>):Void;
	@:optional
	function setFilters(?filters:Array<Dynamic>):Void;
	@:optional
	function setGetGroupString(?getGroupString:Dynamic):Void;
	@:optional
	function setGroupDir(?groupDir:String):Void;
	@:optional
	function setGroupField(?groupField:String):Void;
	@:optional
	function setGrouper(?grouper:Dynamic):Void;
	@:optional
	function setModel(?model:String):Void;
	@:optional
	function setModelDefaults(?modelDefaults:Dynamic):Void;
	@:optional
	function setPageSize(?pageSize:Float):Void;
	@:optional
	function setProxy(?proxy:Dynamic):Void;
	@:optional
	function setRemoteFilter(?remoteFilter:Bool):Void;
	@:optional
	function setRemoteGroup(?remoteGroup:Bool):Void;
	@:optional
	function setRemoteSort(?remoteSort:Bool):Void;
	@:optional
	function setSorters(?sorters:Array<Dynamic>):Void;
	@:optional
	function setStoreId(?storeId:String):Void;
	@:optional
	function setSyncRemovedRecords(?syncRemovedRecords:Bool):Void;
	@:optional
	function setTotalCount(?totalCount:Float):Void;
	@:optional
	function sort(?sorters:Dynamic, ?defaultDirection:String, ?where:String):Void;
	@:optional
	function sum(?field:String):Float;
	@:optional
	function sync():Dynamic;
};
typedef IStoreManager = {
	>Ext.util.ICollection,
};
extern class StoreManager {
	static var all : Array<Dynamic>;
	static var currentSortFn : Dynamic;
	static var dirtyFilterFn : Bool;
	static var dirtySortFn : Bool;
	static var filtered : Bool;
	static var indices : Dynamic;
	static var items : Array<Dynamic>;
	static var keys : Array<Dynamic>;
	static var length : Float;
	static var map : Dynamic;
	static var self : Ext.IClass;
	static var sorted : Bool;
	static function add(?key:String, ?item:Dynamic):Dynamic;
	static function addAll(?addItems:Dynamic):Void;
	static function addFilter(?filter:Dynamic):Void;
	static function addFilters(?filters:Dynamic):Dynamic;
	static function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	static function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clone():Ext.util.IMixedCollection;
	static function contains(?item:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Dynamic, ?caseSensitive:Dynamic):Array<Dynamic>;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	static function first():Dynamic;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getAutoFilter():Bool;
	static function getAutoSort():Bool;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getDefaultSortDirection():String;
	static function getFilterFn():Dynamic;
	static function getFilterRoot():String;
	static function getFilters():Array<Dynamic>;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	static function getSortFn():Dynamic;
	static function getSortRoot():String;
	static function getSorters():Array<Dynamic>;
	static function indexOf(?item:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function insert(?index:Float, ?key:String, ?item:Dynamic):Dynamic;
	static function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	static function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	static function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	static function insertSorters():Ext.util.ICollection;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function register(stores:Ext.data.IStore):Void;
	static function remove(?item:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeFilters(?filters:Dynamic):Ext.util.ICollection;
	static function removeSorter(?sorter:Dynamic):Void;
	static function removeSorters(?sorters:Dynamic):Ext.util.ICollection;
	static function replace(?oldKey:String, ?item:Dynamic):Dynamic;
	static function setAutoFilter(?autoFilter:Bool):Void;
	static function setAutoSort(?autoSort:Bool):Void;
	static function setDefaultSortDirection(?defaultSortDirection:String):Void;
	static function setFilterRoot(?filterRoot:String):Void;
	static function setFilters(?filters:Array<Dynamic>):Void;
	static function setSortRoot(?sortRoot:String):Void;
	static function setSorters(?sorters:Array<Dynamic>):Void;
	static function sort(?sorters:Dynamic, ?defaultDirection:Dynamic):Array<Dynamic>;
	static function statics():Ext.IClass;
	static function unregister(?stores:Dynamic):Void;
}
typedef IStoreMgr = {
	>Ext.util.ICollection,
};
extern class StoreMgr {
	static var all : Array<Dynamic>;
	static var currentSortFn : Dynamic;
	static var dirtyFilterFn : Bool;
	static var dirtySortFn : Bool;
	static var filtered : Bool;
	static var indices : Dynamic;
	static var items : Array<Dynamic>;
	static var keys : Array<Dynamic>;
	static var length : Float;
	static var map : Dynamic;
	static var self : Ext.IClass;
	static var sorted : Bool;
	static function add(?key:String, ?item:Dynamic):Dynamic;
	static function addAll(?addItems:Dynamic):Void;
	static function addFilter(?filter:Dynamic):Void;
	static function addFilters(?filters:Dynamic):Dynamic;
	static function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	static function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clone():Ext.util.IMixedCollection;
	static function contains(?item:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Dynamic, ?caseSensitive:Dynamic):Array<Dynamic>;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	static function first():Dynamic;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getAutoFilter():Bool;
	static function getAutoSort():Bool;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getDefaultSortDirection():String;
	static function getFilterFn():Dynamic;
	static function getFilterRoot():String;
	static function getFilters():Array<Dynamic>;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	static function getSortFn():Dynamic;
	static function getSortRoot():String;
	static function getSorters():Array<Dynamic>;
	static function indexOf(?item:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function insert(?index:Float, ?key:String, ?item:Dynamic):Dynamic;
	static function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	static function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	static function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	static function insertSorters():Ext.util.ICollection;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function register(stores:Ext.data.IStore):Void;
	static function remove(?item:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeFilters(?filters:Dynamic):Ext.util.ICollection;
	static function removeSorter(?sorter:Dynamic):Void;
	static function removeSorters(?sorters:Dynamic):Ext.util.ICollection;
	static function replace(?oldKey:String, ?item:Dynamic):Dynamic;
	static function setAutoFilter(?autoFilter:Bool):Void;
	static function setAutoSort(?autoSort:Bool):Void;
	static function setDefaultSortDirection(?defaultSortDirection:String):Void;
	static function setFilterRoot(?filterRoot:String):Void;
	static function setFilters(?filters:Array<Dynamic>):Void;
	static function setSortRoot(?sortRoot:String):Void;
	static function setSorters(?sorters:Array<Dynamic>):Void;
	static function sort(?sorters:Dynamic, ?defaultDirection:Dynamic):Array<Dynamic>;
	static function statics():Ext.IClass;
	static function unregister(?stores:Dynamic):Void;
}
typedef ITreeStore = {
	>Ext.data.INodeStore,
	@:optional
	var clearOnLoad : Bool;
	@:optional
	var defaultRootId : String;
	@:optional
	var defaultRootProperty : String;
	@:optional
	var nodeParam : String;
	@:optional
	var root : Dynamic;
	@:optional
	function getClearOnLoad():Bool;
	@:optional
	function getDefaultRootId():String;
	@:optional
	function getDefaultRootProperty():String;
	@:optional
	function getNodeById(?id:Dynamic):Ext.data.INodeInterface;
	@:optional
	function getNodeParam():String;
	@:optional
	function getRoot():Dynamic;
	@:optional
	function getRootNode(?node:Dynamic):Ext.data.IModel;
	@:optional
	function load(?options:Dynamic):Dynamic;
	@:optional
	function onProxyLoad(?operation:Dynamic):Void;
	@:optional
	function removeAll(?silent:Bool):Void;
	@:optional
	function setClearOnLoad(?clearOnLoad:Bool):Void;
	@:optional
	function setDefaultRootId(?defaultRootId:String):Void;
	@:optional
	function setDefaultRootProperty(?defaultRootProperty:String):Void;
	@:optional
	function setNodeParam(?nodeParam:String):Void;
	@:optional
	function setRoot(?root:Dynamic):Void;
	@:optional
	function setRootNode(?node:Ext.data.IModel):Ext.data.IModel;
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
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IValidations = {
	>Ext.IBase,
};
extern class Validations {
	static var emailMessage : String;
	static var emailRe : js.RegExp;
	static var exclusionMessage : String;
	static var formatMessage : Bool;
	static var inclusionMessage : String;
	static var lengthMessage : String;
	static var presenceMessage : String;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function email(?config:Dynamic, ?email:String):Bool;
	static function exclusion(?config:Dynamic, ?value:String):Bool;
	static function format(?config:Dynamic, ?value:String):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function getMessage(?type:String):Dynamic;
	static function inclusion(?config:Dynamic, ?value:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
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
	var root : String;
	@:optional
	var rootProperty : String;
	@:optional
	function getAllowSingle():Bool;
	@:optional
	function getEncode():Bool;
	@:optional
	function getEncodeRequest():Bool;
	@:optional
	function getRootProperty():String;
	@:optional
	function setAllowSingle(?allowSingle:Bool):Void;
	@:optional
	function setEncode(?encode:Bool):Void;
	@:optional
	function setEncodeRequest(?encodeRequest:Bool):Void;
	@:optional
	function setRootProperty(?rootProperty:String):Void;
};
typedef IDataWriter = {
	>Ext.IBase,
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	function getNameProperty():String;
	@:optional
	function getRecordData(?record:Dynamic):Dynamic;
	@:optional
	function getWriteAllFields():Bool;
	@:optional
	function setNameProperty(?nameProperty:String):Void;
	@:optional
	function setWriteAllFields(?writeAllFields:Bool):Void;
	@:optional
	function write(?request:Ext.data.IRequest):Ext.data.IRequest;
};
typedef IWriter = {
	>Ext.IBase,
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	function getNameProperty():String;
	@:optional
	function getRecordData(?record:Dynamic):Dynamic;
	@:optional
	function getWriteAllFields():Bool;
	@:optional
	function setNameProperty(?nameProperty:String):Void;
	@:optional
	function setWriteAllFields(?writeAllFields:Bool):Void;
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
	@:optional
	function getDefaultDocumentRoot():String;
	@:optional
	function getDocumentRoot():String;
	@:optional
	function getHeader():String;
	@:optional
	function getRecord():String;
	@:optional
	function setDefaultDocumentRoot(?defaultDocumentRoot:String):Void;
	@:optional
	function setDocumentRoot(?documentRoot:String):Void;
	@:optional
	function setHeader(?header:String):Void;
	@:optional
	function setRecord(?record:String):Void;
	@:optional
	function writeRecords(?request:Dynamic, ?data:Dynamic):Dynamic;
};
