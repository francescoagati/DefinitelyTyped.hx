typedef Options = {
	var encrypt : Bool;
};
typedef Pool = {
	var min : Float;
	var max : Float;
	var idleTimeoutMillis : Float;
};
typedef Config = {
	@:optional
	var driver : String;
	@:optional
	var user : String;
	@:optional
	var password : String;
	var server : String;
	@:optional
	var port : Float;
	@:optional
	var domain : String;
	var database : String;
	@:optional
	var connectionTimeout : Float;
	@:optional
	var requestTimeout : Float;
	@:optional
	var stream : Bool;
	@:optional
	var options : Options;
	@:optional
	var pool : Pool;
};
extern class Connection {
	function new(config:Config, ?callback:?Dynamic -> Void):Void;
	function connect(?callback:?Dynamic -> Void):Void;
	function close():Void;
}
extern class Columns {
	function add(name:String, type:Dynamic, options:Dynamic):Void;
}
extern class Rows {
	function add(row:Dynamic):Void;
}
extern class Table {
	var create : Bool;
	var columns : Columns;
	var rows : Rows;
	function new(tableName:String):Void;
}
extern class Request {
	function new(?connection:Connection):Void;
	function execute(procedure:String, ?callback:?Dynamic -> ?Dynamic -> ?Dynamic -> Void):Void;
	@:overload(function(name:String, type:Dynamic, value:Dynamic):Void { })
	function input(name:String, value:Dynamic):Void;
	function output(name:String, type:Dynamic, ?value:Dynamic):Void;
	function pipe(stream:Dynamic):Void;
	function query(command:String, ?callback:?Dynamic -> ?Dynamic -> Void):Void;
	function batch(batch:String, ?callback:?Dynamic -> ?Dynamic -> Void):Void;
	function bulk(table:Table, ?callback:?Dynamic -> ?Dynamic -> Void):Void;
	function cancel():Void;
	var parameters : Dynamic;
}
extern class Transaction {
	function new(?connection:Connection):Void;
	@:overload(function(?callback:?Dynamic -> Void):Void { })
	function begin(?isolationLevel:Dynamic, ?callback:?Dynamic -> Void):Void;
	function commit(?callback:?Dynamic -> Void):Void;
	function rollback(?callback:?Dynamic -> Void):Void;
}
extern class PreparedStatement {
	function new(?connection:Connection):Void;
	function input(name:String, type:Dynamic):Void;
	function output(name:String, type:Dynamic):Void;
	function prepare(statement:String, ?callback:?Dynamic -> Void):Void;
	function execute(values:Dynamic, ?callback:?Dynamic -> Void):Void;
	function unprepare(?callback:?Dynamic -> Void):Void;
}
extern class MssqlTopLevel {
	static var DateTime : Dynamic;
	static var NVarChar : Dynamic;
	static var Int : Dynamic;
	static var Bit : Dynamic;
	static var VarBinary : Dynamic;
	static var TVP : Dynamic;
}
extern class MssqlTopLevel {
	static var DateTime : Dynamic;
	static var NVarChar : Dynamic;
	static var Int : Dynamic;
	static var Bit : Dynamic;
	static var VarBinary : Dynamic;
	static var TVP : Dynamic;
}
