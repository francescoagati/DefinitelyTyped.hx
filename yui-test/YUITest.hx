typedef YUITestStatic = {
	var Assert : IAssert;
	var Case : TestCase;
	var Runner : TestRunner;
};
typedef EventTarget = {
	function attach(type:String, listener:haxe.Constraints.Function):Void;
	function subscribe(type:String, listener:haxe.Constraints.Function):Void;
	@:overload(function(event:String):Void { })
	function fire(event:Dynamic):Void;
	function detach(type:String, listener:haxe.Constraints.Function):Void;
	function unsubscribe(type:String, listener:haxe.Constraints.Function):Void;
};
typedef TestRunner = {
	>EventTarget,
	var TEST_CASE_BEGIN_EVENT : String;
	var TEST_CASE_COMPLETE_EVENT : String;
	var TEST_SUITE_BEGIN_EVENT : String;
	var TEST_SUITE_COMPLETE_EVENT : String;
	var TEST_PASS_EVENT : String;
	var TEST_FAIL_EVENT : String;
	var ERROR_EVENT : String;
	var TEST_IGNORE_EVENT : String;
	var COMPLETE_EVENT : String;
	var BEGIN_EVENT : String;
	function getName():String;
	function setName(name:String):Void;
	@:overload(function(testObject:TestCase):Void { })
	function add(testObject:TestSuite):Void;
	function clear():Void;
	function isWaiting():Bool;
	function isRunning():Bool;
	function getResults(?format:haxe.Constraints.Function):Dynamic;
	function getCoverage(?format:haxe.Constraints.Function):Dynamic;
	function callback(args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function resume(?segment:haxe.Constraints.Function):Void;
	@:overload(function(?options:Bool):Void { })
	function run(?options:Dynamic):Void;
};
typedef TestSuite = {
	var name : String;
	@:overload(function(testObject:TestCase):Void { })
	function add(testObject:TestSuite):Void;
	function setUp():Void;
	function tearDown():Void;
};
typedef TestCase = {
	function new(template:Dynamic):TestCase;
	var DEFAULT_WAIT : Float;
	function callback(args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function resume(?segment:haxe.Constraints.Function):Void;
	function wait(?segment:haxe.Constraints.Function, ?delay:Float):Void;
	function waitFor(condition:haxe.Constraints.Function, segment:haxe.Constraints.Function, ?timeout:Float, ?increment:Float):Void;
	function assert(condition:Bool, message:String):Void;
	function fail(?message:String):Void;
	function init():Void;
	function destroy():Void;
	function setUp():Void;
	function tearDown():Void;
};
typedef IAssert = {
	function fail(?message:String):Void;
	function pass(?message:String):Void;
	function areEqual(expected:Dynamic, actual:Dynamic, ?message:String):Void;
	function areNotEqual(unexpected:Dynamic, actual:Dynamic, ?message:String):Void;
	function areNotSame(unexpected:Dynamic, actual:Dynamic, ?message:String):Void;
	function areSame(expected:Dynamic, actual:Dynamic, ?message:String):Void;
	function isFalse(actual:Dynamic, ?message:String):Void;
	function isTrue(actual:Dynamic, ?message:String):Void;
	function isNaN(actual:Dynamic, ?message:String):Void;
	function isNotNaN(actual:Dynamic, ?message:String):Void;
	function isNotNull(actual:Dynamic, ?message:String):Void;
	function isNotUndefined(actual:Dynamic, ?message:String):Void;
	function isNull(actual:Dynamic, ?message:String):Void;
	function isUndefined(actual:Dynamic, ?message:String):Void;
	function isArray(actual:Dynamic, ?message:String):Void;
	function isBoolean(actual:Dynamic, ?message:String):Void;
	function isFunction(actual:Dynamic, ?message:String):Void;
	function isInstanceOf(expected:haxe.Constraints.Function, actual:Dynamic, ?message:String):Void;
	function isNumber(actual:Dynamic, ?message:String):Void;
	function isObject(actual:Dynamic, ?message:String):Void;
	function isString(actual:Dynamic, ?message:String):Void;
	function isTypeOf(expectedType:String, actualValue:Dynamic, ?message:String):Void;
	@:overload(function(expectedError:haxe.Constraints.Function, method:Dynamic, ?message:String):Void { })
	@:overload(function(expectedError:Dynamic, method:Dynamic, ?message:String):Void { })
	function throwsError(expectedError:String, method:Dynamic, ?message:String):Void;
};
