typedef IMySql = {
	@:overload(function(config:IConnectionConfig):IConnection { })
	function createConnection(connectionUri:String):IConnection;
	function createPool(config:IPoolConfig):IPool;
	function createPoolCluster(?config:IPoolClusterConfig):IPoolCluster;
	function escape(value:Dynamic):String;
	@:overload(function(sql:String, values:Array<Dynamic>):String { })
	function format(sql:String):String;
};
typedef IConnectionStatic = {
	@:overload(function(sql:String, callback:IError -> haxe.extern.Rest<Dynamic> -> Void):IQuery { })
	@:overload(function(sql:String, values:Array<Dynamic>):IQuery { })
	@:overload(function(sql:String, values:Array<Dynamic>, callback:IError -> haxe.extern.Rest<Dynamic> -> Void):IQuery { })
	function createQuery(sql:String):IQuery;
};
typedef IConnection = {
	var config : IConnectionConfig;
	var threadId : Float;
	function beginTransaction(callback:IError -> Void):Void;
	@:overload(function(callback:IError -> haxe.extern.Rest<Dynamic> -> Void):Void { })
	@:overload(function(options:Dynamic, ?callback:IError -> haxe.extern.Rest<Dynamic> -> Void):Void { })
	function connect():Void;
	function commit(callback:IError -> Void):Void;
	@:overload(function(options:IConnectionOptions, callback:IError -> Void):Void { })
	function changeUser(options:IConnectionOptions):Void;
	var query : IQueryFunction;
	@:overload(function(callback:IError -> haxe.extern.Rest<Dynamic> -> Void):Void { })
	@:overload(function(options:Dynamic, callback:IError -> haxe.extern.Rest<Dynamic> -> Void):Void { })
	function end():Void;
	function destroy():Void;
	function pause():Void;
	function release():Void;
	function resume():Void;
	function escape(value:Dynamic):String;
	@:overload(function(values:Array<String>):String { })
	function escapeId(value:String):String;
	@:overload(function(sql:String, values:Array<Dynamic>):String { })
	function format(sql:String):String;
	@:overload(function(ev:Error, callback:IError -> Void):IConnection { })
	function on(ev:String, callback:haxe.extern.Rest<Dynamic> -> Void):IConnection;
	function rollback(callback:Void -> Void):Void;
};
typedef IPool = {
	var config : IPoolConfig;
	function getConnection(callback:IError -> IConnection -> Void):Void;
	var query : IQueryFunction;
	@:overload(function(callback:IError -> haxe.extern.Rest<Dynamic> -> Void):Void { })
	function end():Void;
	@:overload(function(ev:Connection, callback:IConnection -> Void):IPool { })
	@:overload(function(ev:Error, callback:IError -> Void):IPool { })
	function on(ev:String, callback:haxe.extern.Rest<Dynamic> -> Void):IPool;
};
typedef IPoolCluster = {
	var config : IPoolClusterConfig;
	@:overload(function(group:String, config:IPoolConfig):Void { })
	function add(config:IPoolConfig):Void;
	function end():Void;
	@:overload(function(group:String, callback:IError -> IConnection -> Void):Void { })
	@:overload(function(group:String, selector:String, callback:IError -> IConnection -> Void):Void { })
	function getConnection(callback:IError -> IConnection -> Void):Void;
	@:overload(function(pattern:String, selector:String):IPool { })
	function of(pattern:String):IPool;
	@:overload(function(ev:Remove, callback:Float -> Void):IPoolCluster { })
	@:overload(function(ev:Connection, callback:IConnection -> Void):IPoolCluster { })
	@:overload(function(ev:Error, callback:IError -> Void):IPoolCluster { })
	function on(ev:String, callback:haxe.extern.Rest<Dynamic> -> Void):IPoolCluster;
};
typedef IQuery = {
	var sql : String;
	function start():Void;
	function determinePacket(firstByte:Float, parser:Dynamic):Dynamic;
	function stream(options:IStreamOptions):stream.Readable;
	function pipe(callback:haxe.extern.Rest<Dynamic> -> Void):IQuery;
	@:overload(function(ev:Error, callback:IError -> Void):IQuery { })
	@:overload(function(ev:Fields, callback:Dynamic -> Float -> Void):IQuery { })
	@:overload(function(ev:Result, callback:Dynamic -> Float -> Void):IQuery { })
	@:overload(function(ev:End, callback:Void -> Void):IQuery { })
	function on(ev:String, callback:haxe.extern.Rest<Dynamic> -> Void):IQuery;
};
typedef IQueryFunction = { };
typedef IQueryOptions = {
	var sql : String;
	@:optional
	var timeout : Float;
	@:optional
	var nestTables : Dynamic;
	@:optional
	var typeCast : Dynamic;
};
typedef IStreamOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var objectMode : Dynamic;
};
typedef IConnectionOptions = {
	@:optional
	var user : String;
	@:optional
	var password : String;
	@:optional
	var database : String;
	@:optional
	var charset : String;
};
typedef IConnectionConfig = {
	>IConnectionOptions,
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var localAddress : String;
	@:optional
	var socketPath : String;
	@:optional
	var timezone : String;
	@:optional
	var connectTimeout : Float;
	@:optional
	var stringifyObjects : Bool;
	@:optional
	var insecureAuth : Bool;
	@:optional
	var typeCast : Dynamic;
	@:optional
	var queryFormat : String -> Dynamic -> Void;
	@:optional
	var supportBigNumbers : Bool;
	@:optional
	var bigNumberStrings : Bool;
	@:optional
	var dateStrings : Bool;
	@:optional
	var debug : Dynamic;
	@:optional
	var trace : Bool;
	@:optional
	var multipleStatements : Bool;
	@:optional
	var flags : Array<String>;
	@:optional
	var ssl : Dynamic;
};
typedef IPoolConfig = {
	>IConnectionConfig,
	@:optional
	var acquireTimeout : Float;
	@:optional
	var waitForConnections : Bool;
	@:optional
	var connectionLimit : Float;
	@:optional
	var queueLimit : Float;
};
typedef IPoolClusterConfig = {
	@:optional
	var canRetry : Bool;
	@:optional
	var removeNodeErrorCount : Float;
	@:optional
	var defaultSelector : String;
};
typedef ISslCredentials = {
	@:optional
	var pfx : String;
	@:optional
	var key : String;
	@:optional
	var passphrase : String;
	@:optional
	var cert : String;
	@:optional
	var ca : Array<String>;
	@:optional
	var crl : Array<String>;
	@:optional
	var ciphers : String;
};
typedef IError = {
	>Error,
	var code : String;
	var errno : Float;
	@:optional
	var sqlStateMarker : String;
	@:optional
	var sqlState : String;
	@:optional
	var fieldCount : Float;
	@:optional
	var stack : String;
	var fatal : Bool;
};
extern class MysqlTopLevel {
	static function createConnection(connectionUri:String):IConnection;
	static function createConnection(config:IConnectionConfig):IConnection;
	static function createPool(config:IPoolConfig):IPool;
	static function createPoolCluster(?config:IPoolClusterConfig):IPoolCluster;
	static function escape(value:Dynamic):String;
	static function format(sql:String):String;
	static function format(sql:String, values:Array<Dynamic>):String;
}
extern class MysqlTopLevel {
	static function createConnection(connectionUri:String):IConnection;
	static function createConnection(config:IConnectionConfig):IConnection;
	static function createPool(config:IPoolConfig):IPool;
	static function createPoolCluster(?config:IPoolClusterConfig):IPoolCluster;
	static function escape(value:Dynamic):String;
	static function format(sql:String):String;
	static function format(sql:String, values:Array<Dynamic>):String;
}
