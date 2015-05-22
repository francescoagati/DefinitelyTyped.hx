extern class Item {
	function new():Void;
}
extern class Identity extends dojo.data.api.Read {
	function new():Void;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Void;
	function fetch(keywordArgs:Dynamic):Dynamic;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getAttributes(item:dojo.data.api.Item):Void;
	function getFeatures():Dynamic;
	function getIdentity(item:dojo.data.api.Item):Void;
	function getIdentityAttributes(item:dojo.data.api.Item):Void;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Void;
	function isItem(something:Dynamic):Void;
	function isItemLoaded(something:Dynamic):Void;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class Request {
	function new():Void;
	function abort():Void;
}
extern class Notification extends dojo.data.api.Read {
	function new():Void;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Void;
	function fetch(keywordArgs:Dynamic):Dynamic;
	function getAttributes(item:dojo.data.api.Item):Void;
	function getFeatures():Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Void;
	function isItem(something:Dynamic):Void;
	function isItemLoaded(something:Dynamic):Void;
	function loadItem(keywordArgs:Dynamic):Void;
	function onDelete(deletedItem:dojo.data.api.Item):Dynamic;
	function onNew(newItem:dojo.data.api.Item, parentInfo:Dynamic):Dynamic;
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Dynamic { })
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Dynamic { })
	@:overload(function(item:dojo.data.api.Item, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Dynamic { })
	function onSet(item:dojo.data.api.Item, attribute:String, oldValue:Dynamic, newValue:Dynamic):Dynamic;
}
extern class Read {
	function new():Void;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Void;
	function fetch(keywordArgs:Dynamic):Dynamic;
	function getAttributes(item:dojo.data.api.Item):Void;
	function getFeatures():Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Void;
	function isItem(something:Dynamic):Void;
	function isItemLoaded(something:Dynamic):Void;
	function loadItem(keywordArgs:Dynamic):Void;
}
extern class Write extends dojo.data.api.Read {
	function new():Void;
	@:overload(function(request:Dynamic):Void { })
	function close(request:dojo.data.api.Request):Void;
	function containsValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Void;
	function deleteItem(item:dojo.data.api.Item):Void;
	function fetch(keywordArgs:Dynamic):Dynamic;
	function getAttributes(item:dojo.data.api.Item):Void;
	function getFeatures():Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getLabelAttributes(item:dojo.data.api.Item):Dynamic;
	function getValue(item:dojo.data.api.Item, attribute:String, defaultValue:Dynamic):Dynamic;
	function getValues(item:dojo.data.api.Item, attribute:String):Dynamic;
	function hasAttribute(item:dojo.data.api.Item, attribute:String):Void;
	function isDirty(item:Dynamic):Void;
	function isItem(something:Dynamic):Void;
	function isItemLoaded(something:Dynamic):Void;
	function loadItem(keywordArgs:Dynamic):Void;
	function newItem(keywordArgs:Dynamic, parentInfo:Dynamic):Void;
	function revert():Void;
	function save(keywordArgs:Dynamic):Dynamic;
	function setValue(item:dojo.data.api.Item, attribute:String, value:Dynamic):Void;
	function setValues(item:dojo.data.api.Item, attribute:String, values:Array<Dynamic>):Void;
	function unsetAttribute(item:dojo.data.api.Item, attribute:String):Void;
}
extern class Store {
	function new():Void;
	var idProperty : String;
	function queryEngine(query:Dynamic, options:dojo.store.api.Store.QueryOptions):Dynamic;
	function add(object:Dynamic, directives:dojo.store.api.Store.PutDirectives):Dynamic;
	function get(id:Float):Dynamic;
	function getChildren(parent:Dynamic, options:dojo.store.api.Store.QueryOptions):dojo.store.api.Store.QueryResults;
	function getIdentity(object:Dynamic):Dynamic;
	function getMetadata(object:Dynamic):Dynamic;
	function put(object:Dynamic, directives:dojo.store.api.Store.PutDirectives):Dynamic;
	function PutDirectives():Void;
	@:overload(function(query:Dynamic, options:dojo.store.api.Store.QueryOptions):dojo.store.api.Store.QueryResults { })
	@:overload(function(query:haxe.Constraints.Function, options:dojo.store.api.Store.QueryOptions):dojo.store.api.Store.QueryResults { })
	function query(query:String, options:dojo.store.api.Store.QueryOptions):dojo.store.api.Store.QueryResults;
	function QueryOptions():Void;
	function QueryResults():Void;
	function remove(id:Float):Void;
	function SortInformation():Void;
	function transaction():dojo.store.api.Store.Transaction;
	function Transaction():Void;
}
