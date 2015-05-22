typedef ConfigStatic = { };
typedef KnexStatic = { };
typedef Knex = {
	>QueryInterface,
};
typedef Knex = {
	var VERSION : String;
	var __knex__ : String;
	var raw : RawBuilder;
	var transaction : Transaction -> Void -> Promise<Dynamic>;
	@:overload(function():Promise<Void> { })
	function destroy(callback:haxe.Constraints.Function):Void;
	var client : Dynamic;
	var migrate : Dynamic;
	var seed : Dynamic;
	var fn : Dynamic;
};
typedef QueryInterface = {
	var select : Select;
	var as : As;
	var columns : Select;
	var column : Select;
	var from : Table;
	var into : Table;
	var table : Table;
	var distinct : Distinct;
	var join : Join;
	var joinRaw : JoinRaw;
	var innerJoin : Join;
	var leftJoin : Join;
	var leftOuterJoin : Join;
	var rightJoin : Join;
	var rightOuterJoin : Join;
	var outerJoin : Join;
	var fullOuterJoin : Join;
	var crossJoin : Join;
	var where : Where;
	var andWhere : Where;
	var orWhere : Where;
	var whereRaw : WhereRaw;
	var whereWrapped : WhereWrapped;
	var havingWrapped : WhereWrapped;
	var orWhereRaw : WhereRaw;
	var whereExists : WhereExists;
	var orWhereExists : WhereExists;
	var whereNotExists : WhereExists;
	var orWhereNotExists : WhereExists;
	var whereIn : WhereIn;
	var orWhereIn : WhereIn;
	var whereNotIn : WhereIn;
	var orWhereNotIn : WhereIn;
	var whereNull : WhereNull;
	var orWhereNull : WhereNull;
	var whereNotNull : WhereNull;
	var orWhereNotNull : WhereNull;
	var whereBetween : WhereBetween;
	var whereNotBetween : WhereBetween;
	var orWhereBetween : WhereBetween;
	var orWhereNotBetween : WhereBetween;
	var groupBy : GroupBy;
	var groupByRaw : RawQueryBuilder;
	var orderBy : OrderBy;
	var orderByRaw : RawQueryBuilder;
	var union : Union;
	function unionAll(callback:haxe.Constraints.Function):QueryBuilder;
	var having : Having;
	var havingRaw : RawQueryBuilder;
	var orHaving : Having;
	var orHavingRaw : RawQueryBuilder;
	function offset(offset:Float):QueryBuilder;
	function limit(limit:Float):QueryBuilder;
	function count(?columnName:String):QueryBuilder;
	function min(columnName:String):QueryBuilder;
	function max(columnName:String):QueryBuilder;
	function sum(columnName:String):QueryBuilder;
	function avg(columnName:String):QueryBuilder;
	function increment(columnName:String, ?amount:Float):QueryBuilder;
	function decrement(columnName:String, ?amount:Float):QueryBuilder;
	function first(columns:haxe.extern.Rest<String>):QueryBuilder;
	function debug(?enabled:Bool):QueryBuilder;
	function pluck(column:String):QueryBuilder;
	function insert(data:Dynamic, ?returning:String):QueryBuilder;
	@:overload(function(columnName:String, value:Value, ?returning:String):QueryBuilder { })
	function update(data:Dynamic, ?returning:String):QueryBuilder;
	function returning(column:String):QueryBuilder;
	function del(?returning:String):QueryBuilder;
	function delete(?returning:String):QueryBuilder;
	function truncate():QueryBuilder;
	function transacting(trx:Transaction):QueryBuilder;
	function connection(connection:Dynamic):QueryBuilder;
};
typedef As = { };
typedef Select = {
	>ColumnNameQueryBuilder,
};
typedef Table = { };
typedef Distinct = {
	>ColumnNameQueryBuilder,
};
typedef Join = { };
typedef JoinRaw = { };
typedef Where = {
	>WhereRaw,
	>WhereWrapped,
	>WhereNull,
};
typedef WhereRaw = {
	>RawQueryBuilder,
};
typedef WhereWrapped = { };
typedef WhereNull = { };
typedef WhereIn = { };
typedef WhereBetween = { };
typedef WhereExists = { };
typedef WhereNull = { };
typedef WhereIn = { };
typedef GroupBy = {
	>RawQueryBuilder,
	>ColumnNameQueryBuilder,
};
typedef OrderBy = { };
typedef Union = { };
typedef Having = {
	>RawQueryBuilder,
	>WhereWrapped,
};
typedef ColumnNameQueryBuilder = { };
typedef RawQueryBuilder = { };
typedef Raw = {
	>events.EventEmitter,
	>ChainableInterface,
	function wrap(before:String, after:String):Raw;
};
typedef RawBuilder = { };
typedef QueryBuilder = {
	>QueryInterface,
	>ChainableInterface,
	var or : QueryBuilder;
	var and : QueryBuilder;
	function columnInfo(?column:String):Promise<ColumnInfo>;
	function forUpdate():QueryBuilder;
	function forShare():QueryBuilder;
	function toSQL():Sql;
	function on(event:String, callback:haxe.Constraints.Function):QueryBuilder;
};
typedef Sql = {
	var method : String;
	var options : Dynamic;
	var bindings : Array<Value>;
	var sql : String;
};
typedef ChainableInterface = {
	>Promise<Dynamic>,
	function toQuery():String;
	function options(options:Dynamic):QueryBuilder;
	@:overload(function(?callback:QueryBuilder -> Dynamic):QueryBuilder { })
	function stream(?options:Dynamic, ?callback:QueryBuilder -> Dynamic):QueryBuilder;
	function pipe(writable:Dynamic):QueryBuilder;
	function exec(callback:haxe.Constraints.Function):QueryBuilder;
};
typedef Transaction = {
	>QueryBuilder,
	var commit : Dynamic;
	var rollback : Dynamic;
};
typedef Knex = {
	var schema : SchemaBuilder;
};
typedef SchemaBuilder = {
	function createTable(tableName:String, callback:CreateTableBuilder -> Dynamic):Promise<Void>;
	function renameTable(oldTableName:String, newTableName:String):Promise<Void>;
	function dropTable(tableName:String):Promise<Void>;
	function hasTable(tableName:String):Promise<Bool>;
	function hasColumn(tableName:String, columnName:String):Promise<Bool>;
	function table(tableName:String, callback:AlterTableBuilder -> Dynamic):Promise<Void>;
	function dropTableIfExists(tableName:String):Promise<Void>;
	function raw(statement:String):SchemaBuilder;
};
typedef TableBuilder = {
	function increments(?columnName:String):ColumnBuilder;
	function dropColumn(columnName:String):TableBuilder;
	function dropColumns(columnNames:haxe.extern.Rest<String>):TableBuilder;
	function renameColumn(from:String, to:String):ColumnBuilder;
	function integer(columnName:String):ColumnBuilder;
	function bigInteger(columnName:String):ColumnBuilder;
	function text(columnName:String, ?textType:String):ColumnBuilder;
	function string(columnName:String, ?length:Float):ColumnBuilder;
	function float(columnName:String, ?precision:Float, ?scale:Float):ColumnBuilder;
	function decimal(columnName:String, ?precision:Float, ?scale:Float):ColumnBuilder;
	function boolean(columnName:String):ColumnBuilder;
	function date(columnName:String):ColumnBuilder;
	function dateTime(columnName:String):ColumnBuilder;
	function time(columnName:String):ColumnBuilder;
	function timestamp(columnName:String):ColumnBuilder;
	function timestamps():ColumnBuilder;
	function binary(columnName:String):ColumnBuilder;
	function enum(columnName:String):ColumnBuilder;
	function enu(columnName:String):ColumnBuilder;
	function json(columnName:String):ColumnBuilder;
	function uuid(columnName:String):ColumnBuilder;
	function comment(val:String):TableBuilder;
	function specificType(columnName:String, type:String):ColumnBuilder;
};
typedef CreateTableBuilder = {
	>TableBuilder,
};
typedef MySqlTableBuilder = {
	>CreateTableBuilder,
	function engine(val:String):CreateTableBuilder;
	function charset(val:String):CreateTableBuilder;
	function collate(val:String):CreateTableBuilder;
};
typedef AlterTableBuilder = {
	>TableBuilder,
};
typedef MySqlAlterTableBuilder = {
	>AlterTableBuilder,
};
typedef ColumnBuilder = {
	function index(?indexName:String):ColumnBuilder;
	function primary():ColumnBuilder;
	function unique():ColumnBuilder;
	function references(columnName:String):ReferencingColumnBuilder;
	function onDelete(command:String):ColumnBuilder;
	function onUpdate(command:String):ColumnBuilder;
	function defaultTo(value:Value):ColumnBuilder;
	function unsigned():ColumnBuilder;
	function notNullable():ColumnBuilder;
	function nullable():ColumnBuilder;
	function comment(value:String):ColumnBuilder;
};
typedef PostgreSqlColumnBuilder = {
	>ColumnBuilder,
	function index(?indexName:String, ?indexType:String):ColumnBuilder;
};
typedef ReferencingColumnBuilder = {
	function inTable(tableName:String):ColumnBuilder;
};
typedef AlterColumnBuilder = {
	>ColumnBuilder,
};
typedef MySqlAlterColumnBuilder = {
	>AlterColumnBuilder,
	function first():AlterColumnBuilder;
	function after(columnName:String):AlterColumnBuilder;
};
typedef ColumnInfo = {
	var defaultValue : Value;
	var type : String;
	var maxLength : Float;
	var nullable : Bool;
};
typedef Config = {
	@:optional
	var client : String;
	@:optional
	var dialect : String;
	var connection : haxe.extern.EitherType<String, haxe.extern.EitherType<ConnectionConfig, haxe.extern.EitherType<Sqlite3ConnectionConfig, SocketConnectionConfig>>>;
	@:optional
	var pool : PoolConfig;
	@:optional
	var migrations : MigrationConfig;
};
typedef ConnectionConfig = {
	var host : String;
	var user : String;
	var password : String;
	var database : String;
	@:optional
	var debug : Bool;
};
typedef Sqlite3ConnectionConfig = {
	var filename : String;
	@:optional
	var debug : Bool;
};
typedef SocketConnectionConfig = {
	var socketPath : String;
	var user : String;
	var password : String;
	var database : String;
	@:optional
	var debug : Bool;
};
typedef PoolConfig = {
	@:optional
	var name : String;
	@:optional
	var create : haxe.Constraints.Function;
	@:optional
	var destroy : haxe.Constraints.Function;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var refreshIdle : Bool;
	@:optional
	var idleTimeoutMillis : Float;
	@:optional
	var reapIntervalMillis : Float;
	@:optional
	var returnToHead : Bool;
	@:optional
	var priorityRange : Float;
	@:optional
	var validate : haxe.Constraints.Function;
	@:optional
	var log : Bool;
};
typedef MigrationConfig = {
	@:optional
	var database : String;
	@:optional
	var directory : String;
	@:optional
	var extension : String;
	@:optional
	var tableName : String;
};
