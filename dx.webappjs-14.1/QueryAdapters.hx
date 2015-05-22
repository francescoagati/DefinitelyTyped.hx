extern class QueryAdaptersTopLevel {
	static function odata(queryOptions:ODataQueryOptions):RemoteQuery;
}
typedef DataSourceOptions = {
	@:optional
	function map(item:Dynamic):Dynamic;
	@:optional
	function postProcess(result:Array<Dynamic>):Dynamic;
	var pageSize : Float;
	var paginate : Bool;
};
extern class DataSource {
	var changed : JQueryCallback;
	var loadError : JQueryCallback;
	var loadingChanged : JQueryCallback;
	@:overload(function(?options:String):Void { })
	@:overload(function(?options:Array<Dynamic>):Void { })
	@:overload(function(?options:{ var store : Store; }):Void { })
	@:overload(function(?options:CustomStoreOptions):Void { })
	@:overload(function(?options:{ var store : Array<Dynamic>; }):Void { })
	@:overload(function(?options:{ var store : { var type : String; }; }):Void { })
	@:overload(function(?options:{ function load(?options:LoadOptions):JQueryXHR; }):Void { })
	@:overload(function(?options:{ function load(?options:LoadOptions):Array<Dynamic>; }):Void { })
	@:overload(function(?options:{ function load(?options:LoadOptions):JQueryPromise<Dynamic>; }):Void { })
	@:overload(function(?options:DataSourceOptions):Void { })
	function new(?options:Store):Void;
	function loadOptions():{ };
	function items():Array<Dynamic>;
	function store():data.Store;
	function isLastPage():Bool;
	function pageIndex(?newIndex:Float):Float;
	function sort(expr:Array<Dynamic>):Array<Dynamic>;
	function group(expr:Array<Dynamic>):Array<Dynamic>;
	function filter(expr:Array<Dynamic>):Array<Dynamic>;
	function select(expr:Array<String>):Array<String>;
	function searchValue(?value:String):String;
	function searchOperation(?op:String):String;
	function searchExpr(selector:String):String;
	function key():Dynamic;
	function isLoaded():Bool;
	function isLoading():Bool;
	function totalCount():Float;
	function load():JQueryPromise<Dynamic>;
	function dispose():Void;
}
typedef StoreOptions = {
	@:optional
	var key : Dynamic;
	@:optional
	var errorHandler : ErrorHandler;
	@:optional
	var loaded : Array<Dynamic> -> Void;
	@:optional
	var loading : LoadOptions -> Void;
	@:optional
	var modified : Void -> Void;
	@:optional
	var modifying : Void -> Void;
	@:optional
	var inserted : Dynamic -> Dynamic -> Void;
	@:optional
	var inserting : Dynamic -> Void;
	@:optional
	var updated : Dynamic -> Dynamic -> Void;
	@:optional
	var updating : Dynamic -> Dynamic -> Void;
	@:optional
	var removed : Dynamic -> Void;
	@:optional
	var removing : Dynamic -> Void;
};
typedef LoadOptions = {
	>QueryOptions,
	@:optional
	var skip : Float;
	@:optional
	var take : Float;
	@:optional
	var sort : Dynamic;
	@:optional
	var select : Dynamic;
	@:optional
	var filter : Dynamic;
	@:optional
	var group : Dynamic;
	@:optional
	var expand : Dynamic;
};
extern class Store {
	var loaded : JQueryCallback;
	var loading : JQueryCallback;
	var modified : JQueryCallback;
	var modifying : JQueryCallback;
	var inserted : JQueryCallback;
	var inserting : JQueryCallback;
	var updated : JQueryCallback;
	var updating : JQueryCallback;
	var removed : JQueryCallback;
	var removing : JQueryCallback;
	function new(?options:StoreOptions):Void;
	function key():Dynamic;
	function keyOf(obj:Dynamic):Dynamic;
	function load(?options:LoadOptions):JQueryPromise<Array<Dynamic>>;
	function createQuery(?options:QueryOptions):IQuery;
	function totalCount(?options:{ @:optional
	var filter : Array<Dynamic>; @:optional
	var group : Array<String>; }):JQueryPromise<Float>;
	function byKey(key:Dynamic, ?extraOptions:{ @:optional
	var expand : Array<String>; }):JQueryPromise<Dynamic>;
	function remove(key:Dynamic):JQueryPromise<Dynamic>;
	function insert(values:Dynamic):JQueryPromise<Dynamic>;
	function update(key:Dynamic, values:Dynamic):JQueryPromise<Dynamic>;
}
typedef CustomStoreOptions = {
	>StoreOptions,
	@:optional
	function load(?options:LoadOptions):Dynamic;
	@:optional
	function byKey(key:Dynamic):Dynamic;
	@:optional
	function insert(values:Dynamic):Dynamic;
	@:optional
	function update(key:Dynamic, values:Dynamic):Dynamic;
	@:optional
	function remove(key:Dynamic):Dynamic;
	@:optional
	function totalCount(?options:{ @:optional
	var filter : Array<Dynamic>; @:optional
	var group : Array<String>; }):Dynamic;
};
extern class CustomStore extends Store {
	function new(?options:CustomStoreOptions):Void;
}
typedef ArrayStoreOptions = {
	>StoreOptions,
	@:optional
	var data : Array<Dynamic>;
};
extern class ArrayStore extends Store {
	@:overload(function(?options:ArrayStoreOptions):Void { })
	function new(?options:Array<Dynamic>):Void;
}
typedef LocalStoreOptions = {
	>ArrayStoreOptions,
	var name : String;
};
extern class LocalStore extends ArrayStore {
	@:overload(function(?options:LocalStoreOptions):Void { })
	function new(?options:String):Void;
	function clear():Void;
}
typedef ODataStoreOptions = {
	>StoreOptions,
	@:optional
	var url : String;
	@:optional
	var name : String;
	@:optional
	var keyType : String;
	@:optional
	var jsonp : Bool;
	@:optional
	var withCredentials : Bool;
};
extern class ODataStore extends Store {
	function new(?options:ODataStoreOptions):Void;
}
typedef ODataContextOptions = {
	var url : String;
	@:optional
	var jsonp : Bool;
	@:optional
	var withCredentials : Bool;
	@:optional
	var errorHandler : ErrorHandler;
	@:optional
	var beforeSend : Void -> Dynamic;
	@:optional
	var entities : { };
};
extern class ODataContext {
	function new(?options:ODataContextOptions):Void;
	function get(operationName:String, params:{ }):JQueryPromise<Array<Dynamic>>;
	function invoke(operationName:String, params:{ }, ?httpMethod:String):JQueryPromise<Array<Dynamic>>;
	function objectLink(entityAlias:String, key:Dynamic):{ var __metadata : { var uri : String; }; };
}
