typedef SequelizeStaticAndInstance = {
	var Utils : Utils;
	var Promise : Promise;
	var Validator : Validator;
	var QueryTypes : QueryTypes;
	var Error : Error;
	var ValidationError : ValidationError;
	function fn(fn:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function col(col:String):Col;
	function cast(val:Dynamic, type:String):Cast;
	function literal(val:Dynamic):Literal;
	function and(args:haxe.extern.Rest<Dynamic>):And;
	function or(args:haxe.extern.Rest<Dynamic>):Or;
	function where(attr:String, condition:Dynamic):Where;
};
typedef SequelizeStatic = {
	>SequelizeStaticAndInstance,
	>DataTypes,
	@:overload(function(database:String, username:String, password:String):Sequelize { })
	@:overload(function(database:String, username:String, password:String, options:Options):Sequelize { })
	@:overload(function(database:String, username:String, options:Options):Sequelize { })
	@:overload(function(connectionString:String, ?options:Options):Sequelize { })
	function new(database:String, username:String):Sequelize;
};
typedef Sequelize = {
	>SequelizeStaticAndInstance,
	var config : Config;
	var options : Options;
	var models : Dynamic;
	var modelManager : ModelManager;
	var daoFactoryManager : ModelManager;
	var transactionManager : TransactionManager;
	var importCache : Dynamic;
	var Transaction : TransactionStatic;
	function getDialect():String;
	function getQueryInterface():QueryInterface;
	function getMigrator(?options:MigratorOptions, ?force:Bool):Migrator;
	function define<TInstance, TPojo>(daoName:String, attributes:Dynamic, ?options:DefineOptions):Model<TInstance, TPojo>;
	function model<TInstance, TPojo>(daoName:String):Model<TInstance, TPojo>;
	function isDefined(daoName:String):Bool;
	function import<TInstance, TPojo>(path:String):Model<TInstance, TPojo>;
	@:overload(function<TInstance, TPojo>(sql:String, ?callee:Model<TInstance, TPojo>, ?options:QueryOptions):EventEmitterT<Model<TInstance, TPojo>> { })
	function query(sql:String, ?callee:Model<Dynamic, Dynamic>, ?options:QueryOptions, ?replacements:Dynamic):EventEmitter;
	function createSchema(schema:String):EventEmitter;
	function showAllSchemas():EventEmitter;
	function dropSchema(schema:String):EventEmitter;
	function dropAllSchemas():EventEmitter;
	function sync(?options:SyncOptions):EventEmitter;
	function drop(options:DropOptions):EventEmitter;
	function authenticate():EventEmitter;
	function validate():EventEmitter;
	@:overload(function(?options:TransactionOptions, ?callback:Transaction -> Void):PromiseT<Transaction> { })
	function transaction(callback:Transaction -> Bool):Promise;
	function close():Void;
};
typedef Config = {
	@:optional
	var database : String;
	@:optional
	var username : String;
	@:optional
	var password : String;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var pool : PoolOptions;
	@:optional
	var protocol : String;
	@:optional
	var queue : Bool;
	@:optional
	var native : Bool;
	@:optional
	var ssl : Bool;
	@:optional
	var replication : ReplicationOptions;
	@:optional
	var dialectModulePath : String;
	@:optional
	var maxConcurrentQueries : Float;
	@:optional
	var dialectOptions : Dynamic;
};
typedef Model<TInstance, TPojo> = {
	>Hooks,
	>Associations,
	var sequelize : Sequelize;
	var name : String;
	var tableName : String;
	var options : DefineOptions;
	var attributes : Dynamic;
	var rawAttributes : Dynamic;
	var modelManager : ModelManager;
	var daoFactoryManager : ModelManager;
	var associations : Dynamic;
	var scopeObj : Dynamic;
	function sync(?options:SyncOptions):PromiseT<Model<TInstance, TPojo>>;
	function drop(?options:DropOptions):Promise;
	function schema(schema:String, ?options:SchemaOptions):Model<TInstance, TPojo>;
	function getTableName():Dynamic;
	function scope(options:Dynamic):Model<TInstance, TPojo>;
	function findAll(?options:FindOptions, ?queryOptions:QueryOptions):PromiseT<Array<TInstance>>;
	@:overload(function(?id:Float, ?queryOptions:QueryOptions):PromiseT<TInstance> { })
	function find(?options:FindOptions, ?queryOptions:QueryOptions):PromiseT<TInstance>;
	function aggregate<V>(field:String, aggregateFunction:String, options:FindOptions):PromiseT<V>;
	function count(?options:FindOptions):PromiseT<Float>;
	function findAndCountAll(?findOptions:FindOptions, ?queryOptions:QueryOptions):PromiseT<FindAndCountResult<TInstance>>;
	function max<V>(field:String, ?options:FindOptions):PromiseT<V>;
	function min<V>(field:String, ?options:FindOptions):PromiseT<V>;
	function sum(field:String, ?options:FindOptions):PromiseT<Float>;
	function build(values:TPojo, ?options:BuildOptions):TInstance;
	function create(values:TPojo, ?options:CopyOptions):PromiseT<TInstance>;
	function findOrInitialize(where:Dynamic, ?defaults:TPojo, ?options:QueryOptions):PromiseT<TInstance>;
	function findOrCreate(where:Dynamic, ?defaults:TPojo, ?options:FindOrCreateOptions):PromiseT<TInstance>;
	function bulkCreate(records:Array<TPojo>, ?options:BulkCreateOptions):PromiseT<Array<TInstance>>;
	function destroy(?where:Dynamic, ?options:DestroyOptions):Promise;
	function update(attrValueHash:TPojo, where:Dynamic, ?options:UpdateOptions):Promise;
	function describe():PromiseT<Dynamic>;
	function dataset():Dynamic;
};
typedef Instance<TInstance, TPojo> = {
	var isNewRecord : Bool;
	var Model : Model<TInstance, TPojo>;
	var sequelize : Sequelize;
	var isDeleted : Bool;
	var values : TPojo;
	var isDirty : Bool;
	var primaryKeyValues : TPojo;
	function getDataValue(key:String):Dynamic;
	function setDataValue(key:String, value:Dynamic):Void;
	function get(?key:String):Dynamic;
	function set(key:String, value:Dynamic, ?options:SetOptions):Void;
	@:overload(function():Array<String> { })
	function changed(key:String):Dynamic;
	function previous(key:String):Dynamic;
	function save(?fields:Array<String>, ?options:SaveOptions):PromiseT<TInstance>;
	function reload(?options:FindOptions):PromiseT<TInstance>;
	function validate(?options:ValidateOptions):PromiseT<Error>;
	function updateAttributes(updates:TPojo, options:SaveOptions):PromiseT<TInstance>;
	function destroy(?options:DestroyInstanceOptions):Promise;
	function increment(fields:Dynamic, ?options:IncrementOptions):Promise;
	function decrement(fields:Dynamic, ?options:IncrementOptions):Promise;
	function equal(other:TInstance):Bool;
	function equalsOneOf(others:Array<TInstance>):Bool;
	function toJSON():TPojo;
};
typedef Transaction = {
	>TransactionStatic,
	function commit():Transaction;
	function rollback():Transaction;
};
typedef TransactionStatic = {
	var ISOLATION_LEVELS : TransactionIsolationLevels;
	var LOCK : TransactionLocks;
};
typedef TransactionIsolationLevels = {
	var READ_UNCOMMITTED : String;
	var READ_COMMITTED : String;
	var REPEATABLE_READ : String;
	var SERIALIZABLE : String;
};
typedef TransactionLocks = {
	var UPDATE : String;
	var SHARE : String;
};
typedef Hooks = {
	@:overload(function(hooktype:String, fn:haxe.extern.Rest<Dynamic> -> Void):Bool { })
	function addHook(hooktype:String, name:String, fn:haxe.extern.Rest<Dynamic> -> Void):Bool;
	@:overload(function<T>(validator:T -> ?Error -> Void -> Void):Void { })
	function beforeValidate<T>(name:String, validator:T -> ?Error -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function afterValidate<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function beforeCreate<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function afterCreate<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function beforeDestroy<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function afterDestroy<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function beforeUpdate<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:T -> ?Error -> ?T -> Void -> Void):Void { })
	function afterUpdate<T>(name:String, validator:T -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:Array<T> -> Array<String> -> ?Error -> ?T -> Void -> Void):Void { })
	function beforeBulkCreate<T>(name:String, validator:Array<T> -> Array<String> -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:Array<T> -> Array<String> -> ?Error -> ?T -> Void -> Void):Void { })
	function afterBulkCreate<T>(name:String, validator:Array<T> -> Array<String> -> ?Error -> ?T -> Void -> Void):Void;
	@:overload(function<T>(validator:Dynamic -> ?Error -> ?Dynamic -> Void -> Void):Void { })
	function beforeBulkDestroy<T>(name:String, validator:Dynamic -> ?Error -> ?Dynamic -> Void -> Void):Void;
	@:overload(function<T>(validator:Dynamic -> ?Error -> ?Dynamic -> Void -> Void):Void { })
	function afterBulkDestroy<T>(name:String, validator:Dynamic -> ?Error -> ?Dynamic -> Void -> Void):Void;
	@:overload(function<T>(validator:Array<T> -> Dynamic -> ?Error -> ?Array<T> -> ?Dynamic -> Void -> Void):Void { })
	function beforeBulkUpdate<T>(name:String, validator:Array<T> -> Dynamic -> ?Error -> ?Array<T> -> ?Dynamic -> Void -> Void):Void;
	@:overload(function<T>(validator:Array<T> -> Dynamic -> ?Error -> ?Array<T> -> ?Dynamic -> Void -> Void):Void { })
	function afterBulkUpdate<T>(name:String, validator:Array<T> -> Dynamic -> ?Error -> ?Array<T> -> ?Dynamic -> Void -> Void):Void;
};
typedef Associations = {
	function hasOne<TInstance, TPojo>(target:Model<TInstance, TPojo>, ?options:AssociationOptions):Void;
	function belongsTo<TInstance, TPojo>(target:Model<TInstance, TPojo>, ?options:AssociationOptions):Void;
	function belongsToMany<TInstance, TPojo>(target:Model<TInstance, TPojo>, ?options:AssociationOptions):Void;
	function hasMany<TInstance, TPojo>(target:Model<TInstance, TPojo>, ?options:AssociationOptions):Void;
};
typedef Validator = { };
typedef ValidationError = {
	>Error,
};
typedef QueryChainer = {
	function add(emitterOrKlass:Dynamic, ?method:String, ?params:Dynamic, ?options:Dynamic):QueryChainer;
	function run():EventEmitter;
	function runSerially(?options:QueryChainerRunSeriallyOptions):EventEmitter;
};
typedef QueryInterface = {
	var QueryGenerator : QueryGenerator;
	function createSchema(?schema:String):EventEmitter;
	function dropSchema(schema:String):EventEmitter;
	function dropAllSchemas():EventEmitter;
	function showAllSchemas(?options:QueryOptions):EventEmitter;
	function createTable(tableName:String, attributes:Dynamic, ?options:QueryOptions):Dynamic;
	function dropTable(tableName:String, ?options:QueryOptions):EventEmitter;
	function dropAllTables(?options:QueryOptions):EventEmitter;
	function dropAllEnums(?options:QueryOptions):EventEmitter;
	function renameTable(before:String, after:String):EventEmitter;
	function showAllTables(?options:QueryOptions):EventEmitter;
	function describeTable(tableName:String, ?options:QueryOptions):EventEmitter;
	function addColumn(tableName:String, attributeName:Dynamic, ?dataTypeOrOptions:Dynamic):EventEmitter;
	function removeColumn(tableName:String, attributeName:String):EventEmitter;
	function changeColumn(tableName:String, attributeName:String, dataTypeOrOptions:Dynamic):EventEmitter;
	function renameColumn(tableName:String, attrNameBefore:String, attrNameAfter:String):EventEmitter;
	function addIndex(tableName:String, attributes:Array<Dynamic>, ?options:QueryOptions):EventEmitter;
	function showIndex(tableName:String, ?options:QueryOptions):EventEmitter;
	function getForeignKeysForTables(tableNames:Array<String>):EventEmitter;
	@:overload(function(tableName:String, indexName:String):EventEmitter { })
	function removeIndex(tableName:String, attributes:Array<String>):EventEmitter;
	function insert<TModel>(dao:TModel, tableName:String, values:Dynamic, ?options:QueryOptions):EventEmitter;
	function bulkInsert(tableName:String, records:Array<Dynamic>, ?options:QueryOptions, ?attributes:Dynamic):EventEmitter;
	function update<TModel>(dao:TModel, tableName:String, values:Array<Dynamic>, where:Dynamic, ?options:QueryOptions):EventEmitter;
	function bulkUpdate(tableName:String, values:Array<Dynamic>, where:Dynamic, ?options:QueryOptions, ?attributes:Dynamic):EventEmitter;
	function delete<TModel>(dao:TModel, tableName:String, where:Dynamic, ?options:QueryOptions):EventEmitter;
	@:overload(function<TModel>(tableName:String, where:Dynamic, options:QueryOptions, model:TModel):EventEmitter { })
	function bulkDelete(tableName:String, where:Dynamic, ?options:QueryOptions):EventEmitter;
	function select<TModel>(factory:TModel, tableName:String, ?scope:Dynamic, ?queryOptions:QueryOptions):EventEmitter;
	function increment<TModel>(dao:TModel, tableName:String, values:Array<Dynamic>, where:Dynamic, ?options:QueryOptions):EventEmitter;
	function rawSelect<TModel>(tableName:String, options:QueryOptions, attributeSelector:String, model:TModel):EventEmitter;
	function createTrigger(tableName:String, triggerName:String, timingType:String, fireOnArray:Array<Dynamic>, functionName:String, functionParams:Array<Dynamic>, optionsArray:Array<String>):EventEmitter;
	function dropTrigger(tableName:String, triggerName:String):EventEmitter;
	function renameTrigger(tableName:String, oldTriggerName:String, newTriggerName:String):EventEmitter;
	function createFunction(functionName:String, params:Array<Dynamic>, returnType:String, language:String, body:String, ?options:QueryOptions):EventEmitter;
	function dropFunction(functionName:String, params:Array<Dynamic>):EventEmitter;
	function renameFunction(oldFunctionName:String, params:Array<Dynamic>, newFunctionName:String):EventEmitter;
	function quoteIdentifier(identifier:String, force:Bool):EventEmitter;
	function quoteTable(tableName:String):EventEmitter;
	function quoteIdentifiers(identifiers:String, force:Bool):EventEmitter;
	function escape(value:String):EventEmitter;
	function setAutocommit(transaction:Transaction, value:Bool):EventEmitter;
	function setIsolationLevel(transaction:Transaction, value:String):EventEmitter;
	function startTransaction(transaction:Transaction, ?options:QueryOptions):EventEmitter;
	function commitTransaction(transaction:Transaction, ?options:QueryOptions):EventEmitter;
	function rollbackTransaction(transaction:Transaction, ?options:QueryOptions):EventEmitter;
};
typedef QueryGenerator = {
	function createSchema(schemaName:String):String;
	function dropSchema(schemaName:String):String;
	function showSchemasQuery():String;
	function addSchema<TInstance, TPojo>(param:Model<TInstance, TPojo>):Schema;
	function createTableQuery(tableName:String, attributes:Array<Dynamic>, ?options:CreateTableQueryOptions):String;
	function describeTableQuery(tableName:String, schema:String, schemaDelimiter:String):String;
	function dropTableQuery(tableName:String, ?options:{ var cascade : String; }):String;
	function renameTableQuery(before:String, after:String):String;
	function showTablesQuery():String;
	function addColumnQuery(tableName:String, attributes:Dynamic):String;
	function removeColumnQuery(tableName:String, attributeName:String):String;
	function changeColumnQuery(tableName:String, attributes:Dynamic):String;
	function renameColumnQuery(tableName:String, attrNameBefore:String, attrNameAfter:String):String;
	function insertQuery(table:String, valueHash:Dynamic, modelAttributes:Dynamic):String;
	function bulkInsertQuery(tableName:String, attrValueHashes:Dynamic):String;
	function updateQuery(tableName:String, attrValueHash:Dynamic, where:Dynamic, options:InsertOptions, attributes:Dynamic):String;
	@:overload(function<TInstance, TPojo>(tableName:String, where:Dynamic, options:DestroyOptions, model:Model<TInstance, TPojo>):String { })
	function deleteQuery(tableName:String, where:Dynamic, options:DestroyOptions):String;
	function incrementQuery(tableName:String, attrValueHash:Dynamic, where:Dynamic, ?options:Dynamic):String;
	function addIndexQuery(tableName:String, attributes:Array<Dynamic>, ?options:IndexOptions):String;
	function showIndexQuery(tableName:String, ?options:Dynamic):String;
	@:overload(function(tableName:String, indexNameOrAttributes:Array<String>):String { })
	function removeIndexQuery(tableName:String, indexNameOrAttributes:String):String;
	function attributesToSQL(attributes:Array<Dynamic>):String;
	function findAutoIncrementField<TInstance, TPojo>(factory:Model<TInstance, TPojo>):Array<String>;
	function quoteTable(param:Dynamic, as:Bool):String;
	function quote(obj:Dynamic, parent:Dynamic, force:Bool):String;
	function createTrigger(tableName:String, triggerName:String, timingType:String, fireOnArray:TriggerOptions, functionName:String, functionParams:Array<TriggerParam>):String;
	function dropTrigger(tableName:String, triggerName:String):String;
	function renameTrigger(tableName:String, oldTriggerName:String, newTriggerName:String):String;
	function createFunction(functionName:String, params:Array<TriggerParam>, returnType:String, language:String, body:String, ?options:Array<String>):String;
	function dropFunction(functionName:String, params:Array<TriggerParam>):String;
	function renameFunction(oldFunctionName:String, params:Array<TriggerParam>, newFunctionName:String):String;
	function quoteIdentifier(identifier:String, ?force:Bool):String;
	function quoteIdentifiers(identifiers:String, ?force:Bool):String;
	function escape(value:Dynamic, field:Dynamic):String;
	function getForeignKeysQuery(tableName:String, schemaName:String):String;
	function dropForeignKeyQuery(tableName:String, foreignKey:String):String;
	@:overload(function<TInstance, TPojo>(tableName:Array<String>, options:SelectOptions, ?model:Model<TInstance, TPojo>):String { })
	@:overload(function<TInstance, TPojo>(tableName:Array<Array<String>>, options:SelectOptions, ?model:Model<TInstance, TPojo>):String { })
	function selectQuery<TInstance, TPojo>(tableName:String, options:SelectOptions, ?model:Model<TInstance, TPojo>):String;
	function setAutocommitQuery(value:Bool):String;
	function setIsolationLevelQuery(value:String):String;
	function startTransactionQuery(?options:Dynamic):String;
	function commitTransactionQuery(?options:Dynamic):String;
	function rollbackTransactionQuery(?options:Dynamic):String;
	function addLimitAndOffset(options:SelectOptions, ?query:String):String;
	function getWhereConditions<TInstance, TPojo>(smth:Dynamic, tableName:String, factory:Model<TInstance, TPojo>, ?options:Dynamic, ?prepend:Bool):String;
	function prependTableNameToHash(tableName:String, ?hash:Dynamic):String;
	function findAssociation<TInstance, TPojo>(attribute:String, dao:Model<TInstance, TPojo>):String;
	function getAssociationFilterDAO<TInstance, TPojo>(filterStr:String, dao:Model<TInstance, TPojo>):String;
	function isAssociationFilter<TInstance, TPojo>(filterStr:String, dao:Model<TInstance, TPojo>, ?options:Dynamic):String;
	function getAssociationFilterColumn<TInstance, TPojo>(filterStr:String, dao:Model<TInstance, TPojo>, ?options:{ var include : Bool; }):String;
	function getConditionalJoins<TInstance, TPojo>(options:{ @:optional
	var where : Dynamic; }, originalDao:Model<TInstance, TPojo>):String;
	function arrayValue(value:Array<String>, key:String, _key:String, ?factory:Dynamic, ?logicResult:Dynamic):String;
	function hashToWhereConditions<TInstance, TPojo>(hash:Dynamic, dao:Model<TInstance, TPojo>, ?options:HashToWhereConditionsOption):String;
	function booleanValue(value:Bool):String;
};
typedef Schema = {
	var tableName : String;
	var table : String;
	var name : String;
	var schema : String;
	var delimiter : String;
};
typedef QueryTypes = {
	var SELECT : String;
	var BULKUPDATE : String;
	var BULKDELETE : String;
};
typedef ModelManager = {
	var daos : Array<Model<Dynamic, Dynamic>>;
	var sequelize : Sequelize;
	function addDAO<TInstance, TPojo>(dao:Model<TInstance, TPojo>):Model<TInstance, TPojo>;
	function removeDAO<TInstance, TPojo>(dao:Model<TInstance, TPojo>):Void;
	function getDAO<TInstance, TPojo>(daoName:String, ?options:ModelMangerGetDaoOptions):Model<TInstance, TPojo>;
	var all : Array<Model<Dynamic, Dynamic>>;
	function forEachDAO(iterator:Model<Dynamic, Dynamic> -> String -> Void, ?options:ModelManagerForEachDaoOptions):Void;
};
typedef TransactionManager = {
	var sequelize : Sequelize;
	var connectorManagers : Dynamic;
	function getConnectorManager(?uuid:String):ConnectorManager;
	function releaseConnectionManager(?uuid:String):Void;
	@:overload(function<TInstance, TPojo>(sql:String, ?callee:Model<TInstance, TPojo>, ?options:QueryOptions):EventEmitter { })
	function query(sql:String, ?callee:Model<Dynamic, Dynamic>, ?options:QueryOptions):EventEmitter;
};
typedef ConnectorManager = {
	function query(sql:String, ?callee:Model<Dynamic, Dynamic>, ?options:QueryOptions):EventEmitter;
	function afterTransactionSetup(callback:Void -> Void):Void;
	function connect():Void;
	function disconnect():Void;
	function reconnect():Void;
	function cleanup():Void;
};
typedef Migrator = {
	var queryInterface : QueryInterface;
	function migrate(?options:MigratorOptions):EventEmitter;
	function getUndoneMigrations(callback:Error -> Array<Migrator> -> Void):Void;
	function findOrCreateMetaDAO(?syncOptions:SyncOptions):EventEmitter;
	function exec(filename:String, ?options:MigratorExecOptions):EventEmitter;
	function getLastMigrationFromDatabase():EventEmitter;
	function getLastMigrationIdFromDatabase():EventEmitter;
	function getFormattedDateString(s:String):String;
	function stringToDate(s:String):Date;
	function saveSuccessfulMigration(from:Migration, to:Migration, callback:MetaInstance -> Void):Void;
	function deleteUndoneMigration(from:Migration, to:Migration, callback:Void -> Void):Void;
	function execute(?options:MigrationExecuteOptions):EventEmitter;
	function isBefore(date:Date, ?options:MigrationCompareOptions):Bool;
	function isAfter(date:Date, ?options:MigrationCompareOptions):Bool;
};
typedef Migration = {
	>QueryInterface,
	var migrator : Migrator;
	var path : String;
	var filename : String;
	var migrationId : Float;
	var date : Date;
	var queryInterface : QueryInterface;
	var migration : Error -> Migration -> Dynamic -> Error -> Void -> Void;
};
typedef EventEmitter = {
	>EventEmitterT<Dynamic>,
	>NodeJS.EventEmitter,
};
typedef EventEmitterT<R> = {
	>NodeJS.EventEmitter,
	function new(handler:EventEmitterT<R> -> Void):EventEmitterT<R>;
	function run():EventEmitterT<R>;
	function success(onSuccess:R -> Void):EventEmitterT<R>;
	function ok(onSuccess:R -> Void):EventEmitterT<R>;
	function error(onError:Error -> Void):EventEmitterT<R>;
	function fail(onError:Error -> Void):EventEmitterT<R>;
	function failure(onError:Error -> Void):EventEmitterT<R>;
	function done(onDone:Error -> R -> Void):EventEmitterT<R>;
	function complete(onDone:Error -> R -> Void):EventEmitterT<R>;
	function sql(onSQL:String -> Void):EventEmitterT<R>;
	function proxy(emitter:EventEmitterT<R>, ?options:ProxyOptions):EventEmitterT<R>;
};
typedef Options = {
	@:optional
	var dialect : String;
	@:optional
	var dialectModulePath : String;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var protocol : String;
	@:optional
	var define : DefineOptions;
	@:optional
	var query : QueryOptions;
	@:optional
	var sync : SyncOptions;
	@:optional
	var timezone : String;
	@:optional
	var logging : Dynamic;
	@:optional
	var omitNull : Bool;
	@:optional
	var queue : Bool;
	@:optional
	var maxConcurrentQueries : Float;
	@:optional
	var native : Bool;
	@:optional
	var replication : ReplicationOptions;
	@:optional
	var pool : PoolOptions;
	@:optional
	var quoteIdentifiers : Bool;
	@:optional
	var language : String;
};
typedef PoolOptions = {
	@:optional
	var maxConnections : Float;
	@:optional
	var minConnections : Float;
	@:optional
	var maxIdleTime : Float;
	@:optional
	var validateConnection : ?Dynamic -> Bool;
};
typedef AttributeOptions = {
	@:optional
	var type : String;
	@:optional
	var allowNull : Bool;
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var unique : Dynamic;
	@:optional
	var primaryKey : Bool;
	@:optional
	var field : String;
	@:optional
	var autoIncrement : Bool;
	@:optional
	var comment : String;
	@:optional
	var references : Dynamic;
	@:optional
	var referencesKey : String;
	@:optional
	var onUpdate : String;
	@:optional
	var onDelete : String;
	@:optional
	var get : Void -> Dynamic;
	@:optional
	var set : ?Dynamic -> Void;
	@:optional
	var validate : Dynamic;
};
typedef ForeignKeyAttributeOptions = {
	>AttributeOptions,
	var fieldName : String;
};
typedef DefineOptions = {
	@:optional
	var defaultScope : FindOptions;
	@:optional
	var scopes : Dynamic;
	@:optional
	var omitNull : Bool;
	@:optional
	var timestamps : Bool;
	@:optional
	var paranoid : Bool;
	@:optional
	var underscored : Bool;
	@:optional
	var underscoredAll : Bool;
	@:optional
	var freezeTableName : Bool;
	@:optional
	var createdAt : Dynamic;
	@:optional
	var updatedAt : Dynamic;
	@:optional
	var deletedAt : Dynamic;
	@:optional
	var tableName : String;
	@:optional
	var getterMethods : Dynamic;
	@:optional
	var setterMethods : Dynamic;
	@:optional
	var instanceMethods : Dynamic;
	@:optional
	var classMethods : Dynamic;
	@:optional
	var schema : String;
	@:optional
	var schemaDelimiter : String;
	@:optional
	var engine : String;
	@:optional
	var charset : String;
	@:optional
	var comment : String;
	@:optional
	var collate : String;
	@:optional
	var whereCollection : Dynamic;
	@:optional
	var language : String;
	@:optional
	var hooks : Hooks;
	@:optional
	var validate : Dynamic;
	@:optional
	var indexes : Array<DefineIndexOptions>;
};
typedef DefineIndexOptions = {
	@:optional
	var name : String;
	var type : String;
	var method : String;
	@:optional
	var unique : Bool;
	@:optional
	var concurrently : Bool;
	var fields : Array<Dynamic>;
};
typedef QueryOptions = {
	@:optional
	var raw : Bool;
	@:optional
	var transaction : Transaction;
	@:optional
	var type : String;
	@:optional
	var lock : String;
	@:optional
	var dataType : Dynamic;
	@:optional
	var logging : Dynamic;
	@:optional
	var plain : Bool;
};
typedef SyncOptions = {
	@:optional
	var force : Bool;
	@:optional
	var logging : Dynamic;
	@:optional
	var schema : String;
};
typedef ReplicationOptions = {
	@:optional
	var read : Array<Server>;
	@:optional
	var write : Server;
};
typedef Server = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var database : String;
	@:optional
	var username : String;
	@:optional
	var password : String;
};
typedef DropOptions = {
	@:optional
	var cascade : Bool;
};
typedef SchemaOptions = {
	@:optional
	var schemaDelimiter : String;
};
typedef FindOptions = {
	@:optional
	var where : Dynamic;
	@:optional
	var attributes : Array<Dynamic>;
	@:optional
	var include : Dynamic;
	@:optional
	var order : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var offset : Float;
};
typedef BuildOptions = {
	@:optional
	var raw : Bool;
	@:optional
	var isNewRecord : Bool;
	@:optional
	var isDirty : Bool;
	@:optional
	var include : Array<Dynamic>;
};
typedef CopyOptions = {
	>BuildOptions,
	@:optional
	var fields : Array<String>;
	@:optional
	var transaction : Transaction;
};
typedef FindOrCreateOptions = {
	>FindOptions,
	>QueryOptions,
};
typedef BulkCreateOptions = {
	@:optional
	var fields : Array<String>;
	@:optional
	var validate : Bool;
	@:optional
	var hooks : Bool;
	@:optional
	var ignoreDuplicates : Bool;
};
typedef DestroyOptions = {
	@:optional
	var hooks : Bool;
	@:optional
	var limit : Float;
	@:optional
	var truncate : Bool;
};
typedef DestroyInstanceOptions = {
	var force : Bool;
};
typedef InsertOptions = {
	@:optional
	var limit : Float;
	@:optional
	var returning : String;
	@:optional
	var allowNull : String;
};
typedef UpdateOptions = {
	@:optional
	var validate : Bool;
	@:optional
	var hooks : Bool;
	@:optional
	var limit : Float;
};
typedef SetOptions = {
	@:optional
	var raw : Bool;
	@:optional
	var reset : Bool;
	@:optional
	var include : Dynamic;
};
typedef SaveOptions = {
	@:optional
	var fields : Dynamic;
	@:optional
	var silent : Bool;
	@:optional
	var transaction : Transaction;
};
typedef ValidateOptions = {
	var skip : Array<String>;
};
typedef IncrementOptions = {
	@:optional
	var by : Float;
	@:optional
	var transaction : Transaction;
};
typedef IndexOptions = {
	@:optional
	var indicesType : String;
	@:optional
	var indexType : String;
	@:optional
	var indexName : String;
	@:optional
	var parser : Dynamic;
};
typedef ProxyOptions = {
	var events : Array<String>;
};
typedef AssociationOptions = {
	@:optional
	var hooks : Bool;
	@:optional
	var through : Dynamic;
	@:optional
	var as : String;
	@:optional
	var foreignKey : Dynamic;
	@:optional
	var onDelete : String;
	@:optional
	var onUpdate : String;
	@:optional
	var constraints : Bool;
};
typedef TriggerOptions = {
	@:optional
	var insert : Array<String>;
	@:optional
	var update : Array<String>;
	@:optional
	var delete : Array<String>;
	@:optional
	var truncate : Array<String>;
};
typedef TriggerParam = {
	var type : String;
	@:optional
	var direction : String;
	@:optional
	var name : String;
};
typedef SelectOptions = {
	@:optional
	var limit : Float;
	@:optional
	var offset : Float;
	@:optional
	var attributes : Array<Dynamic>;
	@:optional
	var hasIncludeWhere : Bool;
	@:optional
	var hasIncludeRequired : Bool;
	@:optional
	var hasMultiAssociation : Bool;
	@:optional
	var tableAs : String;
	@:optional
	var table : String;
	@:optional
	var include : Array<Dynamic>;
	@:optional
	var includeIgnoreAttributes : Bool;
	@:optional
	var where : Dynamic;
	@:optional
	var group : Dynamic;
	@:optional
	var having : Dynamic;
	@:optional
	var order : Dynamic;
	@:optional
	var lock : String;
};
typedef HashToWhereConditionsOption = {
	@:optional
	var include : Bool;
	@:optional
	var keysEscaped : Bool;
};
typedef ModelMangerGetDaoOptions = {
	var attribute : String;
};
typedef ModelManagerForEachDaoOptions = {
	var reverse : Bool;
};
typedef MigratorOptions = {
	var force : Bool;
};
typedef FindAndCountResult<T> = {
	@:optional
	var rows : Array<T>;
	@:optional
	var count : Float;
};
typedef Col = {
	var col : String;
};
typedef Cast = {
	var val : Dynamic;
	var type : String;
};
typedef Literal = {
	var val : Dynamic;
};
typedef And = {
	var args : Array<Dynamic>;
};
typedef Or = {
	var args : Array<Dynamic>;
};
typedef Where = {
	var attribute : String;
	var logic : Dynamic;
};
typedef TransactionOptions = {
	@:optional
	var autocommit : Bool;
	@:optional
	var isolationLevel : String;
};
typedef QueryChainerRunSeriallyOptions = {
	var skipOnError : Bool;
};
typedef CreateTableQueryOptions = {
	@:optional
	var comment : String;
	@:optional
	var uniqueKeys : Array<Dynamic>;
	@:optional
	var charset : String;
};
typedef MigratorExecOptions = {
	@:optional
	var before : Migrator -> Void;
	@:optional
	var after : Migrator -> Void;
	@:optional
	var success : Migrator -> Void;
};
typedef MigrationExecuteOptions = {
	var method : String;
};
typedef MigrationCompareOptions = {
	var withoutEquals : Bool;
};
typedef Promise = {
	function on(evt:String, fct:Void -> Void):Void;
	function emit(type:String, value:haxe.extern.Rest<Dynamic>):Void;
	function success(onSuccess:Void -> Void):Promise;
	function ok(onSuccess:Void -> Void):Promise;
	function error(onError:?Error -> Void):Promise;
	function fail(onError:?Error -> Void):Promise;
	function failure(onError:?Error -> Void):Promise;
	function done(handler:Error -> ?Dynamic -> Void):Promise;
	function complete(handler:Error -> ?Dynamic -> Void):Promise;
	function sql(onSQL:String -> Void):Promise;
	function proxy(promise:Promise, ?options:ProxyOptions):Promise;
	@:overload(function(?onFulfilled:?Dynamic -> Promise, ?onRejected:?Dynamic -> Promise):Promise { })
	@:overload(function<R>(?onFulfilled:?Dynamic -> PromiseT<R>, ?onRejected:?Dynamic -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:?Dynamic -> PromiseT<R>, ?onRejected:?Dynamic -> Void):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:?Dynamic -> Void, ?onRejected:?Dynamic -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R1, R2>(?onFulfilled:?Dynamic -> PromiseT<R1>, ?onRejected:?Dynamic -> PromiseT<R2>):Promise { })
	function then(?onFulfilled:?Dynamic -> Void, ?onRejected:?Dynamic -> Void):Promise;
	@:overload(function(?onFulfilled:haxe.extern.Rest<Dynamic> -> Void, ?onRejected:haxe.extern.Rest<Dynamic> -> Void):Promise { })
	@:overload(function(?onFulfilled:haxe.extern.Rest<Dynamic> -> Promise, ?onRejected:haxe.extern.Rest<Dynamic> -> Void):Promise { })
	@:overload(function(?onFulfilled:haxe.extern.Rest<Dynamic> -> Void, ?onRejected:haxe.extern.Rest<Dynamic> -> Promise):Promise { })
	@:overload(function<R>(?onFulfilled:haxe.extern.Rest<Dynamic> -> PromiseT<R>, ?onRejected:haxe.extern.Rest<Dynamic> -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:haxe.extern.Rest<Dynamic> -> Void, ?onRejected:haxe.extern.Rest<Dynamic> -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:haxe.extern.Rest<Dynamic> -> PromiseT<R>, ?onRejected:haxe.extern.Rest<Dynamic> -> Void):PromiseT<R> { })
	@:overload(function<R1, R2>(?onFulfilled:haxe.extern.Rest<Dynamic> -> PromiseT<R1>, ?onRejected:haxe.extern.Rest<Dynamic> -> PromiseT<R2>):Promise { })
	function spread(?onFulfilled:haxe.extern.Rest<Dynamic> -> Promise, ?onRejected:haxe.extern.Rest<Dynamic> -> Promise):Promise;
	@:overload(function<R>(onRejected:?Dynamic -> PromiseT<R>):PromiseT<R> { })
	@:overload(function(onRejected:?Dynamic -> Void):Promise { })
	function catch(onRejected:?Dynamic -> Promise):Promise;
};
typedef PromiseT<T> = {
	>Promise,
	function on(evt:String, fct:T -> Void):Void;
	function emit(type:String, value:haxe.extern.Rest<T>):Void;
	function success(onSuccess:T -> Void):PromiseT<T>;
	function ok(onSuccess:T -> Void):PromiseT<T>;
	function done(handler:Error -> T -> Void):PromiseT<T>;
	function complete(handler:Error -> T -> Void):PromiseT<T>;
	function sql(onSQL:String -> Void):PromiseT<T>;
	function proxy(promise:PromiseT<T>, ?options:ProxyOptions):PromiseT<T>;
	@:overload(function(?onFulfilled:?T -> Promise, ?onRejected:?T -> Promise):Promise { })
	@:overload(function<R>(?onFulfilled:?T -> PromiseT<R>, ?onRejected:?T -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:?T -> PromiseT<R>, ?onRejected:?T -> Void):PromiseT<R> { })
	@:overload(function<R>(?onFulfilled:?T -> Void, ?onRejected:?T -> PromiseT<R>):PromiseT<R> { })
	@:overload(function<R1, R2>(?onFulfilled:?T -> PromiseT<R1>, ?onRejected:?T -> PromiseT<R2>):Promise { })
	function then(?onFulfilled:?T -> Void, ?onRejected:?T -> Void):Promise;
	@:overload(function<R>(onRejected:?T -> PromiseT<R>):PromiseT<R> { })
	@:overload(function(onRejected:?T -> Void):Promise { })
	function catch(onRejected:?T -> Promise):Promise;
};
typedef Utils = {
	var _ : Lodash;
	function format(arr:Array<Dynamic>, ?dialect:String):String;
	function formatNamedParameters(sql:String, parameters:Dynamic, ?dialect:String):String;
	function injectScope(scope:String, merge:Bool):Dynamic;
	function smartWhere(whereArg:Dynamic, dialect:String):Dynamic;
	function compileSmartWhere(obj:Dynamic, dialect:String):Array<Dynamic>;
	function getWhereLogic(logic:String, ?val:Dynamic):String;
	function isHash(obj:Dynamic):Bool;
	function hasChanged(attrValue:Dynamic, value:Dynamic):Bool;
	function argsArePrimaryKeys(args:Array<Dynamic>, primaryKeys:Dynamic):Bool;
	function combineTableNames(table1:String, table2:String):String;
	function singularize(s:String, ?language:String):String;
	function pluralize(s:String, language:String):String;
	var mergeDefaults : Dynamic;
	function lowercaseFirst(str:String):String;
	function uppercaseFirst(str:String):String;
	function spliceStr(str:String, index:Float, count:Float, add:String):String;
	function camelize(str:String):String;
	function removeCommentsFromFunctionString(s:String):String;
	function toDefaultValue(value:Dynamic):Dynamic;
	function defaultValueSchemable(value:Dynamic):Bool;
	function setAttributes(hash:Dynamic, identifier:String, instance:Dynamic, prefix:String):Dynamic;
	function removeNullValuesFromHash(hash:Dynamic, omitNull:Bool, options:Dynamic):Dynamic;
	function firstValueOfHash(obj:Dynamic):Dynamic;
	function inherit(subClass:Dynamic, superClass:Dynamic):Dynamic;
	function stack():String;
	function now(dialect:String):Date;
	function tick(f:haxe.Constraints.Function):Void;
	function addTicks(s:String, ?tickChar:String):String;
	function removeTicks(s:String, ?tickChar:String):String;
	function generateUUID():String;
	function validateParameter(value:Dynamic, expectation:Dynamic):Bool;
	var CustomEventEmitter : EventEmitter;
	var Promise : Promise;
	var QueryChainer : QueryChainer;
	var Lingo : Dynamic;
};
typedef Lodash = {
	>_.LoDashStatic,
	function includes(str:String, needle:String):Bool;
	@:overload(function(str:String, condition:Dynamic):String { })
	function camelizeIf(str:String, condition:Bool):String;
	@:overload(function(str:String, condition:Dynamic):String { })
	function underscoredIf(str:String, condition:Bool):String;
	function compactLite<T>(arr:Array<T>):Array<T>;
};
typedef MetaPojo = {
	var from : String;
	var to : String;
};
typedef MetaInstance = {
	>MetaPojo,
	>Model<MetaInstance, MetaPojo>,
};
typedef DataTypeStringBase = {
	var BINARY : DataTypeString;
};
typedef DataTypeNumberBase = {
	var UNSIGNED : Bool;
	var ZEROFILL : Bool;
};
typedef DataTypeString = {
	>DataTypeStringBase,
};
typedef DataTypeChar = {
	>DataTypeStringBase,
};
typedef DataTypeInteger = {
	>DataTypeNumberBase,
};
typedef DataTypeBigInt = {
	>DataTypeNumberBase,
};
typedef DataTypeFloat = {
	>DataTypeNumberBase,
};
typedef DataTypeBlob = { };
typedef DataTypeDecimal = {
	var PRECISION : Float;
	var SCALE : Float;
};
typedef DataTypeVirtual = { };
typedef DataTypeEnum = { };
typedef DataTypeArray = { };
typedef DataTypeHstore = { };
typedef DataTypes = {
	var STRING : DataTypeString;
	var CHAR : DataTypeChar;
	var TEXT : String;
	var INTEGER : DataTypeInteger;
	var BIGINT : DataTypeBigInt;
	var DATE : String;
	var BOOLEAN : String;
	var FLOAT : DataTypeFloat;
	var NOW : String;
	var BLOB : DataTypeBlob;
	var DECIMAL : DataTypeDecimal;
	var UUID : String;
	var UUIDV1 : String;
	var UUIDV4 : String;
	var VIRTUAL : DataTypeVirtual;
	var NONE : DataTypeVirtual;
	var ENUM : DataTypeEnum;
	var ARRAY : DataTypeArray;
	var HSTORE : DataTypeHstore;
};
extern class SequelizeTopLevel {
	static var sequelize : sequelize.SequelizeStatic;
}
extern class SequelizeTopLevel {
	static var sequelize : sequelize.SequelizeStatic;
}
