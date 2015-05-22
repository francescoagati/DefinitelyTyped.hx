extern class NeDBDataStore {
	@:overload(function(path:String):Void { })
	@:overload(function(options:NeDB.DataStoreOptions):Void { })
	function new():Void;
	var persistence : NeDB.Persistence;
	function loadDatabase(?cb:Error -> Void):Void;
	function getAllData():Array<Dynamic>;
	function resetIndexes(newData:Dynamic):Void;
	function ensureIndex(options:NeDB.EnsureIndexOptions, ?cb:Error -> Void):Void;
	function removeIndex(fieldName:String, ?cb:Error -> Void):Void;
	@:overload(function<T>(doc:Array<T>):Void { })
	function addToIndexes<T>(doc:T):Void;
	@:overload(function<T>(doc:Array<T>):Void { })
	function removeFromIndexes<T>(doc:T):Void;
	@:overload(function<T>(updates:Array<{ var oldDoc : T; var newDoc : T; }>):Void { })
	function updateIndexes<T>(oldDoc:T, newDoc:T):Void;
	function getCandidates(query:Dynamic):Void;
	function insert<T>(newDoc:T, ?cb:Error -> T -> Void):Void;
	@:overload(function(query:Dynamic):NeDB.CursorCount { })
	function count(query:Dynamic, callback:Error -> Float -> Void):Void;
	@:overload(function<T>(query:Dynamic, projection:T):NeDB.Cursor<T> { })
	@:overload(function<T>(query:Dynamic, callback:Error -> Array<T> -> Void):Void { })
	@:overload(function<T>(query:Dynamic):NeDB.Cursor<T> { })
	function find<T>(query:Dynamic, projection:T, callback:Error -> Array<T> -> Void):Void;
	@:overload(function<T>(query:Dynamic, callback:Error -> T -> Void):Void { })
	function findOne<T>(query:Dynamic, projection:T, callback:Error -> T -> Void):Void;
	function update(query:Dynamic, updateQuery:Dynamic, ?options:NeDB.UpdateOptions, ?cb:Error -> Float -> Bool -> Void):Void;
	@:overload(function(query:Dynamic, ?cb:Error -> Float -> Void):Void { })
	function remove(query:Dynamic, options:NeDB.RemoveOptions, ?cb:Error -> Float -> Void):Void;
}
