extern class Mongoose {
	function connect(uri:String, ?options:ConnectionOption, ?callback:Dynamic -> Void):Mongoose;
	@:overload(function(uri:String, ?options:Dynamic):Connection { })
	@:overload(function(host:String, database_name:String, ?port:Float, ?options:ConnectionOption):Connection { })
	function createConnection():Connection;
	function disconnect(?callback:?Dynamic -> Void):Mongoose;
	function get(key:String):Dynamic;
	function model<T:(Document)>(name:String, ?schema:Schema, ?collection:String, ?skipInit:Bool):Model<T>;
	function modelNames():Array<String>;
	function plugin(plugin:Schema -> ?Dynamic -> Void, ?options:Dynamic):Mongoose;
	function set(key:String, value:Dynamic):Void;
	var mongo : Dynamic;
	var mquery : Dynamic;
	var version : String;
	var connection : Connection;
}
typedef Connection = {
	>NodeJS.EventEmitter,
	function new(base:Mongoose):Void;
	function close(?callback:Dynamic -> Void):Connection;
	function collection(name:String, ?options:Dynamic):Collection;
	function model<T:(Document)>(name:String, ?schema:Schema, ?collection:String):Model<T>;
	function modelNames():Array<String>;
	function open(host:String, ?database:String, ?port:Float, ?options:ConnectionOption, ?callback:Dynamic -> Void):Connection;
	function openSet(uris:String, ?database:String, ?options:ConnectionSetOption, ?callback:Dynamic -> Void):Connection;
	var db : Dynamic;
	var collections : { };
	var readyState : Float;
};
typedef ConnectionOption = {
	@:optional
	var db : Dynamic;
	@:optional
	var server : Dynamic;
	@:optional
	var replset : Dynamic;
	@:optional
	var user : String;
	@:optional
	var pass : String;
	@:optional
	var auth : Dynamic;
};
typedef ConnectionSetOption = {
	>ConnectionOption,
	@:optional
	var mongos : Bool;
};
typedef Collection = { };
extern class SchemaType {

}
extern class VirtualType {
	function get(fn:haxe.Constraints.Function):VirtualType;
	function set(fn:haxe.Constraints.Function):VirtualType;
}
extern class MongooseTopLevel {
	static function connect(uri:String, ?options:ConnectionOption, ?callback:Dynamic -> Void):Mongoose;
	static function createConnection():Connection;
	static function createConnection(uri:String, ?options:ConnectionOption):Connection;
	static function createConnection(host:String, database_name:String, ?port:Float, ?options:ConnectionOption):Connection;
	static function disconnect(?callback:?Dynamic -> Void):Mongoose;
	static function model<T:(Document)>(name:String, ?schema:Schema, ?collection:String, ?skipInit:Bool):Model<T>;
	static function modelNames():Array<String>;
	static function plugin(plugin:Schema -> ?Dynamic -> Void, ?options:Dynamic):Mongoose;
	static function get(key:String):Dynamic;
	static function set(key:String, value:Dynamic):Void;
	static var mongo : Dynamic;
	static var mquery : Dynamic;
	static var version : String;
	static var connection : Connection;
}
extern class MongooseTopLevel {
	static function connect(uri:String, ?options:ConnectionOption, ?callback:Dynamic -> Void):Mongoose;
	static function createConnection():Connection;
	static function createConnection(uri:String, ?options:ConnectionOption):Connection;
	static function createConnection(host:String, database_name:String, ?port:Float, ?options:ConnectionOption):Connection;
	static function disconnect(?callback:?Dynamic -> Void):Mongoose;
	static function model<T:(Document)>(name:String, ?schema:Schema, ?collection:String, ?skipInit:Bool):Model<T>;
	static function modelNames():Array<String>;
	static function plugin(plugin:Schema -> ?Dynamic -> Void, ?options:Dynamic):Mongoose;
	static function get(key:String):Dynamic;
	static function set(key:String, value:Dynamic):Void;
	static var mongo : Dynamic;
	static var mquery : Dynamic;
	static var version : String;
	static var connection : Connection;
}
