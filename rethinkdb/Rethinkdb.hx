extern class Cursor {
	function hasNext():Bool;
	@:overload(function(cb:Error -> Dynamic -> Bool, ?done:Void -> Void):Dynamic { })
	function each(cb:Error -> Dynamic -> Void, ?done:Void -> Void):Dynamic;
	function next(cb:Error -> Dynamic -> Void):Dynamic;
	function toArray(cb:Error -> Array<Dynamic> -> Void):Dynamic;
	function close():Dynamic;
}
typedef ConnectionOptions = {
	var host : String;
	var port : Float;
	@:optional
	var db : String;
	@:optional
	var authKey : String;
};
typedef Connection = {
	function close():Dynamic;
	function reconnect(cb:Error -> Connection -> Void):Dynamic;
	function use(dbName:String):Dynamic;
	function addListener(event:String, cb:haxe.Constraints.Function):Dynamic;
	function on(event:String, cb:haxe.Constraints.Function):Dynamic;
};
typedef Db = {
	function tableCreate(name:String, ?options:TableOptions):Operation<CreateResult>;
	function tableDrop(name:String):Operation<DropResult>;
	function tableList():Operation<Array<String>>;
	function table(name:String, ?options:GetTableOptions):Table;
};
typedef TableOptions = {
	@:optional
	var primary_key : String;
	@:optional
	var durability : String;
	@:optional
	var cache_size : Float;
	@:optional
	var datacenter : String;
};
typedef GetTableOptions = {
	var useOutdated : Bool;
};
typedef Writeable = {
	function update(obj:Dynamic, ?options:UpdateOptions):Operation<WriteResult>;
	@:overload(function(expr:ExpressionFunction<Dynamic>):Operation<WriteResult> { })
	function replace(obj:Dynamic, ?options:UpdateOptions):Operation<WriteResult>;
	function delete(?options:UpdateOptions):Operation<WriteResult>;
};
typedef Table = {
	>Sequence,
	function indexCreate(name:String, ?index:ExpressionFunction<Dynamic>):Operation<CreateResult>;
	function indexDrop(name:String):Operation<DropResult>;
	function indexList():Operation<Array<String>>;
	@:overload(function(obj:Dynamic, ?options:InsertOptions):Operation<WriteResult> { })
	function insert(obj:Array<Dynamic>, ?options:InsertOptions):Operation<WriteResult>;
	function get(key:String):Sequence;
	@:overload(function(keys:haxe.extern.Rest<String>):Sequence { })
	function getAll(key:String, ?index:Index):Sequence;
};
typedef Sequence = {
	>Operation<Cursor>,
	>Writeable,
	function between(lower:Dynamic, upper:Dynamic, ?index:Index):Sequence;
	@:overload(function(rql:Expression<Bool>):Sequence { })
	@:overload(function(obj:{ }):Sequence { })
	function filter(rql:ExpressionFunction<Bool>):Sequence;
	function innerJoin(sequence:Sequence, join:JoinFunction<Bool>):Sequence;
	function outerJoin(sequence:Sequence, join:JoinFunction<Bool>):Sequence;
	@:overload(function(leftAttribute:ExpressionFunction<Dynamic>, rightSequence:Sequence, ?index:Index):Sequence { })
	function eqJoin(leftAttribute:String, rightSequence:Sequence, ?index:Index):Sequence;
	function zip():Sequence;
	function map(transform:ExpressionFunction<Dynamic>):Sequence;
	function withFields(selectors:haxe.extern.Rest<Dynamic>):Sequence;
	function concatMap(transform:ExpressionFunction<Dynamic>):Sequence;
	@:overload(function(sorts:haxe.extern.Rest<Sort>):Sequence { })
	function orderBy(keys:haxe.extern.Rest<String>):Sequence;
	function skip(n:Float):Sequence;
	function limit(n:Float):Sequence;
	function slice(start:Float, ?end:Float):Sequence;
	function nth(n:Float):Expression<Dynamic>;
	function indexesOf(obj:Dynamic):Sequence;
	function isEmpty():Expression<Bool>;
	function union(sequence:Sequence):Sequence;
	function sample(n:Float):Sequence;
	function reduce(r:ReduceFunction<Dynamic>, ?base:Dynamic):Expression<Dynamic>;
	function count():Expression<Float>;
	function distinct():Sequence;
	function groupedMapReduce(group:ExpressionFunction<Dynamic>, map:ExpressionFunction<Dynamic>, reduce:ReduceFunction<Dynamic>, ?base:Dynamic):Sequence;
	function groupBy(aggregators:haxe.extern.Rest<Aggregator>):Expression<Dynamic>;
	function contains(prop:String):Expression<Bool>;
	function pluck(props:haxe.extern.Rest<String>):Sequence;
	function without(props:haxe.extern.Rest<String>):Sequence;
};
typedef ExpressionFunction<U> = { };
typedef JoinFunction<U> = { };
typedef ReduceFunction<U> = { };
typedef InsertOptions = {
	var upsert : Bool;
	var durability : String;
	var return_vals : Bool;
};
typedef UpdateOptions = {
	var non_atomic : Bool;
	var durability : String;
	var return_vals : Bool;
};
typedef WriteResult = {
	var inserted : Float;
	var replaced : Float;
	var unchanged : Float;
	var errors : Float;
	var deleted : Float;
	var skipped : Float;
	var first_error : Error;
	var generated_keys : Array<String>;
};
typedef JoinResult = {
	var left : Dynamic;
	var right : Dynamic;
};
typedef CreateResult = {
	var created : Float;
};
typedef DropResult = {
	var dropped : Float;
};
typedef Index = {
	var index : String;
	@:optional
	var left_bound : String;
	@:optional
	var right_bound : String;
};
typedef Expression<T> = {
	>Writeable,
	>Operation<T>,
	function merge(query:Expression<Dynamic>):Expression<Dynamic>;
	function append(prop:String):Expression<Dynamic>;
	function contains(prop:String):Expression<Bool>;
	function and(b:Bool):Expression<Bool>;
	function or(b:Bool):Expression<Bool>;
	function eq(v:Dynamic):Expression<Bool>;
	function ne(v:Dynamic):Expression<Bool>;
	function not():Expression<Bool>;
	function gt(value:T):Expression<Bool>;
	function ge(value:T):Expression<Bool>;
	function lt(value:T):Expression<Bool>;
	function le(value:T):Expression<Bool>;
	function add(n:Float):Expression<Float>;
	function sub(n:Float):Expression<Float>;
	function mul(n:Float):Expression<Float>;
	function div(n:Float):Expression<Float>;
	function mod(n:Float):Expression<Float>;
	function hasFields(fields:haxe.extern.Rest<String>):Expression<Bool>;
	function default(value:T):Expression<T>;
};
typedef Operation<T> = {
	function run(conn:Connection, cb:Error -> T -> Void):Dynamic;
};
typedef Aggregator = { };
typedef Sort = { };
typedef Time = { };
extern class RethinkdbTopLevel {
	static function connect(host:ConnectionOptions, cb:Error -> Connection -> Void):Dynamic;
	static function dbCreate(name:String):Operation<CreateResult>;
	static function dbDrop(name:String):Operation<DropResult>;
	static function dbList():Operation<Array<String>>;
	static function db(name:String):Db;
	static function table(name:String, ?options:{ var useOutdated : Bool; }):Table;
	static function asc(property:String):Sort;
	static function desc(property:String):Sort;
	static var count : Aggregator;
	static function sum(prop:String):Aggregator;
	static function avg(prop:String):Aggregator;
	static function row(name:String):Expression<Dynamic>;
	static function expr(stuff:Dynamic):Expression<Dynamic>;
	static function now():Time;
	static function branch(test:Expression<Bool>, trueBranch:Expression<Dynamic>, falseBranch:Expression<Dynamic>):Expression<Dynamic>;
}
extern class RethinkdbTopLevel {
	static function connect(host:ConnectionOptions, cb:Error -> Connection -> Void):Dynamic;
	static function dbCreate(name:String):Operation<CreateResult>;
	static function dbDrop(name:String):Operation<DropResult>;
	static function dbList():Operation<Array<String>>;
	static function db(name:String):Db;
	static function table(name:String, ?options:{ var useOutdated : Bool; }):Table;
	static function asc(property:String):Sort;
	static function desc(property:String):Sort;
	static var count : Aggregator;
	static function sum(prop:String):Aggregator;
	static function avg(prop:String):Aggregator;
	static function row(name:String):Expression<Dynamic>;
	static function expr(stuff:Dynamic):Expression<Dynamic>;
	static function now():Time;
	static function branch(test:Expression<Bool>, trueBranch:Expression<Dynamic>, falseBranch:Expression<Dynamic>):Expression<Dynamic>;
}
