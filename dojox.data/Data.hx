typedef RestListener = { };
extern class AndOrReadStore extends dojo.data.ItemFileReadStore {
	function new(keywordParameters:Dynamic):Void;
	var clearOnClose : Bool;
	var data : Dynamic;
	var failOk : Bool;
	var hierarchical : Bool;
	var typeMap : Dynamic;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function filter(requestArgs:Dynamic, arrayOfItems:Dynamic, findCallback:Dynamic):Void;
	function getAttributes(item:dojo.data.api.Item):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:dojo.data.api.Item):Dynamic;
	function getIdentityAttributes(item:dojo.data.api.Item):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Bool;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
}
extern class AndOrWriteStore extends dojo.data.ItemFileWriteStore {
	function new(keywordParameters:Dynamic):Void;
	var clearOnClose : Bool;
	var data : Dynamic;
	var failOk : Bool;
	var hierarchical : Bool;
	var referenceIntegrity : Bool;
	var typeMap : Dynamic;
	var url : String;
	var urlPreventCache : Bool;
	function close(request:Dynamic):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic;
	function deleteItem(item:dojo.data.api.Item):Bool;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function filter(requestArgs:Dynamic, arrayOfItems:Array<Dynamic>, findCallback:haxe.Constraints.Function):Void;
	function getAttributes(item:dojo.data.api.Item):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:dojo.data.api.Item):Dynamic;
	function getIdentityAttributes(item:dojo.data.api.Item):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Bool;
	function isDirty(item:Dynamic):Dynamic;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function newItem(keywordArgs:Dynamic, parentInfo:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function revert():Bool;
	function save(keywordArgs:Dynamic):Void;
	function setValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic;
	function setValues(item:dojo.data.api.Item, attribute:String, values:Array<Dynamic>):Dynamic;
	function unsetAttribute(item:dojo.data.api.Item, attribute:String):Dynamic;
	function onDelete(deletedItem:dojo.data.api.Item):Void;
	function onNew(newItem:dojo.data.api.Item, parentInfo:Dynamic):Void;
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSet(item:dojo.data.api.Item, attribute:String, oldValue:Dynamic, newValue:Dynamic):Void;
}
extern class AppStore {
	function new(args:Dynamic):Void;
	var url : String;
	var urlPreventCache : Bool;
	var xmethod : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function deleteItem(item:Dynamic):Bool;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:String):Dynamic;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isDirty(item:Dynamic):Bool;
	function isItem(something:Dynamic):Dynamic;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function newItem(keywordArgs:Dynamic):Bool;
	function revert():Bool;
	function save(keywordArgs:Dynamic):Void;
	function setValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function setValues(item:Dynamic, attribute:String, values:Array<Dynamic>):Dynamic;
	function unsetAttribute(item:Dynamic, attribute:String):Bool;
}
extern class AtomReadStore {
	function new(args:Dynamic):Void;
	var label : String;
	var sendQuery : Bool;
	var unescapeHTML : Bool;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	@:overload(function(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic { })
	function containsValue(item:dojo.data.api.Item, attribute:Attr, value:Dynamic):Dynamic;
	function getAttributes(item:dojo.data.api.Item):Dynamic;
	function getFeatures():Dynamic;
	function getFeedValue(attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getFeedValues(attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic { })
	function getValue(item:dojo.data.api.Item, attribute:Attr, defaultValue:Dynamic):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String):Dynamic { })
	function getValues(item:dojo.data.api.Item, attribute:Attr):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String):Dynamic { })
	function hasAttribute(item:dojo.data.api.Item, attribute:Attr):Dynamic;
	function isItem(something:Dynamic):Dynamic;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class CdfStore {
	function new(args:Dynamic):Void;
	var data : Dynamic;
	var identity : String;
	var label : String;
	var mode : Float;
	var url : String;
	var xmlStr : String;
	@:overload(function(args:String):Void { })
	function byId(args:Dynamic):Void;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, property:String, value:Dynamic):Bool;
	function deleteItem(item:Dynamic):Bool;
	function fetch(request:String):Dynamic;
	@:overload(function(args:String):Dynamic { })
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, property:String):Bool;
	function hasProperty(item:Dynamic, property:String):Dynamic;
	function isDirty(item:Dynamic):Bool;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	@:overload(function(keywordArgs:Dynamic, parentInfo:String):Dynamic { })
	function newItem(keywordArgs:Dynamic, parentInfo:Dynamic):Dynamic;
	function revert():Bool;
	function setValue(item:Dynamic, property:String, value:Dynamic):Bool;
	function setValues(item:Dynamic, property:String, values:Array<Dynamic>):Dynamic;
	function unsetAttribute(item:Dynamic, property:String):Bool;
}
extern class ClientFilter {
	function new():Void;
	var cacheByDefault : Bool;
	var serverVersion : Float;
	function cachingFetch(args:Dynamic):Dynamic;
	function clearCache():Void;
	function clientSideFetch(request:Dynamic, baseResults:Array<Dynamic>):Dynamic;
	function clientSidePaging(request:Dynamic, baseResults:Array<Dynamic>):Array<Dynamic>;
	function isUpdateable(request:Dynamic):Bool;
	function makeComparator(sort:Dynamic):haxe.Constraints.Function;
	function matchesQuery(item:Dynamic, request:Dynamic):Bool;
	function querySuperSet(argsSuper:Dynamic, argsSub:Dynamic):Dynamic;
	function updateResultSet(resultSet:Array<Dynamic>, request:Dynamic):Dynamic;
	function onUpdate():Void;
}
extern class CouchDBRestStore {
	function new():Void;
	function fetch(args:Dynamic):Dynamic;
	function getStores(couchServerUrl:Dynamic):Void;
	function save(kwArgs:Dynamic):Void;
}
extern class CssClassStore extends dojox.data.CssRuleStore {
	function new(keywordParameters:Dynamic):Void;
	function close():Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function fetch(request:Dynamic):String;
	function fetchItemByIdentity(request:Dynamic):String;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function setContext(context:Array<Dynamic>):Void;
}
extern class CssRuleStore {
	function new(keywordParameters:Dynamic):Void;
	function close():Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function fetch(request:Dynamic):String;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function setContext(context:Array<Dynamic>):Void;
}
extern class CsvStore {
	function new(keywordParameters:Dynamic):Void;
	var identifier : String;
	var label : String;
	var separator : String;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	@:overload(function(item:Dynamic, attribute:String, value:Dynamic):Dynamic { })
	function containsValue(item:Dynamic, attribute:Attr, value:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	@:overload(function(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic { })
	function getValue(item:Dynamic, attribute:Attr, defaultValue:Dynamic):Dynamic;
	@:overload(function(item:Dynamic, attribute:String):Array<Dynamic> { })
	function getValues(item:Dynamic, attribute:Attr):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(item:Dynamic):Void;
}
extern class FileStore {
	function new(args:Dynamic):Void;
	var failOk : Bool;
	var label : String;
	var options : Array<Dynamic>;
	var pathAsQueryParam : Bool;
	var pathSeparator : String;
	var url : String;
	var urlPreventCache : String;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function fetch(request:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Bool;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class FlickrRestStore extends dojox.data.FlickrStore {
	function new(args:Dynamic):Void;
	var label : String;
	var urlPreventCache : Bool;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Dynamic;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class FlickrStore {
	function new(args:Dynamic):Void;
	var label : String;
	var urlPreventCache : Bool;
	var urlRegistry : Dynamic;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Dynamic;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class GoogleFeedStore {
	function new(args:Dynamic):Void;
	var label : String;
	var urlPreventCache : Bool;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function fetch(request:Dynamic):Void;
	function getAttributes(item:Dynamic):Dynamic;
	function getFeatures():Dynamic;
	function getFeedValue(attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getFeedValues(attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Dynamic;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class HtmlStore {
	function new(args:Dynamic):Void;
	var dataId : String;
	var fetchOnCreate : Bool;
	var trimWhitespace : Bool;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(something:Dynamic):Dynamic;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class HtmlTableStore {
	function new(args:Dynamic):Void;
	var tableId : String;
	var url : String;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class JsonQueryRestStore extends dojox.data.JsonRestStore {
	function new(?options:Dynamic):Void;
	var allowNoTrailingSlash : Bool;
	var estimateCountFactor : Float;
	var idAsRef : Bool;
	var idAttribute : String;
	var jsonQueryPagination : Bool;
	var labelAttribute : String;
	var loadLazyValues : Bool;
	var loadReferencedSchema : Bool;
	var referenceIntegrity : Bool;
	var schema : Dynamic;
	var service : Dynamic;
	var syncMode : Bool;
	var target : String;
	var useFullIdInQueries : Bool;
	function cancelChanging(object:Dynamic):Void;
	function changing(item:Dynamic, _deleting:Dynamic):Void;
	function clientSideFetch(request:Dynamic, baseResults:Array<Dynamic>):Dynamic;
	function close(request:Dynamic):Dynamic;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function deleteItem(item:Dynamic):Void;
	function fetch(args:Dynamic):String;
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getConstructor():Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getParent(item:Dynamic):Dynamic;
	function getSchema():Dynamic;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isDirty(item:Dynamic):Dynamic;
	function isItem(item:Dynamic, anyStore:Bool):Dynamic;
	function isItemLoaded(item:Dynamic):Dynamic;
	function isUpdateable():Bool;
	function loadItem(args:Dynamic):Dynamic;
	function matchesQuery(item:Dynamic, request:Dynamic):Dynamic;
	function newItem(data:Dynamic, parentInfo:Dynamic):Dynamic;
	function querySuperSet(argsSuper:Dynamic, argsSub:Dynamic):Dynamic;
	function revert(kwArgs:Dynamic):Void;
	function save(kwArgs:Dynamic):Dynamic;
	function setValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Void;
	function setValues(item:Dynamic, attribute:Dynamic, values:Dynamic):Void;
	function unsetAttribute(item:Dynamic, attribute:Dynamic):Void;
	function onDelete():Void;
	function onNew():Void;
	function onSet():Void;
}
extern class JsonRestStore extends dojox.data.ServiceStore {
	function new(?options:Dynamic):Void;
	var allowNoTrailingSlash : Bool;
	var estimateCountFactor : Float;
	var idAsRef : Bool;
	var idAttribute : String;
	var labelAttribute : String;
	var loadLazyValues : Bool;
	var loadReferencedSchema : Bool;
	var referenceIntegrity : Bool;
	var schema : Dynamic;
	var service : Dynamic;
	var syncMode : Bool;
	var target : String;
	function cancelChanging(object:Dynamic):Void;
	function changing(item:Dynamic, _deleting:Dynamic):Void;
	function close(request:Dynamic):Dynamic;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function deleteItem(item:Dynamic):Void;
	function fetch(args:Dynamic):String;
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getConstructor():Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getParent(item:Dynamic):Dynamic;
	function getSchema():Dynamic;
	function getStore(options:Dynamic, Class:Dynamic):Void;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isDirty(item:Dynamic):Dynamic;
	function isItem(item:Dynamic, ?anyStore:Bool):Dynamic;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(args:Dynamic):Dynamic;
	function newItem(data:Dynamic, parentInfo:Dynamic):Dynamic;
	function revert(kwArgs:Dynamic):Void;
	function save(kwArgs:Dynamic):Dynamic;
	function setValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Void;
	function setValues(item:Dynamic, attribute:Dynamic, values:Dynamic):Void;
	function unsetAttribute(item:Dynamic, attribute:Dynamic):Void;
	function onDelete():Void;
	function onNew():Void;
	function onSet():Void;
}
extern class KeyValueStore {
	function new(keywordParameters:Dynamic):Void;
	var data : String;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class OpenSearchStore {
	function new(args:Dynamic):Void;
	var ATOM_CONTENT_TYPE : Float;
	var ATOM_CONTENT_TYPE_STRING : String;
	var iframeElement : Dynamic;
	var itemPath : String;
	var RSS_CONTENT_TYPE : Float;
	var RSS_CONTENT_TYPE_STRING : String;
	var url : String;
	var urlElement : Dynamic;
	var urlPreventCache : Bool;
	var XML_CONTENT_TYPE : Float;
	var XML_CONTENT_TYPE_STRING : String;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Dynamic;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function process(data:Dynamic):Dynamic;
	function processItem(item:Dynamic, attribute:Dynamic):Dynamic;
}
extern class OpmlStore {
	function new(keywordParameters:Dynamic):Void;
	var label : String;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	@:overload(function(item:Dynamic, attribute:String, value:Dynamic):Dynamic { })
	function containsValue(item:Dynamic, attribute:Attr, value:Dynamic):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	@:overload(function(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic { })
	function getValue(item:Dynamic, attribute:Attr, defaultValue:Dynamic):Dynamic;
	@:overload(function(item:Dynamic, attribute:String):Array<Dynamic> { })
	function getValues(item:Dynamic, attribute:Attr):Array<Dynamic>;
	@:overload(function(item:Dynamic, attribute:String):Bool { })
	function hasAttribute(item:Dynamic, attribute:Attr):Bool;
	function isItem(something:Dynamic):Dynamic;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(item:Dynamic):Void;
}
extern class PersevereStore {
	function new():Void;
	var jsonQueryPagination : Bool;
	var useFullIdInQueries : Bool;
	function addProxy():Void;
	function getStores(path:String, sync:Bool):Dynamic;
}
extern class PicasaStore {
	function new(args:Dynamic):Void;
	var label : String;
	var maxResults : Float;
	var urlPreventCache : Bool;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Dynamic;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class QueryReadStore {
	function new(params:Dynamic):Void;
	var doClientPaging : Bool;
	var doClientSorting : Bool;
	var lastRequestHash : Dynamic;
	var requestMethod : String;
	var url : String;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function fetch(request:Dynamic):String;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Dynamic;
	function isItem(something:Dynamic):Bool;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(args:Dynamic):Void;
}
extern class RailsStore {
	function new():Void;
	function fetch(args:Dynamic):Dynamic;
	function preamble(options:Dynamic):Void;
}
extern class S3Store extends dojox.data.JsonRestStore {
	function new(?options:Dynamic):Void;
	var allowNoTrailingSlash : Bool;
	var estimateCountFactor : Float;
	var idAsRef : Bool;
	var idAttribute : String;
	var labelAttribute : String;
	var loadLazyValues : Bool;
	var loadReferencedSchema : Bool;
	var referenceIntegrity : Bool;
	var schema : Dynamic;
	var service : Dynamic;
	var syncMode : Bool;
	var target : String;
	function cancelChanging(object:Dynamic):Void;
	function changing(item:Dynamic, _deleting:Dynamic):Void;
	function close(request:Dynamic):Dynamic;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function deleteItem(item:Dynamic):Void;
	function fetch(args:Dynamic):String;
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getConstructor():Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getParent(item:Dynamic):Dynamic;
	function getSchema():Dynamic;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isDirty(item:Dynamic):Dynamic;
	function isItem(item:Dynamic, anyStore:Bool):Dynamic;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(args:Dynamic):Dynamic;
	function newItem(data:Dynamic, parentInfo:Dynamic):Dynamic;
	function revert(kwArgs:Dynamic):Void;
	function save(kwArgs:Dynamic):Dynamic;
	function setValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Void;
	function setValues(item:Dynamic, attribute:Dynamic, values:Dynamic):Void;
	function unsetAttribute(item:Dynamic, attribute:Dynamic):Void;
	function onDelete():Void;
	function onNew():Void;
	function onSet():Void;
}
extern class ServiceStore {
	function new(?options:Dynamic):Void;
	var estimateCountFactor : Float;
	var idAttribute : String;
	var labelAttribute : String;
	var loadLazyValues : Bool;
	var schema : Dynamic;
	var service : Dynamic;
	var syncMode : Bool;
	function close(request:Dynamic):Dynamic;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function fetch(args:Dynamic):String;
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getSchema():Dynamic;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(args:Dynamic):Dynamic;
}
extern class SnapLogicStore {
	function new(args:Dynamic):Void;
	var Parts : Dynamic;
	var url : String;
	function close(request:Dynamic):Void;
	function containsValue(item:Dynamic, attribute:Dynamic, value:Dynamic):Bool;
	function fetch(request:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Dynamic;
	function getFeatures():Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Dynamic;
	function getValue(item:Dynamic, attribute:Dynamic, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, attribute:Dynamic):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:Dynamic):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class WikipediaStore extends dojox.data.ServiceStore {
	function new(options:Dynamic):Void;
	var estimateCountFactor : Float;
	var idAttribute : String;
	var labelAttribute : String;
	var loadLazyValues : Bool;
	var schema : Dynamic;
	var service : Dynamic;
	var syncMode : Bool;
	function close(request:Dynamic):Dynamic;
	function containsValue(item:Dynamic, attribute:String, value:Dynamic):Bool;
	function fetch(request:Dynamic):Dynamic;
	function fetchItemByIdentity(args:Dynamic):Dynamic;
	function getAttributes(item:Dynamic):Array<Dynamic>;
	function getFeatures():Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getIdentityAttributes(item:Dynamic):Array<Dynamic>;
	function getLabel(item:Dynamic):Dynamic;
	function getLabelAttributes(item:Dynamic):Array<Dynamic>;
	function getSchema():Dynamic;
	function getValue(item:Dynamic, property:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:Dynamic, property:String):Array<Dynamic>;
	function hasAttribute(item:Dynamic, attribute:String):Bool;
	function isItem(item:Dynamic):Bool;
	function isItemLoaded(item:Dynamic):Dynamic;
	function loadItem(args:Dynamic):Dynamic;
}
extern class XmlItem {
	function new(element:Dynamic, store:Dynamic, query:Dynamic):Void;
	function toString():Dynamic;
}
extern class XmlStore {
	function new(args:Dynamic):Void;
	var attributeMap : Dynamic;
	var keyAttribute : String;
	var label : String;
	var rootItem : String;
	var sendQuery : Bool;
	var url : String;
	var urlPreventCache : Bool;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	@:overload(function(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic { })
	function containsValue(item:dojo.data.api.Item, attribute:Attr, value:Dynamic):Dynamic;
	function deleteItem(item:dojo.data.api.Item):Dynamic;
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:dojo.data.api.Item):Dynamic;
	function getFeatures():Dynamic;
	function getIdentity(item:dojo.data.api.Item):Dynamic;
	function getIdentityAttributes(item:dojo.data.api.Item):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic { })
	function getValue(item:dojo.data.api.Item, attribute:Attr, defaultValue:Dynamic):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String):Dynamic { })
	function getValues(item:dojo.data.api.Item, attribute:Attr):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String):Dynamic { })
	function hasAttribute(item:dojo.data.api.Item, attribute:Attr):Dynamic;
	function isDirty(item:Dynamic):Dynamic;
	function isItem(something:Dynamic):Dynamic;
	function isItemLoaded(something:Dynamic):Dynamic;
	function loadItem(keywordArgs:Dynamic):Void;
	function newItem(keywordArgs:Dynamic, parentInfo:Dynamic):Dynamic;
	function revert():Dynamic;
	function save(keywordArgs:Dynamic):Void;
	@:overload(function(item:dojo.data.api.Item, attribute:String, value:Dynamic):Dynamic { })
	function setValue(item:dojo.data.api.Item, attribute:Attr, value:Dynamic):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String, values:Array<Dynamic>):Dynamic { })
	function setValues(item:dojo.data.api.Item, attribute:Attr, values:Array<Dynamic>):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String):Dynamic { })
	function unsetAttribute(item:dojo.data.api.Item, attribute:Attr):Dynamic;
}
