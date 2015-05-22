typedef Cursor<T> = {
	function sort(query:Dynamic):Cursor<T>;
	function skip(n:Float):Cursor<T>;
	function limit(n:Float):Cursor<T>;
	function projection(query:Dynamic):Cursor<T>;
	function exec(callback:Error -> Array<T> -> Void):Void;
};
typedef CursorCount = {
	function exec(callback:Error -> Float -> Void):Void;
};
typedef DataStoreOptions = {
	@:optional
	var filename : String;
	@:optional
	var inMemoryOnly : Bool;
	@:optional
	var nodeWebkitAppName : Bool;
	@:optional
	var autoload : Bool;
	@:optional
	var onload : Error -> Dynamic;
	@:optional
	var afterSerialization : String -> String;
	@:optional
	var beforeDeserialization : String -> String;
	@:optional
	var corruptAlertThreshold : Float;
};
typedef UpdateOptions = {
	@:optional
	var multi : Bool;
	@:optional
	var upsert : Bool;
};
typedef RemoveOptions = {
	@:optional
	var multi : Bool;
};
typedef EnsureIndexOptions = {
	var fieldName : String;
	@:optional
	var unique : Bool;
	@:optional
	var sparse : Bool;
};
typedef Persistence = {
	function compactDatafile():Void;
	function setAutocompactionInterval(interval:Float):Void;
	function stopAutocompaction():Void;
};
