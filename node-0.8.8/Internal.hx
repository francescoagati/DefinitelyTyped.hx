extern class InternalTopLevel {
	static function fail(actual:Dynamic, expected:Dynamic, message:String, operator:String):Void;
	static function assert(value:Dynamic, message:String):Void;
	static function ok(value:Dynamic, ?message:String):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notDeepEqual(acutal:Dynamic, expected:Dynamic, ?message:String):Void;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	static function throws(block:Dynamic, ?error:Dynamic, ?messsage:String):Void;
	static function doesNotThrow(block:Dynamic, ?error:Dynamic, ?messsage:String):Void;
	static function ifError(value:Dynamic):Void;
}
