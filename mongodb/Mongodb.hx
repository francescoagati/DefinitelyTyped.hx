extern class MongoClient {
	function new(serverConfig:Dynamic, options:Dynamic):Void;
	@:overload(function(uri:String, callback:Error -> Db -> Void):Void { })
	static function connect(uri:String, options:Dynamic, callback:Error -> Db -> Void):Void;
}
extern class Server {
	function new(host:String, port:Float, ?opts:ServerOptions):Void;
	function connect():Dynamic;
}
extern class Db {
	function new(databaseName:String, serverConfig:Server, ?dbOptions:DbCreateOptions):Void;
	function db(dbName:String):Db;
	function open(callback:Error -> Db -> Void):Void;
	function close(?forceClose:Bool, ?callback:Error -> Dynamic -> Void):Void;
	function admin(callback:Error -> Dynamic -> Void):Dynamic;
	function collectionsInfo(collectionName:String, ?callback:Error -> Dynamic -> Void):Void;
	function collectionNames(collectionName:String, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(collectionName:String, callback:Error -> Collection -> Void):Collection { })
	@:overload(function(collectionName:String, options:MongoCollectionOptions, callback:Error -> Collection -> Void):Collection { })
	function collection(collectionName:String):Collection;
	function collections(callback:Error -> Array<Collection> -> Void):Void;
	function eval(code:Dynamic, parameters:Array<Dynamic>, ?options:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(callback:Error -> Dynamic -> Void):Void { })
	function logout(options:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(userName:String, password:String, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function authenticate(userName:String, password:String, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(username:String, password:String, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function addUser(username:String, password:String, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(username:String, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function removeUser(username:String, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(collectionName:String, options:CollectionCreateOptions, ?callback:Error -> Dynamic -> Void):Void { })
	function createCollection(collectionName:String, ?callback:Error -> Collection -> Void):Void;
	@:overload(function(selector:Dynamic, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function command(selector:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	function dropCollection(collectionName:String, ?callback:Error -> Dynamic -> Void):Void;
	function renameCollection(fromCollection:String, toCollection:String, ?callback:Error -> Dynamic -> Void):Void;
	function lastError(options:Dynamic, connectionOptions:Dynamic, callback:Error -> Dynamic -> Void):Void;
	function previousError(options:Dynamic, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(command_hash:Dynamic, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function executeDbCommand(command_hash:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(command_hash:Dynamic, options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function executeDbAdminCommand(command_hash:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(options:Dynamic, ?callback:Error -> Dynamic -> Void):Void { })
	function resetErrorHistory(?callback:Error -> Dynamic -> Void):Void;
	function createIndex(collectionName:Dynamic, fieldOrSpec:Dynamic, options:IndexOptions, callback:haxe.Constraints.Function):Void;
	function ensureIndex(collectionName:Dynamic, fieldOrSpec:Dynamic, options:IndexOptions, callback:haxe.Constraints.Function):Void;
	function cursorInfo(options:Dynamic, callback:haxe.Constraints.Function):Void;
	function dropIndex(collectionName:String, indexName:String, callback:haxe.Constraints.Function):Void;
	function reIndex(collectionName:String, callback:haxe.Constraints.Function):Void;
	function indexInformation(collectionName:String, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function dropDatabase(callback:Error -> Dynamic -> Void):Void;
	function stats(options:Dynamic, callback:haxe.Constraints.Function):Void;
	function _registerHandler(db_command:Dynamic, raw:Dynamic, connection:Dynamic, exhaust:Dynamic, callback:haxe.Constraints.Function):Void;
	function _reRegisterHandler(newId:Dynamic, object:Dynamic, callback:haxe.Constraints.Function):Void;
	function _callHandler(id:Dynamic, document:Dynamic, err:Dynamic):Dynamic;
	function _hasHandler(id:Dynamic):Dynamic;
	function _removeHandler(id:Dynamic):Dynamic;
	function _findHandler(id:Dynamic):{ var id : String; var callback : haxe.Constraints.Function; };
	function __executeQueryCommand(self:Dynamic, db_command:Dynamic, options:Dynamic, callback:Dynamic):Void;
	var DEFAULT_URL : String;
	function connect(url:String, options:{ @:optional
	var uri_decode_auth : Bool; }, callback:Error -> Dynamic -> Void):Void;
	function addListener(event:String, handler:Dynamic -> Dynamic):Dynamic;
}
extern class ObjectID {
	function new(?s:String):Void;
	function toHexString():String;
	function equals(otherID:ObjectID):Bool;
	function getTimestamp():Date;
	static function createFromTime(time:Float):ObjectID;
	static function createFromHexString(hexString:String):ObjectID;
}
extern class Binary {
	function new(buffer:Buffer, ?subType:Float):Void;
	function put(byte_value:Dynamic):Void;
	function write(buffer:Dynamic, offset:Float):Void;
	function read(position:Float, length:Float):Buffer;
	function value():String;
	function length():Float;
}
typedef SocketOptions = {
	@:optional
	var timeout : Float;
	@:optional
	var noDelay : Bool;
	@:optional
	var keepAlive : Float;
	@:optional
	var encoding : String;
};
typedef ServerOptions = {
	@:optional
	var auto_reconnect : Bool;
	@:optional
	var poolSize : Float;
	@:optional
	var socketOptions : Dynamic;
};
typedef PKFactory = {
	var counter : Float;
	var createPk : Void -> Float;
};
typedef DbCreateOptions = {
	@:optional
	var w : Dynamic;
	@:optional
	var wtimeout : Float;
	@:optional
	var fsync : Bool;
	@:optional
	var journal : Bool;
	@:optional
	var readPreference : String;
	@:optional
	var native_parser : Bool;
	@:optional
	var forceServerObjectId : Bool;
	@:optional
	var pkFactory : PKFactory;
	@:optional
	var serializeFunctions : Bool;
	@:optional
	var raw : Bool;
	@:optional
	var recordQueryStats : Bool;
	@:optional
	var retryMiliSeconds : Float;
	@:optional
	var numberOfRetries : Float;
	@:optional
	var logger : Dynamic;
	@:optional
	var slaveOk : Float;
	@:optional
	var promoteLongs : Bool;
};
extern class ReadPreference {
	static var PRIMARY : String;
	static var PRIMARY_PREFERRED : String;
	static var SECONDARY : String;
	static var SECONDARY_PREFERRED : String;
	static var NEAREST : String;
}
typedef CollectionCreateOptions = {
	@:optional
	var readPreference : String;
	@:optional
	var slaveOk : Bool;
	@:optional
	var serializeFunctions : Bool;
	@:optional
	var raw : Bool;
	@:optional
	var pkFactory : PKFactory;
};
typedef CollStats = {
	var ns : String;
	var count : Float;
	var size : Float;
	var avgObjSize : Float;
	var storageSize : Float;
	var numExtents : Float;
	var nindexes : Float;
	var lastExtentSize : Float;
	var paddingFactor : Float;
	var flags : Float;
	var totalIndexSize : Float;
	var indexSizes : { var _id_ : Float; var username : Float; };
};
typedef Collection = {
	function new(db:Db, collectionName:String, ?pkFactory:Dynamic, ?options:CollectionCreateOptions):Collection;
	@:overload(function(query:Dynamic, options:{ @:optional
	var safe : Dynamic; @:optional
	var continueOnError : Bool; @:optional
	var keepGoing : Bool; @:optional
	var serializeFunctions : Bool; }, callback:Error -> Dynamic -> Void):Void { })
	function insert(query:Dynamic, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(selector:Dynamic, options:{ @:optional
	var safe : Dynamic; @:optional
	var single : Bool; }, ?callback:Error -> Dynamic -> Void):Void { })
	function remove(selector:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	function rename(newName:String, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(doc:Dynamic, options:{ var safe : Dynamic; }, callback:Error -> Dynamic -> Void):Void { })
	function save(doc:Dynamic, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(selector:Dynamic, document:Dynamic, options:{ @:optional
	var safe : Bool; @:optional
	var upsert : Dynamic; @:optional
	var multi : Bool; @:optional
	var serializeFunctions : Bool; }, callback:Error -> Dynamic -> Void):Void { })
	function update(selector:Dynamic, document:Dynamic, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(key:String, query:Dynamic, options:{ var readPreference : String; }, callback:Error -> Dynamic -> Void):Void { })
	function distinct(key:String, query:Dynamic, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(query:Dynamic, callback:Error -> Dynamic -> Void):Void { })
	@:overload(function(query:Dynamic, options:{ var readPreference : String; }, callback:Error -> Dynamic -> Void):Void { })
	function count(callback:Error -> Dynamic -> Void):Void;
	function drop(?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(query:Dynamic, sort:Array<Dynamic>, doc:Dynamic, options:{ @:optional
	var safe : Dynamic; @:optional
	var remove : Bool; @:optional
	var upsert : Bool; @:optional
	var new : Bool; }, callback:Error -> Dynamic -> Void):Void { })
	function findAndModify(query:Dynamic, sort:Array<Dynamic>, doc:Dynamic, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(query:Dynamic, ?sort:Array<Dynamic>, ?options:{ var safe : Dynamic; }, ?callback:Error -> Dynamic -> Void):Void { })
	function findAndRemove(query:Dynamic, ?sort:Array<Dynamic>, ?callback:Error -> Dynamic -> Void):Void;
	@:overload(function(selector:Dynamic, ?callback:Error -> Cursor -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, ?callback:Error -> Cursor -> Void):Cursor { })
	@:overload(function(selector:Dynamic, options:CollectionFindOptions, ?callback:Error -> Cursor -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, options:CollectionFindOptions, ?callback:Error -> Cursor -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, skip:Float, limit:Float, ?callback:Error -> Cursor -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, skip:Float, limit:Float, timeout:Float, ?callback:Error -> Cursor -> Void):Cursor { })
	function find(?callback:Error -> Cursor -> Void):Cursor;
	@:overload(function(selector:Dynamic, ?callback:Error -> Dynamic -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, ?callback:Error -> Dynamic -> Void):Cursor { })
	@:overload(function(selector:Dynamic, options:CollectionFindOptions, ?callback:Error -> Dynamic -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, options:CollectionFindOptions, ?callback:Error -> Dynamic -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, skip:Float, limit:Float, ?callback:Error -> Dynamic -> Void):Cursor { })
	@:overload(function(selector:Dynamic, fields:Dynamic, skip:Float, limit:Float, timeout:Float, ?callback:Error -> Dynamic -> Void):Cursor { })
	function findOne(?callback:Error -> Dynamic -> Void):Cursor;
	@:overload(function(fieldOrSpec:Dynamic, options:IndexOptions, callback:Error -> String -> Void):Void { })
	function createIndex(fieldOrSpec:Dynamic, callback:Error -> String -> Void):Void;
	@:overload(function(fieldOrSpec:Dynamic, options:IndexOptions, callback:Error -> String -> Void):Void { })
	function ensureIndex(fieldOrSpec:Dynamic, callback:Error -> String -> Void):Void;
	function indexInformation(options:Dynamic, callback:haxe.Constraints.Function):Void;
	function dropIndex(name:String, callback:haxe.Constraints.Function):Void;
	function dropAllIndexes(callback:haxe.Constraints.Function):Void;
	function reIndex(callback:haxe.Constraints.Function):Void;
	function mapReduce(map:haxe.Constraints.Function, reduce:haxe.Constraints.Function, options:MapReduceOptions, callback:haxe.Constraints.Function):Void;
	function group(keys:Dynamic, condition:Dynamic, initial:Dynamic, reduce:haxe.Constraints.Function, finalize:haxe.Constraints.Function, command:Bool, options:{ var readPreference : String; }, callback:haxe.Constraints.Function):Void;
	function options(callback:haxe.Constraints.Function):Void;
	function isCapped(callback:haxe.Constraints.Function):Void;
	function indexExists(indexes:String, callback:haxe.Constraints.Function):Void;
	@:overload(function(x:Float, y:Float, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function geoNear(x:Float, y:Float, callback:haxe.Constraints.Function):Void;
	@:overload(function(x:Float, y:Float, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function geoHaystackSearch(x:Float, y:Float, callback:haxe.Constraints.Function):Void;
	function indexes(callback:haxe.Constraints.Function):Void;
	@:overload(function(pipeline:Array<Dynamic>, options:{ var readPreference : String; }, callback:Error -> Dynamic -> Void):Void { })
	function aggregate(pipeline:Array<Dynamic>, callback:Error -> Dynamic -> Void):Void;
	@:overload(function(callback:Error -> CollStats -> Void):Void { })
	function stats(options:{ var readPreference : String; var scale : Float; }, callback:Error -> CollStats -> Void):Void;
	var hint : Dynamic;
};
typedef MapReduceOptions = {
	@:optional
	var out : Dynamic;
	@:optional
	var query : Dynamic;
	@:optional
	var sort : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var keeptemp : Bool;
	@:optional
	var finalize : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var jsMode : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var readPreference : String;
};
typedef IndexOptions = {
	@:optional
	var w : Dynamic;
	@:optional
	var wtimeout : Float;
	@:optional
	var fsync : Bool;
	@:optional
	var journal : Bool;
	@:optional
	var unique : Bool;
	@:optional
	var sparse : Bool;
	@:optional
	var background : Bool;
	@:optional
	var dropDups : Bool;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var v : Float;
	@:optional
	var expireAfterSeconds : Float;
	@:optional
	var name : String;
};
extern class Cursor {
	function rewind():Cursor;
	function toArray(callback:Error -> Array<Dynamic> -> Dynamic):Void;
	function each(callback:Error -> Dynamic -> Void):Void;
	function count(applySkipLimit:Bool, callback:Error -> Float -> Void):Void;
	@:overload(function(keyOrList:String, direction:String, callback:Error -> Dynamic -> Void):Cursor { })
	function sort(keyOrList:Dynamic, ?callback:Error -> Dynamic -> Void):Cursor;
	function limit(limit:Float, ?callback:Error -> Dynamic -> Void):Cursor;
	function setReadPreference(preference:String, ?callback:haxe.Constraints.Function):Cursor;
	function skip(skip:Float, ?callback:Error -> Dynamic -> Void):Cursor;
	function batchSize(batchSize:Float, ?callback:Error -> Dynamic -> Void):Cursor;
	function nextObject(callback:Error -> Dynamic -> Void):Void;
	function explain(callback:Error -> Dynamic -> Void):Void;
	function stream():CursorStream;
	function close(callback:Error -> Dynamic -> Void):Void;
	function isClosed():Bool;
	static var INIT : Float;
	static var OPEN : Float;
	static var CLOSED : Float;
	static var GET_MORE : Float;
}
extern class CursorStream {
	function new(cursor:Cursor):Void;
	function pause():Dynamic;
	function resume():Dynamic;
	function destroy():Dynamic;
}
typedef CollectionFindOptions = {
	@:optional
	var limit : Float;
	@:optional
	var sort : Dynamic;
	@:optional
	var fields : Dynamic;
	@:optional
	var skip : Float;
	@:optional
	var hint : Dynamic;
	@:optional
	var explain : Bool;
	@:optional
	var snapshot : Bool;
	@:optional
	var timeout : Bool;
	@:optional
	var tailtable : Bool;
	@:optional
	var tailableRetryInterval : Float;
	@:optional
	var numberOfRetries : Float;
	@:optional
	var awaitdata : Bool;
	@:optional
	var oplogReplay : Bool;
	@:optional
	var exhaust : Bool;
	@:optional
	var batchSize : Float;
	@:optional
	var returnKey : Bool;
	@:optional
	var maxScan : Float;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var showDiskLoc : Bool;
	@:optional
	var comment : String;
	@:optional
	var raw : Bool;
	@:optional
	var readPreference : String;
	@:optional
	var partial : Bool;
};
typedef MongoCollectionOptions = {
	@:optional
	var safe : Dynamic;
	@:optional
	var serializeFunctions : Dynamic;
	@:optional
	var raw : Bool;
	@:optional
	var pkFactory : Dynamic;
	@:optional
	var readPreference : String;
};
