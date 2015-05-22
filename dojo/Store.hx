extern class PutDirectives {
	function new():Void;
	var before : Dynamic;
	var id : String;
	var overwrite : Bool;
	var parent : Dynamic;
}
extern class QueryOptions {
	function new():Void;
	var count : Float;
	var sort : Dynamic;
	var start : Float;
}
extern class QueryResults {
	function new():Void;
	var total : Float;
	function filter(callback:Dynamic, thisObject:Dynamic):dojo.store.api.Store.QueryResults;
	function forEach(callback:Dynamic, thisObject:Dynamic):Void;
	function map(callback:Dynamic, thisObject:Dynamic):dojo.store.api.Store.QueryResults;
	function observe(listener:haxe.Constraints.Function, includeAllUpdates:Dynamic):Void;
	function then(callback:Dynamic, errorHandler:Dynamic):Void;
}
extern class SortInformation {
	function new():Void;
	var attribute : String;
	var descending : Bool;
}
extern class Transaction {
	function new():Void;
	function abort(callback:Dynamic, thisObject:Dynamic):Void;
	function commit():Void;
}
