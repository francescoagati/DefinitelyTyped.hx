typedef OpenCallback = { };
typedef QueryCallback<T> = { };
typedef QueryRawCallback = { };
typedef QueryRawResult = {
	var meta : Array<QueryRawColumn>;
	var rows : Array<Array<Dynamic>>;
};
typedef QueryRawColumn = {
	@:optional
	var name : String;
};
typedef ErrorCallback = { };
typedef Connection = {
	@:overload(function(query:String, callback:QueryCallback<Dynamic>):StreamEvents { })
	@:overload(function(query:String, params:Array<Dynamic>):StreamEvents { })
	@:overload(function(query:String, params:Array<Dynamic>, callback:QueryCallback<Dynamic>):StreamEvents { })
	@:overload(function<T>(query:String, callback:QueryCallback<T>):StreamEvents { })
	@:overload(function<T>(query:String, params:Array<Dynamic>, callback:QueryCallback<T>):StreamEvents { })
	function query(query:String):StreamEvents;
	@:overload(function(query:String, callback:QueryRawCallback):StreamEvents { })
	@:overload(function(query:String, params:Array<Dynamic>):StreamEvents { })
	@:overload(function(query:String, params:Array<Dynamic>, callback:QueryRawCallback):StreamEvents { })
	function queryRaw(query:String):StreamEvents;
	function beginTransaction(?callback:ErrorCallback):Dynamic;
	function commit(?callback:ErrorCallback):Dynamic;
	function rollback(?callback:ErrorCallback):Dynamic;
	@:overload(function(immediately:Bool, ?callback:ErrorCallback):Dynamic { })
	function close(?callback:ErrorCallback):Dynamic;
};
typedef StreamEvents = {
	>events.EventEmitter,
};
extern class MsnodesqlTopLevel {
	static function open(connectionString:String, ?callback:OpenCallback):Connection;
	static function query(connectionString:String, query:String):StreamEvents;
	static function query(connectionString:String, query:String, callback:QueryCallback<Dynamic>):StreamEvents;
	static function query(connectionString:String, query:String, params:Array<Dynamic>):StreamEvents;
	static function query(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryCallback<Dynamic>):StreamEvents;
	static function query<T>(connectionString:String, query:String, callback:QueryCallback<T>):StreamEvents;
	static function query<T>(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryCallback<T>):StreamEvents;
	static function queryRaw(connectionString:String, query:String):StreamEvents;
	static function queryRaw(connectionString:String, query:String, callback:QueryRawCallback):StreamEvents;
	static function queryRaw(connectionString:String, query:String, params:Array<Dynamic>):StreamEvents;
	static function queryRaw(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryRawCallback):StreamEvents;
}
extern class MsnodesqlTopLevel {
	static function open(connectionString:String, ?callback:OpenCallback):Connection;
	static function query(connectionString:String, query:String):StreamEvents;
	static function query(connectionString:String, query:String, callback:QueryCallback<Dynamic>):StreamEvents;
	static function query(connectionString:String, query:String, params:Array<Dynamic>):StreamEvents;
	static function query(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryCallback<Dynamic>):StreamEvents;
	static function query<T>(connectionString:String, query:String, callback:QueryCallback<T>):StreamEvents;
	static function query<T>(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryCallback<T>):StreamEvents;
	static function queryRaw(connectionString:String, query:String):StreamEvents;
	static function queryRaw(connectionString:String, query:String, callback:QueryRawCallback):StreamEvents;
	static function queryRaw(connectionString:String, query:String, params:Array<Dynamic>):StreamEvents;
	static function queryRaw(connectionString:String, query:String, params:Array<Dynamic>, callback:QueryRawCallback):StreamEvents;
}
