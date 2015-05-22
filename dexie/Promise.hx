extern class PromiseTopLevel {
	static function resolve<R>(?value:Thenable<R>):Promise<R>;
	static function resolve<R>(?value:R):Promise<R>;
	static function reject(error:Dynamic):Promise<Dynamic>;
	static function all<R>(promises:Array<Thenable<R>>):Promise<Array<R>>;
	static function all<R>(promises:haxe.extern.Rest<Thenable<R>>):Promise<Array<R>>;
	static function race<R>(promises:Array<Thenable<R>>):Promise<R>;
	static function newPSD<R>(scope:Void -> R):R;
	static var PSD : Dynamic;
	static var on : { var error : DexieErrorEvent; };
}
typedef Version = {
	function stores(schema:{ }):Version;
	function upgrade(fn:Transaction -> Void):Version;
};
typedef Transaction = {
	var active : Bool;
	var db : Dexie;
	var mode : String;
	var idbtrans : IDBTransaction;
	var tables : { };
	var storeNames : Array<String>;
	var on : { var complete : DexieEvent; var abort : DexieEvent; var error : DexieEvent; };
	function abort():Void;
	@:overload(function<T>(tableName:String):Table<T, Dynamic> { })
	@:overload(function<T, Key>(tableName:String):Table<T, Key> { })
	function table(tableName:String):Table<Dynamic, Dynamic>;
};
typedef DexieEvent = {
	function subscribe(fn:Void -> Dynamic):Void;
	function unsubscribe(fn:Void -> Dynamic):Void;
	function fire():Dynamic;
};
typedef DexieErrorEvent = {
	function subscribe(fn:Dynamic -> Dynamic):Void;
	function unsubscribe(fn:Dynamic -> Dynamic):Void;
	function fire(error:Dynamic):Dynamic;
};
typedef DexieVersionChangeEvent = {
	function subscribe(fn:IDBVersionChangeEvent -> Dynamic):Void;
	function unsubscribe(fn:IDBVersionChangeEvent -> Dynamic):Void;
	function fire(event:IDBVersionChangeEvent):Dynamic;
};
typedef DexieOnReadyEvent = {
	function subscribe(fn:Void -> Dynamic, bSticky:Bool):Void;
	function unsubscribe(fn:Void -> Dynamic):Void;
	function fire():Dynamic;
};
typedef Table<T, Key> = {
	var name : String;
	var schema : TableSchema;
	var hook : { var creating : DexieEvent; var reading : DexieEvent; var updating : DexieEvent; var deleting : DexieEvent; };
	function get(key:Key):Promise<T>;
	function where(index:String):WhereClause<T, Key>;
	function filter(fn:T -> Bool):Collection<T, Key>;
	@:overload(function<U>(onFulfilled:Float -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Float -> U):Promise<U> { })
	function count():Promise<Float>;
	function offset(n:Float):Collection<T, Key>;
	function limit(n:Float):Collection<T, Key>;
	function each(callback:T -> IDBCursor -> Dynamic):Promise<Void>;
	@:overload(function<U>(onFulfilled:Array<T> -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Array<T> -> U):Promise<U> { })
	function toArray():Promise<Array<T>>;
	function toCollection():Collection<T, Key>;
	function orderBy(index:String):Collection<T, Key>;
	function reverse():Collection<T, Key>;
	function mapToClass(constructor:haxe.Constraints.Function):haxe.Constraints.Function;
	function add(item:T, ?key:Key):Promise<Key>;
	function update(key:Key, changes:{ }):Promise<Float>;
	function put(item:T, ?key:Key):Promise<Key>;
	function delete(key:Key):Promise<Void>;
	function clear():Promise<Void>;
};
typedef WhereClause<T, Key> = {
	@:overload(function(key:String):Collection<T, Key> { })
	@:overload(function(key:Date):Collection<T, Key> { })
	@:overload(function(key:Array<Dynamic>):Collection<T, Key> { })
	function above(key:Float):Collection<T, Key>;
	@:overload(function(key:String):Collection<T, Key> { })
	@:overload(function(key:Date):Collection<T, Key> { })
	@:overload(function(key:Array<Dynamic>):Collection<T, Key> { })
	function aboveOrEqual(key:Float):Collection<T, Key>;
	@:overload(function(keys:haxe.extern.Rest<Dynamic>):Collection<T, Key> { })
	function anyOf(keys:Array<Dynamic>):Collection<T, Key>;
	@:overload(function(key:String):Collection<T, Key> { })
	@:overload(function(key:Date):Collection<T, Key> { })
	@:overload(function(key:Array<Dynamic>):Collection<T, Key> { })
	function below(key:Float):Collection<T, Key>;
	@:overload(function(key:String):Collection<T, Key> { })
	@:overload(function(key:Date):Collection<T, Key> { })
	@:overload(function(key:Array<Dynamic>):Collection<T, Key> { })
	function belowOrEqual(key:Float):Collection<T, Key>;
	@:overload(function(lower:String, upper:String, ?includeLower:Bool, ?includeUpper:Bool):Collection<T, Key> { })
	@:overload(function(lower:Date, upper:Date, ?includeLower:Bool, ?includeUpper:Bool):Collection<T, Key> { })
	@:overload(function(lower:Array<Dynamic>, upper:Array<Dynamic>, ?includeLower:Bool, ?includeUpper:Bool):Collection<T, Key> { })
	function between(lower:Float, upper:Float, ?includeLower:Bool, ?includeUpper:Bool):Collection<T, Key>;
	@:overload(function(key:String):Collection<T, Key> { })
	@:overload(function(key:Date):Collection<T, Key> { })
	@:overload(function(key:Array<Dynamic>):Collection<T, Key> { })
	function equals(key:Float):Collection<T, Key>;
	function equalsIgnoreCase(key:String):Collection<T, Key>;
	function startsWith(key:String):Collection<T, Key>;
	function startsWithIgnoreCase(key:String):Collection<T, Key>;
};
typedef Collection<T, Key> = {
	function and(filter:T -> Bool):Collection<T, Key>;
	@:overload(function<U>(onFulfilled:Float -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Float -> U):Promise<U> { })
	function count():Promise<Float>;
	function distinct():Collection<T, Key>;
	function each(callback:T -> IDBCursor -> Dynamic):Promise<Void>;
	function eachKey(callback:Key -> IDBCursor -> Dynamic):Promise<Void>;
	function eachUniqueKey(callback:Key -> IDBCursor -> Dynamic):Promise<Void>;
	@:overload(function<U>(onFulfilled:T -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:T -> U):Promise<U> { })
	function first():Promise<T>;
	@:overload(function<U>(onFulfilled:Array<Key> -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Array<Key> -> U):Promise<U> { })
	function keys():Promise<Array<Key>>;
	@:overload(function<U>(onFulfilled:T -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:T -> U):Promise<U> { })
	function last():Promise<T>;
	function limit(n:Float):Collection<T, Key>;
	function offset(n:Float):Collection<T, Key>;
	function or(indexOrPrimayKey:String):WhereClause<T, Key>;
	function reverse():Collection<T, Key>;
	@:overload(function<U>(keyPath:String, onFulfilled:Array<T> -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(keyPath:String, onFulfilled:Array<T> -> U):Promise<U> { })
	function sortBy(keyPath:String):Promise<Array<T>>;
	@:overload(function<U>(onFulfilled:Array<T> -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Array<T> -> U):Promise<U> { })
	function toArray():Promise<Array<T>>;
	@:overload(function<U>(onFulfilled:Array<Key> -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(onFulfilled:Array<Key> -> U):Promise<U> { })
	function uniqueKeys():Promise<Array<Key>>;
	function until(filter:T -> Bool, ?includeStopEntry:Bool):Collection<T, Key>;
	function delete():Promise<Float>;
	@:overload(function(changeCallback:T -> Void):Promise<Float> { })
	function modify(changes:{ }):Promise<Float>;
};
typedef TableSchema = {
	var name : String;
	var primKey : IndexSpec;
	var indexes : Array<IndexSpec>;
	var mappedClass : haxe.Constraints.Function;
};
typedef IndexSpec = {
	var name : String;
	var keyPath : Dynamic;
	var unique : Bool;
	var multi : Bool;
	var auto : Bool;
	var compound : Bool;
	var src : String;
};
