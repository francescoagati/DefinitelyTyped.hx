typedef TestCase = { };
typedef Test = {
	function test(name:String, cb:tape.TestCase):Void;
	function plan(n:Float):Void;
	function end():Void;
	function fail(?msg:String):Void;
	function pass(?msg:String):Void;
	function skip(?msg:String):Void;
	function ok(value:Dynamic, ?msg:String):Void;
	function true(value:Dynamic, ?msg:String):Void;
	function assert(value:Dynamic, ?msg:String):Void;
	function notOk(value:Dynamic, ?msg:String):Void;
	function false(value:Dynamic, ?msg:String):Void;
	function notok(value:Dynamic, ?msg:String):Void;
	function error(err:Dynamic, ?msg:String):Void;
	function ifError(err:Dynamic, ?msg:String):Void;
	function ifErr(err:Dynamic, ?msg:String):Void;
	function iferror(err:Dynamic, ?msg:String):Void;
	function equal(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function equals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function is(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function strictEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function strictEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notStrictEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notStrictEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isNotEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isNot(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function not(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function doesNotEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isInequal(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function deepEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function deepEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isEquivalent(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function same(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notDeepEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notEquivalent(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notDeeply(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notSame(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isNotDeepEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isNotDeeply(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isNotEquivalent(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function isInequivalent(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function deepLooseEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function looseEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function looseEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notDeepLooseEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notLooseEqual(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function notLooseEquals(a:Dynamic, b:Dynamic, ?msg:String):Void;
	function throws(fn:Void -> Void, expected:Dynamic, ?msg:String):Void;
	function doesNotThrow(fn:Void -> Void, expected:Dynamic, ?msg:String):Void;
};
extern class TapeTopLevel {
	static function tape(name:String, cb:tape.TestCase):Void;
	static function skip(name:String, cb:tape.TestCase):Void;
	static function only(name:String, cb:tape.TestCase):Void;
	static function createHarness():Dynamic;
	static function createStream(?opts:Dynamic):NodeJS.ReadableStream;
}
extern class TapeTopLevel {
	static function tape(name:String, cb:tape.TestCase):Void;
	static function skip(name:String, cb:tape.TestCase):Void;
	static function only(name:String, cb:tape.TestCase):Void;
	static function createHarness():Dynamic;
	static function createStream(?opts:Dynamic):NodeJS.ReadableStream;
}
extern class TapeTopLevel {
	static function tape(name:String, cb:tape.TestCase):Void;
	static function skip(name:String, cb:tape.TestCase):Void;
	static function only(name:String, cb:tape.TestCase):Void;
	static function createHarness():Dynamic;
	static function createStream(?opts:Dynamic):NodeJS.ReadableStream;
}
