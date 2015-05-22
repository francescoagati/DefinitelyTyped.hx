typedef Test = {
	var done : ICallbackFunction;
	function expect(num:Float):Void;
	function fail(actual:Dynamic, expected:Dynamic, message:String, operator:String):Void;
	function assert(value:Dynamic, message:String):Void;
	function ok(value:Dynamic, ?message:String):Void;
	function equal(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function deepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function strictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function throws(block:Dynamic, ?error:Dynamic, ?message:String):Void;
	function doesNotThrow(block:Dynamic, ?error:Dynamic, ?message:String):Void;
	function ifError(value:Dynamic):Void;
	function equals(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function same(actual:Dynamic, expected:Dynamic, ?message:String):Void;
};
typedef ITestBody = { };
typedef ITestGroup = {
	@:optional
	var setUp : ICallbackFunction -> Void;
	@:optional
	var tearDown : ICallbackFunction -> Void;
};
typedef ICallbackFunction = { };
