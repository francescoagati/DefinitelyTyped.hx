typedef ConnectionConfig = {
	@:optional
	var user : String;
	@:optional
	var database : String;
	@:optional
	var password : String;
	@:optional
	var port : Float;
	@:optional
	var host : String;
};
typedef Defaults = {
	>ConnectionConfig,
	@:optional
	var poolSize : Float;
	@:optional
	var poolIdleTimeout : Float;
	@:optional
	var reapIntervalMillis : Float;
	@:optional
	var binary : Bool;
	@:optional
	var parseInt8 : Bool;
};
typedef ClientConfig = {
	>ConnectionConfig,
	@:optional
	var ssl : Bool;
};
typedef QueryConfig = {
	@:optional
	var name : String;
	var text : String;
	@:optional
	var values : Array<Dynamic>;
};
typedef QueryResult = {
	var rows : Array<Dynamic>;
};
typedef ResultBuilder = {
	>QueryResult,
	var command : String;
	var rowCount : Float;
	var oid : Float;
	function addRow(row:Dynamic):Void;
};
extern class Client extends events.EventEmitter {
	@:overload(function(config:ClientConfig):Void { })
	function new(connection:String):Void;
	function connect(?callback:Error -> Void):Void;
	function end():Void;
	@:overload(function(config:QueryConfig, ?callback:Error -> QueryResult -> Void):Query { })
	@:overload(function(queryText:String, values:Array<Dynamic>, ?callback:Error -> QueryResult -> Void):Query { })
	function query(queryText:String, ?callback:Error -> QueryResult -> Void):Query;
	function copyFrom(queryText:String):stream.Writable;
	function copyTo(queryText:String):stream.Readable;
	function pauseDrain():Void;
	function resumeDrain():Void;
	@:overload(function(event:Error, listener:Error -> Void):Client { })
	@:overload(function(event:Notification, listener:Dynamic -> Void):Client { })
	@:overload(function(event:Notice, listener:Dynamic -> Void):Client { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Client { })
	function on(event:Drain, listener:Void -> Void):Client;
}
extern class Query extends events.EventEmitter {
	@:overload(function(event:Error, listener:Error -> Void):Query { })
	@:overload(function(event:End, listener:ResultBuilder -> Void):Query { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Query { })
	function on(event:Row, listener:Dynamic -> ?ResultBuilder -> Void):Query;
}
extern class Events extends events.EventEmitter {
	@:overload(function(event:String, listener:haxe.Constraints.Function):Events { })
	function on(event:Error, listener:Error -> Client -> Void):Events;
}
extern class PgTopLevel {
	static function connect(connection:String, callback:Error -> Client -> Void -> Void -> Void):Void;
	static function connect(config:ClientConfig, callback:Error -> Client -> Void -> Void -> Void):Void;
	static function end():Void;
}
extern class PgTopLevel {
	static function connect(connection:String, callback:Error -> Client -> Void -> Void -> Void):Void;
	static function connect(config:ClientConfig, callback:Error -> Client -> Void -> Void -> Void):Void;
	static function end():Void;
}
