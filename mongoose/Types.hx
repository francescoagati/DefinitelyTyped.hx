extern class ObjectId {
	function new(id:haxe.extern.EitherType<String, Float>):Void;
	function toHexString():String;
	function equals(other:ObjectId):Bool;
	function getTimestamp():Date;
	function isValid():Bool;
	static function createFromTime(time:Float):ObjectId;
	static function createFromHexString(hexString:String):ObjectId;
}
extern class Schema {
	static var Types : { var String : String; var ObjectId : Types.ObjectId; var OId : Types.ObjectId; var Mixed : Dynamic; };
	function new(?schema:Dynamic, ?options:Dynamic):Void;
	function add(obj:Dynamic, ?prefix:String):Void;
	function eachPath(fn:String -> Dynamic -> Void):Schema;
	function get(key:String):Dynamic;
	function index(fields:Dynamic, ?options:Dynamic):Schema;
	function indexes():Void;
	@:overload(function(method:Dynamic):Schema { })
	function method(name:String, fn:haxe.Constraints.Function):Schema;
	@:overload(function(path:String, constructor:Dynamic):Schema { })
	function path(path:String):Dynamic;
	function pathType(path:String):String;
	function plugin(plugin:Schema -> ?Dynamic -> Void, ?options:Dynamic):Schema;
	function post(method:String, fn:haxe.Constraints.Function):Schema;
	function pre(method:String, callback:haxe.Constraints.Function):Schema;
	function requiredPaths():Array<String>;
	function set(key:String, value:Dynamic):Void;
	function virtual(name:String, ?options:Dynamic):VirtualType;
	function virtualpath(name:String):VirtualType;
}
typedef SchemaOption = {
	@:optional
	var autoIndex : Bool;
	@:optional
	var bufferCommands : Bool;
	@:optional
	var capped : Bool;
	@:optional
	var collection : String;
	@:optional
	var id : Bool;
	@:optional
	var _id : Bool;
	@:optional
	var minimize : Bool;
	@:optional
	var read : String;
	@:optional
	var safe : Bool;
	@:optional
	var shardKey : Bool;
	@:optional
	var strict : Bool;
	@:optional
	var toJSON : Dynamic;
	@:optional
	var toObject : Dynamic;
	@:optional
	var versionKey : Bool;
};
typedef Model<T:(Document)> = {
	>NodeJS.EventEmitter,
	function new(doc:Dynamic):T;
	@:overload(function(aggregation:Dynamic, callback:Dynamic -> Array<T> -> Void):Promise<Array<T>> { })
	@:overload(function(aggregation1:Dynamic, aggregation2:Dynamic, callback:Dynamic -> Array<T> -> Void):Promise<Array<T>> { })
	@:overload(function(aggregation1:Dynamic, aggregation2:Dynamic, aggregation3:Dynamic, callback:Dynamic -> Array<T> -> Void):Promise<Array<T>> { })
	function aggregate(aggregations:haxe.extern.Rest<Dynamic>):Aggregate<Array<T>>;
	function count(conditions:Dynamic, ?callback:Dynamic -> Float -> Void):Query<Float>;
	@:overload(function(doc1:Dynamic, doc2:Dynamic, ?fn:Dynamic -> T -> T -> Void):Promise<Array<T>> { })
	@:overload(function(doc1:Dynamic, doc2:Dynamic, doc3:Dynamic, ?fn:Dynamic -> T -> T -> T -> Void):Promise<Array<T>> { })
	function create(doc:Dynamic, ?fn:Dynamic -> T -> Void):Promise<T>;
	function discriminator<U:(Document)>(name:String, schema:Schema):Model<U>;
	@:overload(function(field:String, conditions:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>> { })
	function distinct(field:String, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>>;
	function ensureIndexes(callback:Dynamic -> Void):Promise<T>;
	@:overload(function(cond:Dynamic, fields:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>> { })
	@:overload(function(cond:Dynamic, fields:Dynamic, options:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>> { })
	function find(cond:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>>;
	@:overload(function(id:String, fields:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(id:String, fields:Dynamic, options:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findById(id:String, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(id:String, options:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findByIdAndRemove(id:String, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(id:String, update:Dynamic, options:FindAndUpdateOption, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findByIdAndUpdate(id:String, update:Dynamic, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(cond:Dynamic, fields:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(cond:Dynamic, fields:Dynamic, options:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOne(?cond:Dynamic, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(cond:Dynamic, options:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOneAndRemove(cond:Dynamic, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(cond:Dynamic, update:Dynamic, options:FindAndUpdateOption, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOneAndUpdate(cond:Dynamic, update:Dynamic, ?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(point:Array<Float>, options:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>> { })
	function geoNear(point:{ var type : String; var coordinates : Array<Float>; }, options:Dynamic, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>>;
	function geoSearch(cond:Dynamic, options:GeoSearchOption, ?callback:Dynamic -> Array<T> -> Void):Query<Array<T>>;
	function increment():T;
	@:overload(function<K, V>(options:MapReduceOption2<T, K, V>, ?callback:Dynamic -> Array<MapReduceResult<K, V>> -> Void):Promise<Array<MapReduceResult<K, V>>> { })
	function mapReduce<K, V>(options:MapReduceOption<T, K, V>, ?callback:Dynamic -> Array<MapReduceResult<K, V>> -> Void):Promise<Array<MapReduceResult<K, V>>>;
	function model<U:(Document)>(name:String):Model<U>;
	@:overload(function<U>(doc:Array<U>, options:Dynamic, ?callback:Dynamic -> Array<U> -> Void):Promise<Array<U>> { })
	function populate<U>(doc:U, options:Dynamic, ?callback:Dynamic -> U -> Void):Promise<U>;
	@:overload(function(cond:Dynamic, update:Dynamic, options:Dynamic, ?callback:Dynamic -> Float -> Dynamic -> Void):Query<T> { })
	function update(cond:Dynamic, update:Dynamic, ?callback:Dynamic -> Float -> Dynamic -> Void):Query<T>;
	function remove(cond:Dynamic, ?callback:Dynamic -> Void):Query<{ }>;
	function save(?callback:Dynamic -> T -> Float -> Void):Query<T>;
	function where(path:String, ?val:Dynamic):Query<Array<T>>;
	@:overload(function(argument:haxe.Constraints.Function):Query<T> { })
	function $where(argument:String):Query<T>;
	var base : Mongoose;
	var collection : Collection;
	var db : Dynamic;
	var discriminators : Dynamic;
	var modelName : String;
	var schema : Schema;
};
typedef FindAndUpdateOption = {
	@:optional
	var new : Bool;
	@:optional
	var upsert : Bool;
	@:optional
	var sort : Dynamic;
	@:optional
	var select : Dynamic;
};
typedef GeoSearchOption = {
	var near : Array<Float>;
	var maxDistance : Float;
	@:optional
	var limit : Float;
	@:optional
	var lean : Bool;
};
typedef MapReduceOption<T:(Document), Key, Val> = {
	var map : Void -> Void;
	var reduce : Key -> Array<T> -> Val;
	@:optional
	var query : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var keeptemp : Bool;
	@:optional
	var finalize : Key -> Val -> Val;
	@:optional
	var scope : Dynamic;
	@:optional
	var jsMode : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var out : { @:optional
	var inline : Float; @:optional
	var replace : String; @:optional
	var reduce : String; @:optional
	var merge : String; };
};
typedef MapReduceOption2<T:(Document), Key, Val> = {
	var map : String;
	var reduce : Key -> Array<T> -> Val;
	@:optional
	var query : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var keeptemp : Bool;
	@:optional
	var finalize : Key -> Val -> Val;
	@:optional
	var scope : Dynamic;
	@:optional
	var jsMode : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var out : { @:optional
	var inline : Float; @:optional
	var replace : String; @:optional
	var reduce : String; @:optional
	var merge : String; };
};
typedef MapReduceResult<Key, Val> = {
	var _id : Key;
	var value : Val;
};
extern class Query<T> {
	@:overload(function(operation:String, ?callback:Dynamic -> T -> Void):Promise<T> { })
	@:overload(function(operation:haxe.Constraints.Function, ?callback:Dynamic -> T -> Void):Promise<T> { })
	function exec(?callback:Dynamic -> T -> Void):Promise<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function all(val:Float):Query<T>;
	function and(array:Array<Dynamic>):Query<T>;
	@:overload(function(a:Array<Float>, b:Array<Float>):Query<T> { })
	function box(val:Dynamic):Query<T>;
	function batchSize(val:Float):Query<T>;
	function cast<U:(Document)>(model:Model<U>, obj:Dynamic):U;
	@:overload(function(path:String, area:Dynamic):Query<T> { })
	function circle(area:Dynamic):Query<T>;
	function comment(val:Dynamic):Query<T>;
	@:overload(function(criteria:Dynamic, ?callback:Dynamic -> Float -> Void):Query<T> { })
	function count(?callback:Dynamic -> Float -> Void):Query<T>;
	@:overload(function(field:String, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(criteria:Dynamic, field:String, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(criteria:Query<T>, field:String, ?callback:Dynamic -> T -> Void):Query<T> { })
	function distinct(?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(criteria:Query<T> -> Void):Query<T> { })
	@:overload(function(path:String, criteria:Dynamic):Query<T> { })
	@:overload(function(path:String, criteria:Query<T> -> Void):Query<T> { })
	function elemMatch(criteria:Dynamic):Query<T>;
	function equals(val:Dynamic):Query<T>;
	@:overload(function(path:String, ?val:Bool):Query<T> { })
	function exists(?val:Bool):Query<T>;
	@:overload(function(criteria:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function find(?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(criteria:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOne(?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(cond:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(cond:Dynamic, options:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOneAndRemove(?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(update:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(cond:Dynamic, update:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	@:overload(function(cond:Dynamic, update:Dynamic, options:FindAndUpdateOption, ?callback:Dynamic -> T -> Void):Query<T> { })
	function findOneAndUpdate(?callback:Dynamic -> T -> Void):Query<T>;
	function geometry(object:Dynamic):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function gt(val:Float):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function gte(val:Float):Query<T>;
	function hint(val:Dynamic):Query<T>;
	@:overload(function(path:String, val:Array<Dynamic>):Query<T> { })
	function in(val:Array<Dynamic>):Query<T>;
	function intersects(?arg:Dynamic):Query<T>;
	function lean(?bool:Bool):Query<T>;
	function limit(val:Float):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function lt(val:Float):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function lte(val:Float):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function maxDistance(val:Float):Query<T>;
	function maxScan(val:Float):Query<T>;
	@:overload(function(source:Dynamic):Query<T> { })
	function merge(source:Query<T>):Query<T>;
	@:overload(function(path:String, val:Array<Float>):Query<T> { })
	function mod(val:Array<Float>):Query<T>;
	@:overload(function(path:String, val:Dynamic):Query<T> { })
	function ne(val:Dynamic):Query<T>;
	@:overload(function(path:String, val:Dynamic):Query<T> { })
	function near(val:Dynamic):Query<T>;
	@:overload(function(path:String, val:Dynamic):Query<T> { })
	function nearSphere(val:Dynamic):Query<T>;
	@:overload(function(path:String, val:Array<Dynamic>):Query<T> { })
	function nin(val:Array<Dynamic>):Query<T>;
	function nor(array:Array<Dynamic>):Query<T>;
	function or(array:Array<Dynamic>):Query<T>;
	@:overload(function(path:String, coordinatePairs:haxe.extern.Rest<Array<Float>>):Query<T> { })
	function polygon(coordinatePairs:haxe.extern.Rest<Array<Float>>):Query<T>;
	@:overload(function(path:String, select:String, model:String, ?match:Dynamic, ?options:Dynamic):Query<T> { })
	@:overload(function(opt:PopulateOption):Query<T> { })
	function populate(path:String, ?select:String, ?match:Dynamic, ?options:Dynamic):Query<T>;
	function read(pref:String, ?tags:Array<Dynamic>):Query<T>;
	@:overload(function(path:String, val:js.RegExp):Query<T> { })
	function regex(val:js.RegExp):Query<T>;
	@:overload(function(criteria:Dynamic, ?callback:Dynamic -> T -> Void):Query<T> { })
	function remove(?callback:Dynamic -> T -> Void):Query<T>;
	@:overload(function(arg:Dynamic):Query<T> { })
	function select(arg:String):Query<T>;
	function setOptions(options:Dynamic):Query<T>;
	@:overload(function(path:String, val:Float):Query<T> { })
	function size(val:Float):Query<T>;
	function skip(val:Float):Query<T>;
	function slaveOk(?v:Bool):Query<T>;
	@:overload(function(val:Array<Float>):Query<T> { })
	@:overload(function(path:String, val:Float):Query<T> { })
	@:overload(function(path:String, val:Array<Float>):Query<T> { })
	function slice(val:Float):Query<T>;
	function snapshot(?v:Bool):Query<T>;
	@:overload(function(arg:String):Query<T> { })
	function sort(arg:Dynamic):Query<T>;
	function stream(?options:{ @:optional
	var transform : haxe.Constraints.Function; }):QueryStream;
	function tailable(?v:Bool):Query<T>;
	function toConstructor():Query<T>;
	@:overload(function(doc:Dynamic, ?callback:Dynamic -> Float -> T -> Void):Query<T> { })
	@:overload(function(criteria:Dynamic, doc:Dynamic, ?callback:Dynamic -> Float -> T -> Void):Query<T> { })
	@:overload(function(criteria:Dynamic, doc:Dynamic, options:Dynamic, ?callback:Dynamic -> Float -> T -> Void):Query<T> { })
	function update(?callback:Dynamic -> Float -> T -> Void):Query<T>;
	@:overload(function(?path:Dynamic, ?val:Dynamic):Query<T> { })
	function where(?path:String, ?val:Dynamic):Query<T>;
	@:overload(function(coordinate:Array<Float>, coordinatePairs:haxe.extern.Rest<Array<Float>>):Query<T> { })
	function within(?val:Dynamic):Query<T>;
	@:overload(function(argument:haxe.Constraints.Function):Query<T> { })
	function $where(argument:String):Query<T>;
	static var use$geoWithin : Bool;
}
typedef PopulateOption = {
	var path : String;
	@:optional
	var select : String;
	@:optional
	var model : String;
	@:optional
	var match : Dynamic;
	@:optional
	var options : Dynamic;
};
typedef QueryStream = {
	>NodeJS.EventEmitter,
	function destory(?err:Dynamic):Void;
	function pause():Void;
	function resume():Void;
	function pipe<T:(NodeJS.WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
	var paused : Float;
	var readable : Bool;
};
typedef Document = {
	@:optional
	var id : String;
	var _id : Types.ObjectId;
	function equals(doc:Document):Bool;
	function get(path:String, ?type:Dynamic):Dynamic;
	function inspect(?options:Dynamic):String;
	@:overload(function(path:String, error:Error, value:Dynamic):Void { })
	function invalidate(path:String, errorMsg:String, value:Dynamic):Void;
	function isDirectModified(path:String):Bool;
	function isInit(path:String):Bool;
	function isModified(?path:String):Bool;
	function isSelected(path:String):Bool;
	function markModified(path:String):Void;
	function modifiedPaths():Array<String>;
	@:overload(function<T>(?path:String, ?callback:Dynamic -> T -> Void):Document { })
	@:overload(function<T>(opt:PopulateOption, ?callback:Dynamic -> T -> Void):Document { })
	function populate<T>(?callback:Dynamic -> T -> Void):Document;
	function populated(path:String):Dynamic;
	function remove<T>(?callback:Dynamic -> Void):Query<T>;
	function save<T>(?callback:Dynamic -> T -> Void):Void;
	@:overload(function(path:String, val:Dynamic, ?options:Dynamic):Void { })
	@:overload(function(value:Dynamic):Void { })
	function set(path:String, val:Dynamic, ?type:Dynamic, ?options:Dynamic):Void;
	function toJSON(?options:Dynamic):Dynamic;
	function toObject(?options:Dynamic):Dynamic;
	function toString():String;
	function update<T>(doc:Dynamic, options:Dynamic, callback:Dynamic -> Float -> Dynamic -> Void):Query<T>;
	function validate(cb:Dynamic -> Void):Void;
	var isNew : Bool;
	var errors : Dynamic;
	var schema : Dynamic;
};
extern class Aggregate<T> {
	function new(options:haxe.extern.Rest<Dynamic>):Void;
	function append(options:haxe.extern.Rest<Dynamic>):Aggregate<T>;
	function group(arg:Dynamic):Aggregate<T>;
	function limit(num:Float):Aggregate<T>;
	function match(arg:Dynamic):Aggregate<T>;
	function near(parameters:Dynamic):Aggregate<T>;
	@:overload(function(arg:Dynamic):Aggregate<T> { })
	function project(arg:String):Aggregate<T>;
	function select(filter:String):Aggregate<T>;
	function skip(num:Float):Aggregate<T>;
	@:overload(function(arg:Dynamic):Aggregate<T> { })
	function sort(arg:String):Aggregate<T>;
	function unwind(fiels:String, rest:haxe.extern.Rest<String>):Aggregate<T>;
	function exec(?callback:Dynamic -> T -> Void):Promise<T>;
	function read(pref:String, tags:haxe.extern.Rest<Dynamic>):Aggregate<T>;
}
extern class Promise<T> {
	function new(?fn:Dynamic -> T -> Void):Void;
	function then<U>(onFulFill:T -> Void, ?onReject:Dynamic -> Void):Promise<U>;
	function end():Void;
	function fulfill(result:T):Promise<T>;
	function reject(err:Dynamic):Promise<T>;
	function resolve(err:Dynamic, result:T):Promise<T>;
	function onFulfill(listener:T -> Void):Promise<T>;
	function onReject(listener:Dynamic -> Void):Promise<T>;
	function onResolve(listener:Dynamic -> T -> Void):Promise<T>;
	function on(event:String, listener:haxe.Constraints.Function):Promise<T>;
	function addBack(listener:Dynamic -> T -> Void):Promise<T>;
	function addCallback(listener:T -> Void):Promise<T>;
	function addErrback(listener:Dynamic -> Void):Promise<T>;
	function complete(result:T):Promise<T>;
	function error(err:Dynamic):Promise<T>;
}
