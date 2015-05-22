typedef ODataError = {
	>Error,
	@:optional
	var httpStatus : Float;
	@:optional
	var errorDetails : Dynamic;
};
typedef StoreOptions = {
	@:optional
	var inserted : Dynamic -> Dynamic -> Void;
	@:optional
	var inserting : Dynamic -> Void;
	@:optional
	var loaded : Array<Dynamic> -> Void;
	@:optional
	var loading : LoadOptions -> Void;
	@:optional
	var modified : Void -> Void;
	@:optional
	var modifying : Void -> Void;
	@:optional
	var removed : Dynamic -> Void;
	@:optional
	var removing : Dynamic -> Void;
	@:optional
	var updated : Dynamic -> Dynamic -> Void;
	@:optional
	var updating : Dynamic -> Dynamic -> Void;
	@:optional
	var onModified : Void -> Void;
	@:optional
	var onModifying : Void -> Void;
	@:optional
	var onRemoved : Dynamic -> Void;
	@:optional
	var onRemoving : Dynamic -> Void;
	@:optional
	var onUpdated : Dynamic -> Dynamic -> Void;
	@:optional
	var onUpdating : Dynamic -> Dynamic -> Void;
	@:optional
	var onLoaded : Array<Dynamic> -> Void;
	@:optional
	var onLoading : LoadOptions -> Void;
	@:optional
	var onInserted : Dynamic -> Dynamic -> Void;
	@:optional
	var onInserting : Dynamic -> Void;
	@:optional
	var errorHandler : Error -> Void;
	@:optional
	var key : Dynamic;
};
typedef LoadOptions = {
	@:optional
	var filter : Dynamic;
	@:optional
	var sort : Dynamic;
	@:optional
	var select : Dynamic;
	@:optional
	var group : Dynamic;
	@:optional
	var skip : Float;
	@:optional
	var take : Float;
	@:optional
	var userData : Dynamic;
	@:optional
	var requireTotalCount : Bool;
};
extern class Store {
	var inserted : JQueryCallback;
	var inserting : JQueryCallback;
	var loaded : JQueryCallback;
	var loading : JQueryCallback;
	var modified : JQueryCallback;
	var modifying : JQueryCallback;
	var removed : JQueryCallback;
	var removing : JQueryCallback;
	var updated : JQueryCallback;
	var updating : JQueryCallback;
	function new(?options:StoreOptions):Void;
	function byKey(key:Dynamic, ?extraOptions:Dynamic):JQueryPromise<Dynamic>;
	function insert(values:Dynamic):JQueryPromise<Dynamic>;
	function key():Dynamic;
	function keyOf(obj:Dynamic):Dynamic;
	function load(?obj:LoadOptions):JQueryPromise<Array<Dynamic>>;
	function remove(key:Dynamic):JQueryPromise<Dynamic>;
	function totalCount(?obj:{ @:optional
	var filter : Dynamic; @:optional
	var select : Dynamic; @:optional
	var group : Dynamic; @:optional
	var sort : Dynamic; }):JQueryPromise<Dynamic>;
	function update(key:Dynamic, values:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function(eventName:Removed, eventHandler:Dynamic -> Void):Store { })
	@:overload(function(eventName:Updating, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Updated, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Inserting, eventHandler:Dynamic -> Void):Store { })
	@:overload(function(eventName:Inserted, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Modifying, eventHandler:Void -> Void):Store { })
	@:overload(function(eventName:Modified, eventHandler:Void -> Void):Store { })
	@:overload(function(eventName:Loading, eventHandler:LoadOptions -> Void):Store { })
	@:overload(function(eventName:Loaded, eventHandler:Array<Dynamic> -> Void):Store { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):Store { })
	@:overload(function(events:{ }):Store { })
	function on(eventName:Removing, eventHandler:Dynamic -> Void):Store;
	@:overload(function(eventName:Removed):Store { })
	@:overload(function(eventName:Updating):Store { })
	@:overload(function(eventName:Updated):Store { })
	@:overload(function(eventName:Inserting):Store { })
	@:overload(function(eventName:Inserted):Store { })
	@:overload(function(eventName:Modifying):Store { })
	@:overload(function(eventName:Modified):Store { })
	@:overload(function(eventName:Loading):Store { })
	@:overload(function(eventName:Loaded):Store { })
	@:overload(function(eventName:String):Store { })
	@:overload(function(eventName:Removing, eventHandler:Dynamic -> Void):Store { })
	@:overload(function(eventName:Removed, eventHandler:Dynamic -> Void):Store { })
	@:overload(function(eventName:Updating, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Updated, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Inserting, eventHandler:Dynamic -> Void):Store { })
	@:overload(function(eventName:Inserted, eventHandler:Dynamic -> Dynamic -> Void):Store { })
	@:overload(function(eventName:Modifying, eventHandler:Void -> Void):Store { })
	@:overload(function(eventName:Modified, eventHandler:Void -> Void):Store { })
	@:overload(function(eventName:Loading, eventHandler:LoadOptions -> Void):Store { })
	@:overload(function(eventName:Loaded, eventHandler:Array<Dynamic> -> Void):Store { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):Store { })
	function off(eventName:Removing):Store;
}
typedef ArrayStoreOptions = {
	>StoreOptions,
	@:optional
	var data : Array<Dynamic>;
};
extern class ArrayStore extends Store {
	function new(?options:ArrayStoreOptions):Void;
	function clear():Void;
	function createQuery():Query;
}
typedef Promise = {
	function then(?doneFn:haxe.Constraints.Function, ?failFn:haxe.Constraints.Function, ?progressFn:haxe.Constraints.Function):Promise;
};
typedef CustomStoreOptions = {
	>StoreOptions,
	@:optional
	var byKey : Dynamic -> Promise;
	@:optional
	var lookup : Dynamic -> Promise;
	@:optional
	var insert : Dynamic -> Promise;
	@:optional
	var load : ?LoadOptions -> Promise;
	@:optional
	var remove : Dynamic -> Promise;
	@:optional
	var totalCount : Void -> Promise;
	@:optional
	var update : Dynamic -> Dynamic -> Promise;
};
extern class CustomStore extends Store {
	function new(options:CustomStoreOptions):Void;
}
typedef DataSourceOptions = {
	@:optional
	var filter : Dynamic;
	@:optional
	var group : Dynamic;
	@:optional
	var map : Dynamic -> Dynamic;
	@:optional
	var pageSize : Float;
	@:optional
	var paginate : Bool;
	@:optional
	var postProcess : Array<Dynamic> -> Array<Dynamic>;
	@:optional
	var searchExpr : Dynamic;
	@:optional
	var searchOperation : String;
	@:optional
	var searchValue : Dynamic;
	@:optional
	var select : Dynamic;
	@:optional
	var sort : Dynamic;
	@:optional
	var store : Dynamic;
	@:optional
	var onChanged : Void -> Void;
	@:optional
	var onLoadingChanged : Bool -> Void;
	@:optional
	var onLoadError : ?Error -> Void;
};
extern class DataSource {
	function new(?options:DataSourceOptions):Void;
	var changed : JQueryCallback;
	var loadError : JQueryCallback;
	var loadingChanged : JQueryCallback;
	function dispose():Void;
	@:overload(function(filterExpr:Dynamic):Void { })
	function filter():Dynamic;
	@:overload(function(groupExpr:Dynamic):Void { })
	function group():Dynamic;
	function isLastPage():Bool;
	function isLoaded():Bool;
	function isLoading():Bool;
	function items():Array<Dynamic>;
	function key():Dynamic;
	function load():JQueryPromise<Array<Dynamic>>;
	function loadOptions():Dynamic;
	@:overload(function(value:Float):Void { })
	function pageSize():Float;
	@:overload(function(newIndex:Float):Void { })
	function pageIndex():Float;
	@:overload(function(value:Bool):Void { })
	function paginate():Bool;
	@:overload(function(expr:Dynamic):Void { })
	function searchExpr():Dynamic;
	@:overload(function(op:String):Void { })
	function searchOperation():String;
	@:overload(function(value:Dynamic):Void { })
	function searchValue():Dynamic;
	@:overload(function(expr:Dynamic):Void { })
	function select():Dynamic;
	@:overload(function(sortExpr:Dynamic):Void { })
	function sort():Dynamic;
	function store():Store;
	function totalCount():Float;
	@:overload(function(eventName:LoadError, eventHandler:?Error -> Void):DataSource { })
	@:overload(function(eventName:Changed, eventHandler:Void -> Void):DataSource { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):DataSource { })
	@:overload(function(events:{ }):DataSource { })
	function on(eventName:LoadingChanged, eventHandler:Bool -> Void):DataSource;
	@:overload(function(eventName:LoadError):DataSource { })
	@:overload(function(eventName:Changed):DataSource { })
	@:overload(function(eventName:String):DataSource { })
	@:overload(function(eventName:LoadingChanged, eventHandler:Bool -> Void):DataSource { })
	@:overload(function(eventName:LoadError, eventHandler:?Error -> Void):DataSource { })
	@:overload(function(eventName:Changed, eventHandler:Void -> Void):DataSource { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):DataSource { })
	function off(eventName:LoadingChanged):DataSource;
}
extern class EdmLiteral {
	function valueOf():String;
}
extern class Guid {
	@:overload(function():Void { })
	function new(value:String):Void;
	function toString():String;
	function valueOf():String;
}
typedef LocalStoreOptions = {
	>ArrayStoreOptions,
	@:optional
	var flushInterval : Float;
	@:optional
	var immediate : Bool;
	@:optional
	var name : String;
};
extern class LocalStore extends ArrayStore {
	function new(?options:LocalStoreOptions):Void;
	function clear():Void;
}
typedef ODataContextOptions = {
	>ODataStoreOptions,
	@:optional
	var entities : Dynamic;
	@:optional
	var errorHandler : Error -> Void;
};
extern class ODataContext {
	function new(?options:ODataContextOptions):Void;
	function get(operationName:String, params:Dynamic):JQueryPromise<Dynamic>;
	function invoke(operationName:String, params:Dynamic, httpMethod:Dynamic):JQueryPromise<Dynamic>;
	function objectLink(entityAlias:String, key:Dynamic):Dynamic;
}
typedef ODataStoreOptions = {
	>StoreOptions,
	@:optional
	var beforeSend : Dynamic -> Void;
	@:optional
	var jsonp : Bool;
	@:optional
	var keyType : Dynamic;
	@:optional
	var url : String;
	@:optional
	var version : Float;
	@:optional
	var withCredentials : Bool;
};
extern class ODataStore extends Store {
	function new(?options:ODataStoreOptions):Void;
	function createQuery(loadOptions:Dynamic):Dynamic;
}
typedef Query = {
	@:overload(function(seed:Dynamic, step:Dynamic -> Dynamic -> Dynamic, finalize:Dynamic -> Dynamic):JQueryPromise<Dynamic> { })
	function aggregate(step:Dynamic -> Dynamic -> Dynamic):JQueryPromise<Dynamic>;
	@:overload(function():JQueryPromise<Dynamic> { })
	function avg(getter:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function():JQueryPromise<Dynamic> { })
	function max(getter:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function(getter:Dynamic):JQueryPromise<Dynamic> { })
	function min():JQueryPromise<Dynamic>;
	function count():JQueryPromise<Dynamic>;
	function enumerate():JQueryPromise<Dynamic>;
	function filter(criteria:Array<Dynamic>):Query;
	function groupBy(getter:Dynamic):Query;
	function select(getter:Dynamic):Query;
	function slice(skip:Float, ?take:Float):Query;
	@:overload(function(getter:Dynamic):Query { })
	function sortBy(getter:Dynamic, desc:Bool):Query;
	@:overload(function():JQueryPromise<Dynamic> { })
	function sum(getter:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function(getter:Dynamic, desc:Bool):Query { })
	function thenBy(getter:Dynamic):Query;
	function toArray():Array<Dynamic>;
};
extern class DataTopLevel {
	static var errorHandler : Error -> Void;
	static function base64_encode(input:Dynamic):String;
	static function query(array:Array<Dynamic>):Query;
	static function query(url:String, queryOptions:Dynamic):Query;
	static var utils : { function compileGetter(expr:Dynamic):haxe.Constraints.Function; function compileSetter(expr:Dynamic):haxe.Constraints.Function; var odata : { var keyConverters : { function String(value:Dynamic):String; function Int32(value:Dynamic):Float; function Int64(value:Dynamic):EdmLiteral; function Guid(value:Dynamic):Guid; function Boolean(value:Dynamic):Bool; function Single(value:Dynamic):EdmLiteral; function Decimal(value:Dynamic):EdmLiteral; }; }; };
}
