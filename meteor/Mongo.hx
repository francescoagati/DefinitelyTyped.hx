typedef Selector = {
	>Dynamic,
};
typedef Modifier = { };
typedef SortSpecifier = { };
typedef FieldSpecifier = { };
@:enum abstract IdGenerationEnum(Int) {
	var STRING = 0;
	var MONGO = 1;
}
typedef AllowDenyOptions = {
	@:optional
	var insert : String -> Dynamic -> Bool;
	@:optional
	var update : String -> Dynamic -> Array<String> -> Dynamic -> Bool;
	@:optional
	var remove : String -> Dynamic -> Bool;
	@:optional
	var fetch : Array<String>;
	@:optional
	var transform : haxe.Constraints.Function;
};
typedef CollectionStatic = {
	function new<T>(name:String, ?options:{ @:optional
	var connection : Dynamic; @:optional
	var idGeneration : String; @:optional
	var transform : haxe.Constraints.Function; }):Collection<T>;
};
typedef Collection<T> = {
	function allow(options:{ @:optional
	var insert : String -> Dynamic -> Bool; @:optional
	var update : String -> Dynamic -> Array<String> -> Dynamic -> Bool; @:optional
	var remove : String -> Dynamic -> Bool; @:optional
	var fetch : Array<String>; @:optional
	var transform : haxe.Constraints.Function; }):Bool;
	function deny(options:{ @:optional
	var insert : String -> Dynamic -> Bool; @:optional
	var update : String -> Dynamic -> Array<String> -> Dynamic -> Bool; @:optional
	var remove : String -> Dynamic -> Bool; @:optional
	var fetch : Array<String>; @:optional
	var transform : haxe.Constraints.Function; }):Bool;
	function find(?selector:Mongo.Selector, ?options:{ @:optional
	var sort : Mongo.SortSpecifier; @:optional
	var skip : Float; @:optional
	var limit : Float; @:optional
	var fields : Mongo.FieldSpecifier; @:optional
	var reactive : Bool; @:optional
	var transform : haxe.Constraints.Function; }):Mongo.Cursor<T>;
	function findOne(?selector:Mongo.Selector, ?options:{ @:optional
	var sort : Mongo.SortSpecifier; @:optional
	var skip : Float; @:optional
	var fields : Mongo.FieldSpecifier; @:optional
	var reactive : Bool; @:optional
	var transform : haxe.Constraints.Function; }):T;
	function insert(doc:Dynamic, ?callback:haxe.Constraints.Function):String;
	function remove(selector:Mongo.Selector, ?callback:haxe.Constraints.Function):Void;
	function update(selector:Mongo.Selector, modifier:Mongo.Modifier, ?options:{ @:optional
	var multi : Bool; @:optional
	var upsert : Bool; }, ?callback:haxe.Constraints.Function):Float;
	function upsert(selector:Mongo.Selector, modifier:Mongo.Modifier, ?options:{ @:optional
	var multi : Bool; }, ?callback:haxe.Constraints.Function):{ @:optional
	var numberAffected : Float; @:optional
	var insertedId : String; };
	function _ensureIndex(indexName:String, ?options:{ }):Void;
};
typedef CursorStatic = {
	function new<T>():Cursor<T>;
};
typedef Cursor<T> = {
	function count():Float;
	function fetch():Array<T>;
	function forEach(callback:T -> Float -> Mongo.Cursor<T> -> Void, ?thisArg:Dynamic):Void;
	function map(callback:T -> Float -> Mongo.Cursor<T> -> Void, ?thisArg:Dynamic):Array<T>;
	function observe(callbacks:Dynamic):Meteor.LiveQueryHandle;
	function observeChanges(callbacks:Dynamic):Meteor.LiveQueryHandle;
};
typedef ObjectIDStatic = {
	function new(hexString:String):ObjectID;
};
typedef ObjectID = { };
extern class MongoTopLevel {
	static var Collection : CollectionStatic;
	static var Cursor : CursorStatic;
	static var ObjectID : ObjectIDStatic;
}
