extern class AssertionError {
	var name : String;
	var message : String;
	var actual : Dynamic;
	var expected : Dynamic;
	var operator : String;
	var generatedMessage : Bool;
	function new(?options:{ @:optional
	var message : String; @:optional
	var actual : Dynamic; @:optional
	var expected : Dynamic; @:optional
	var operator : String; @:optional
	var stackStartFunction : haxe.Constraints.Function; }):Void;
}
extern class InternalTopLevel {
	static function fail(?actual:Dynamic, ?expected:Dynamic, ?message:String, ?operator:String):Void;
	static function ok(value:Dynamic, ?message:String):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notDeepEqual(acutal:Dynamic, expected:Dynamic, ?message:String):Void;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static var throws : { };
	static var doesNotThrow : { };
	static function ifError(value:Dynamic):Void;
}
