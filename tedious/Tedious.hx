typedef ColumnType = {
	var name : String;
};
typedef ColumnMetaData = {
	var colName : String;
	var type : ColumnType;
	@:optional
	var precision : Float;
	@:optional
	var scale : Float;
	@:optional
	var dataLength : Float;
};
typedef DebugOptions = {
	@:optional
	var packet : Bool;
	@:optional
	var data : Bool;
	@:optional
	var payload : Bool;
	@:optional
	var token : Bool;
};
@:enum abstract ISOLATION_LEVEL(Int) {
	var NO_CHANGE = 0;
	var READ_UNCOMMITTED = 1;
	var READ_COMMITTED = 2;
	var REPEATABLE_READ = 3;
	var SERIALIZABLE = 4;
	var SNAPSHOT = 5;
}
typedef TediousType = {
	var type : String;
	var name : String;
};
typedef TediousTypes = {
	var BigInt : TediousType;
	var Binary : TediousType;
	var Bit : TediousType;
	var BitN : TediousType;
	var Char : TediousType;
	var DateN : TediousType;
	var DateTime2N : TediousType;
	var DateTime : TediousType;
	var DateTimeN : TediousType;
	var DateTimeOffsetN : TediousType;
	var Decimal : TediousType;
	var DecimalN : TediousType;
	var Float : TediousType;
	var FloatN : TediousType;
	var Image : TediousType;
	var Int : TediousType;
	var IntN : TediousType;
	var Money : TediousType;
	var MoneyN : TediousType;
	var NChar : TediousType;
	var NText : TediousType;
	var NVarChar : TediousType;
	var Null : TediousType;
	var Numeric : TediousType;
	var NumericN : TediousType;
	var Real : TediousType;
	var SmallDateTime : TediousType;
	var SmallInt : TediousType;
	var SmallMoney : TediousType;
	var TVP : TediousType;
	var Text : TediousType;
	var TimeN : TediousType;
	var TinyInt : TediousType;
	var UDT : TediousType;
	var UniqueIdentifierN : TediousType;
	var VarBinary : TediousType;
	var VarChar : TediousType;
	var Xml : TediousType;
};
typedef ConnectionOptions = {
	@:optional
	var port : Float;
	@:optional
	var instanceName : String;
	@:optional
	var database : String;
	@:optional
	var fallbackToDefaultDb : Bool;
	@:optional
	var connectTimeout : Float;
	@:optional
	var requestTimeout : Float;
	@:optional
	var cancelTimeout : Float;
	@:optional
	var packetSize : Float;
	@:optional
	var useUTC : Bool;
	@:optional
	var abortTransactionOnError : Bool;
	@:optional
	var localAddress : String;
	@:optional
	var useColumnNames : Bool;
	@:optional
	var camelCaseColumns : Bool;
	@:optional
	var columnNameReplacer : String -> Float -> ColumnMetaData -> String;
	@:optional
	var debug : DebugOptions;
	@:optional
	var isolationLevel : ISOLATION_LEVEL;
	@:optional
	var connectionIsolationLevel : ISOLATION_LEVEL;
	@:optional
	var readOnlyIntent : Bool;
	@:optional
	var encrypt : Bool;
	@:optional
	var cryptoCredentialsDetails : Dynamic;
	@:optional
	var rowCollectionOnDone : Bool;
	@:optional
	var rowCollectionOnRequestCompletion : Bool;
	@:optional
	var tdsVersion : Float;
};
typedef ConnectionConfig = {
	@:optional
	var userName : String;
	@:optional
	var password : String;
	@:optional
	var server : String;
	@:optional
	var domain : String;
	@:optional
	var options : ConnectionOptions;
};
typedef ParameterOptions = {
	@:optional
	var length : Float;
	@:optional
	var precision : Float;
	@:optional
	var scale : Float;
};
typedef ColumnValue = {
	var metadata : ColumnMetaData;
	var value : Dynamic;
};
extern class Request extends events.EventEmitter {
	function new(sql:String, callback:Error -> Float -> Array<Dynamic> -> Void):Void;
	function addParameter(name:String, type:TediousType, value:Dynamic, ?options:ParameterOptions):Void;
	function addOutputParameter(name:String, type:TediousType, ?value:Dynamic, ?options:ParameterOptions):Void;
}
typedef BulkLoadColumnOpts = {
	>ParameterOptions,
	var nullable : Bool;
	@:optional
	var objName : String;
};
typedef BulkLoad = {
	function addColumn(name:String, type:TediousType, options:BulkLoadColumnOpts):Void;
	@:overload(function(columnArray:Array<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function addRow(row:Dynamic):Void;
	function getTableCreationSql():String;
};
typedef InfoObject = {
	var number : Float;
	var state : Dynamic;
	var class : Float;
	var message : String;
	var procName : String;
	var lineNumber : Float;
};
extern class Connection extends events.EventEmitter {
	function new(config:ConnectionConfig):Void;
	function beginTransaction(callback:?Error -> Void, ?name:String, ?isolationLevel:ISOLATION_LEVEL):Void;
	function commitTransaction(callback:Error -> Void):Void;
	function rollbackTransaction(callback:Error -> Void):Void;
	function prepare(request:Request):Void;
	function unprepare(request:Request):Void;
	function callProcedure(request:Request):Void;
	function execSql(request:Request):Void;
	function execSqlBatch(request:Request):Void;
	function execute(request:Request, parameters:{ }):Void;
	function newBulkLoad(tableName:String, callback:Error -> Float -> Void):BulkLoad;
	function execBulkLoad(bulkLoad:BulkLoad):Void;
	function reset(callback:Error -> Void):Void;
	function cancel():Void;
	function close():Void;
}
extern class TediousTopLevel {
	static var TDS_VERSION : { };
	static var TYPES : TediousTypes;
}
extern class TediousTopLevel {
	static var TDS_VERSION : { };
	static var TYPES : TediousTypes;
}
