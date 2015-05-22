typedef DoneCallbackObject = {
	var failed : Float;
	var passed : Float;
	var total : Float;
	var runtime : Float;
};
typedef LogCallbackObject = {
	var result : Bool;
	var actual : Dynamic;
	var expected : Dynamic;
	var message : String;
	var source : String;
};
typedef ModuleStartCallbackObject = {
	var name : String;
};
typedef ModuleDoneCallbackObject = {
	var name : String;
	var failed : Float;
	var passed : Float;
	var total : Float;
};
typedef TestDoneCallbackObject = {
	var name : String;
	var module : String;
	var failed : Float;
	var passed : Float;
	var total : Float;
	var duration : Float;
};
typedef TestStartCallbackObject = {
	var name : String;
	var module : String;
};
typedef Config = {
	var altertitle : Bool;
	var autostart : Bool;
	var current : Dynamic;
	var reorder : Bool;
	var requireExpects : Bool;
	var testTimeout : Float;
	var urlConfig : Array<URLConfigItem>;
	var done : Dynamic;
};
typedef URLConfigItem = {
	var id : String;
	var label : String;
	var tooltip : String;
};
typedef LifecycleObject = {
	@:optional
	var setup : Void -> Dynamic;
	@:optional
	var teardown : Void -> Dynamic;
};
typedef QUnitAssert = {
	var assert : Dynamic;
	var current_testEnvironment : Dynamic;
	var jsDump : Dynamic;
	function async():Void -> Void;
	function deepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function equal(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function expect(amount:Float):Dynamic;
	function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function notEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function notPropEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function propEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function ok(state:Dynamic, ?message:String):Dynamic;
	function strictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	@:overload(function(block:Void -> Dynamic, ?message:String):Dynamic { })
	function throws(block:Void -> Dynamic, expected:Dynamic, ?message:String):Dynamic;
	@:overload(function(block:Void -> Dynamic, ?message:String):Dynamic { })
	function raises(block:Void -> Dynamic, expected:Dynamic, ?message:String):Dynamic;
};
typedef QUnitStatic = {
	>QUnitAssert,
	function start(?decrement:Float):Dynamic;
	function stop(?increment:Float):Dynamic;
	function begin(callback:Void -> Dynamic):Dynamic;
	function done(callback:DoneCallbackObject -> Dynamic):Dynamic;
	function log(callback:LogCallbackObject -> Dynamic):Dynamic;
	function moduleDone(callback:ModuleDoneCallbackObject -> Dynamic):Dynamic;
	function moduleStart(callback:ModuleStartCallbackObject -> Dynamic):Dynamic;
	function testDone(callback:TestDoneCallbackObject -> Dynamic):Dynamic;
	function testStart(callback:TestStartCallbackObject -> Dynamic):Dynamic;
	var config : Config;
	@:overload(function(name:String, test:QUnitAssert -> Dynamic):Dynamic { })
	function asyncTest(name:String, expected:Float, test:QUnitAssert -> Dynamic):Dynamic;
	function expect(amount:Float):Dynamic;
	function module(name:String, ?lifecycle:LifecycleObject):Dynamic;
	@:overload(function(title:String, test:QUnitAssert -> Dynamic):Dynamic { })
	function test(title:String, expected:Float, test:QUnitAssert -> Dynamic):Dynamic;
	function equiv(a:Dynamic, b:Dynamic):Dynamic;
	function push(result:Dynamic, actual:Dynamic, expected:Dynamic, message:String):Dynamic;
	function reset():Dynamic;
};
extern class QunitTopLevel {
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function ok(state:Dynamic, ?message:String):Dynamic;
	static function strictEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function throws(block:Void -> Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function throws(block:Void -> Dynamic, ?message:String):Dynamic;
	static function start(?decrement:Float):Dynamic;
	static function stop(?increment:Float):Dynamic;
	static function begin(callback:Void -> Dynamic):Dynamic;
	static function done(callback:DoneCallbackObject -> Dynamic):Dynamic;
	static function log(callback:LogCallbackObject -> Dynamic):Dynamic;
	static function moduleDone(callback:ModuleDoneCallbackObject -> Dynamic):Dynamic;
	static function moduleStart(callback:String -> Dynamic):Dynamic;
	static function testDone(callback:TestDoneCallbackObject -> Dynamic):Dynamic;
	static function testStart(callback:TestStartCallbackObject -> Dynamic):Dynamic;
	static function asyncTest(name:String, ?expected:Dynamic, ?test:QUnitAssert -> Dynamic):Dynamic;
	static function asyncTest(name:String, test:QUnitAssert -> Dynamic):Dynamic;
	static function expect(amount:Float):Dynamic;
	static function test(title:String, expected:Float, test:?QUnitAssert -> Dynamic):Dynamic;
	static function test(title:String, test:?QUnitAssert -> Dynamic):Dynamic;
	static function notPropEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function propEqual(actual:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	static function equiv(a:Dynamic, b:Dynamic):Dynamic;
	static var raises : Dynamic;
	static var QUnit : QUnitStatic;
}
