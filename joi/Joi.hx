typedef ValidationOptions = {
	@:optional
	var abortEarly : Bool;
	@:optional
	var convert : Bool;
	@:optional
	var allowUnknown : Bool;
	@:optional
	var skipFunctions : Bool;
	@:optional
	var stripUnknown : Bool;
	@:optional
	var language : Dynamic;
	@:optional
	var context : Dynamic;
};
typedef RenameOptions = {
	@:optional
	var alias : Bool;
	@:optional
	var multiple : Bool;
	@:optional
	var override : Bool;
};
typedef WhenOptions = {
	var is : Schema;
	@:optional
	var then : Schema;
	@:optional
	var otherwise : Schema;
};
typedef ReferenceOptions = {
	@:optional
	var separator : String;
	@:optional
	var contextPrefix : String;
};
typedef ValidationError = {
	var message : String;
	var details : Array<ValidationErrorItem>;
	function simple():String;
	function annotated():String;
};
typedef ValidationErrorItem = {
	var message : String;
	var type : String;
	var path : String;
	@:optional
	var options : ValidationOptions;
};
typedef SchemaMap = { };
typedef Schema = {
	>AnySchema<Schema>,
};
typedef Reference = {
	>Schema,
};
typedef AnySchema<T:(AnySchema<Schema>)> = {
	@:overload(function(values:Array<Dynamic>):T { })
	function allow(value:Dynamic, values:haxe.extern.Rest<Dynamic>):T;
	@:overload(function(values:Array<Dynamic>):T { })
	function valid(value:Dynamic, values:haxe.extern.Rest<Dynamic>):T;
	@:overload(function(values:Array<Dynamic>):T { })
	function invalid(value:Dynamic, values:haxe.extern.Rest<Dynamic>):T;
	function required():T;
	function optional():T;
	function forbidden():T;
	function description(desc:String):T;
	@:overload(function(notes:Array<String>):T { })
	function notes(notes:String):T;
	@:overload(function(notes:Array<String>):T { })
	function tags(notes:String):T;
	function meta(meta:Dynamic):T;
	function example(value:Dynamic):T;
	function unit(name:String):T;
	function options(options:ValidationOptions):T;
	function strict():T;
	function default(value:Dynamic):T;
	function concat(schema:T):T;
	@:overload(function(ref:Reference, options:WhenOptions):AlternativesSchema { })
	function when(ref:String, options:WhenOptions):AlternativesSchema;
};
typedef BooleanSchema = {
	>AnySchema<BooleanSchema>,
};
typedef NumberSchema = {
	>AnySchema<NumberSchema>,
	function min(limit:Float):NumberSchema;
	function max(limit:Float):NumberSchema;
	function integer():NumberSchema;
};
typedef StringSchema = {
	>AnySchema<StringSchema>,
	function insensitive():StringSchema;
	function min(limit:Float):StringSchema;
	function max(limit:Float):StringSchema;
	function length(limit:Float):StringSchema;
	function regex(pattern:js.RegExp):StringSchema;
	function alphanum():StringSchema;
	function token():StringSchema;
	function email():StringSchema;
	function guid():StringSchema;
	function isoDate():StringSchema;
	function lowercase():StringSchema;
	function uppercase():StringSchema;
	function trim():StringSchema;
};
typedef ArraySchema = {
	>AnySchema<ArraySchema>,
	@:overload(function(types:Array<Schema>):ArraySchema { })
	function includes(type:Schema, types:haxe.extern.Rest<Schema>):ArraySchema;
	@:overload(function(types:Array<Schema>):ArraySchema { })
	function excludes(type:Schema, types:haxe.extern.Rest<Schema>):ArraySchema;
	function min(limit:Float):ArraySchema;
	function max(limit:Float):ArraySchema;
	function length(limit:Float):ArraySchema;
};
typedef ObjectSchema = {
	>AnySchema<ObjectSchema>,
	function keys(?schema:SchemaMap):ObjectSchema;
	function min(limit:Float):ObjectSchema;
	function max(limit:Float):ObjectSchema;
	function length(limit:Float):ObjectSchema;
	function pattern(regex:js.RegExp, schema:Schema):ObjectSchema;
	@:overload(function(peers:Array<String>):ObjectSchema { })
	function and(peer1:String, peer2:String, peers:haxe.extern.Rest<String>):ObjectSchema;
	@:overload(function(peers:Array<String>):ObjectSchema { })
	function or(peer1:String, peer2:String, peers:haxe.extern.Rest<String>):ObjectSchema;
	@:overload(function(peers:Array<String>):ObjectSchema { })
	function xor(peer1:String, peer2:String, peers:haxe.extern.Rest<String>):ObjectSchema;
	@:overload(function(key:String, peers:Array<String>):ObjectSchema { })
	function with(key:String, peers:String):ObjectSchema;
	@:overload(function(key:String, peers:Array<String>):ObjectSchema { })
	function without(key:String, peers:String):ObjectSchema;
	function rename(from:String, to:String, ?options:RenameOptions):ObjectSchema;
	@:overload(function(ref:Reference, schema:Schema, message:String):ObjectSchema { })
	function assert(ref:String, schema:Schema, message:String):ObjectSchema;
	function unknown(?allow:Bool):ObjectSchema;
};
typedef BinarySchema = {
	>AnySchema<BinarySchema>,
	function min(limit:Float):BinarySchema;
	function max(limit:Float):BinarySchema;
	function length(limit:Float):BinarySchema;
};
typedef DateSchema = {
	>AnySchema<DateSchema>,
	@:overload(function(date:Float):DateSchema { })
	@:overload(function(date:String):DateSchema { })
	function min(date:Date):DateSchema;
	@:overload(function(date:Float):DateSchema { })
	@:overload(function(date:String):DateSchema { })
	function max(date:Date):DateSchema;
};
typedef FunctionSchema = {
	>AnySchema<FunctionSchema>,
};
typedef AlternativesSchema = {
	>AnySchema<FunctionSchema>,
	function try(schemas:Array<Schema>):AlternativesSchema;
	@:overload(function(ref:Reference, options:WhenOptions):AlternativesSchema { })
	function when(ref:String, options:WhenOptions):AlternativesSchema;
};
extern class JoiTopLevel {
	static function any():Schema;
	static function array():ArraySchema;
	static function bool():BooleanSchema;
	static function boolean():BooleanSchema;
	static function binary():BinarySchema;
	static function date():DateSchema;
	static function func():FunctionSchema;
	static function number():NumberSchema;
	static function object(?schema:SchemaMap):ObjectSchema;
	static function string():StringSchema;
	static function alternatives(types:Array<Schema>):Schema;
	static function alternatives(type1:Schema, type2:Schema, types:haxe.extern.Rest<Schema>):Schema;
	static function validate<T>(value:T, schema:Schema, callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Dynamic, callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Schema, ?options:ValidationOptions, ?callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Dynamic, ?options:ValidationOptions, ?callback:ValidationError -> T -> Void):Void;
	static function compile(schema:Dynamic):Schema;
	static function assert(value:Dynamic, schema:Schema):Void;
	static function ref(key:String, ?options:ReferenceOptions):Reference;
}
extern class JoiTopLevel {
	static function any():Schema;
	static function array():ArraySchema;
	static function bool():BooleanSchema;
	static function boolean():BooleanSchema;
	static function binary():BinarySchema;
	static function date():DateSchema;
	static function func():FunctionSchema;
	static function number():NumberSchema;
	static function object(?schema:SchemaMap):ObjectSchema;
	static function string():StringSchema;
	static function alternatives(types:Array<Schema>):Schema;
	static function alternatives(type1:Schema, type2:Schema, types:haxe.extern.Rest<Schema>):Schema;
	static function validate<T>(value:T, schema:Schema, callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Dynamic, callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Schema, ?options:ValidationOptions, ?callback:ValidationError -> T -> Void):Void;
	static function validate<T>(value:T, schema:Dynamic, ?options:ValidationOptions, ?callback:ValidationError -> T -> Void):Void;
	static function compile(schema:Dynamic):Schema;
	static function assert(value:Dynamic, schema:Schema):Void;
	static function ref(key:String, ?options:ReferenceOptions):Reference;
}
