typedef ConnectOpts = {
	var adapter : String;
};
typedef Adapter = {
	var name : String;
	function createConnection(opts:ConnectOpts, ?callback:Error -> Connection -> Void):Connection;
	@:overload(function(query:Query):Query { })
	function createQuery(text:String, ?params:Array<Dynamic>, ?callback:Error -> ResultSet -> Void):Query;
};
typedef Field = {
	var name : String;
};
typedef ResultSet = {
	var rowCount : Float;
	var rows : Array<Dynamic>;
	var fields : Array<Field>;
	@:optional
	var fieldCount : Float;
	@:optional
	var lastInsertId : Dynamic;
	@:optional
	var affectedRows : Float;
	@:optional
	var changedRows : Float;
};
typedef Query = {
	>stream.Readable,
	var text : String;
	var values : Array<Dynamic>;
	var callback : Error -> ResultSet -> Void;
};
typedef Queryable = {
	>events.EventEmitter,
	var adapter : Adapter;
	function query(text:String, ?params:Array<Dynamic>, ?callback:Error -> ResultSet -> Void):Query;
};
typedef Connection = {
	>Queryable,
	function end(?callback:Error -> Void):Void;
};
typedef ConnectionStatic = {
	function new():Connection;
	var name : String;
	function createConnection():Void;
	function createPool():Void;
};
typedef ConnectionPool = {
	>Queryable,
	function query(text:String, ?params:Array<Dynamic>, ?callback:Error -> ResultSet -> Void):Query;
	function acquire(callback:Error -> Connection -> Void):Void;
	function release(connection:Connection):Void;
	function close(?callback:Error -> Void):Void;
};
typedef PoolConfig = {
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var idleTimeout : Float;
	@:optional
	var reapInterval : Float;
	@:optional
	var refreshIdle : Bool;
	@:optional
	var onConnect : Connection -> Error -> Connection -> Void -> Void;
	@:optional
	var reset : Connection -> Error -> Void -> Void;
	@:optional
	var shouldDestroyConnection : Error -> Bool;
};
extern class Any-dbTopLevel {
	static function createConnection(url:String, ?callback:Error -> Connection -> Void):Connection;
	static function createConnection(opts:ConnectOpts, ?callback:Error -> Connection -> Void):Connection;
	static function createPool(url:String, config:PoolConfig):ConnectionPool;
	static function createPool(opts:ConnectOpts, config:PoolConfig):ConnectionPool;
}
extern class Any-dbTopLevel {
	static function createConnection(url:String, ?callback:Error -> Connection -> Void):Connection;
	static function createConnection(opts:ConnectOpts, ?callback:Error -> Connection -> Void):Connection;
	static function createPool(url:String, config:PoolConfig):ConnectionPool;
	static function createPool(opts:ConnectOpts, config:PoolConfig):ConnectionPool;
}
