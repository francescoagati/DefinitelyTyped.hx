typedef Object = {
	var should : ShouldAssertion;
};
typedef ShouldAssertion = {
	var a : ShouldAssertion;
	var an : ShouldAssertion;
	var and : ShouldAssertion;
	var be : ShouldAssertion;
	var have : ShouldAssertion;
	var with : ShouldAssertion;
	var of : ShouldAssertion;
	var not : ShouldAssertion;
	var arguments : ShouldAssertion;
	var empty : ShouldAssertion;
	var ok : ShouldAssertion;
	var true : ShouldAssertion;
	var false : ShouldAssertion;
	var NaN : ShouldAssertion;
	var Infinity : ShouldAssertion;
	var Array : ShouldAssertion;
	var Object : ShouldAssertion;
	var String : ShouldAssertion;
	var Boolean : ShouldAssertion;
	var Number : ShouldAssertion;
	var Error : ShouldAssertion;
	var Function : ShouldAssertion;
	function eql(expected:Dynamic, ?description:String):ShouldAssertion;
	function equal(expected:Dynamic, ?description:String):ShouldAssertion;
	function within(start:Float, finish:Float, ?description:String):ShouldAssertion;
	function approximately(value:Float, delta:Float, ?description:String):ShouldAssertion;
	function type(expected:Dynamic, ?description:String):ShouldAssertion;
	function instanceof(constructor:haxe.Constraints.Function, ?description:String):ShouldAssertion;
	function above(n:Float, ?description:String):ShouldAssertion;
	function below(n:Float, ?description:String):ShouldAssertion;
	@:overload(function(other:Dynamic -> Dynamic, ?description:String):ShouldAssertion { })
	@:overload(function(regexp:js.RegExp, ?description:String):ShouldAssertion { })
	@:overload(function(other:Dynamic, ?description:String):ShouldAssertion { })
	function match(other:{ }, ?description:String):ShouldAssertion;
	@:overload(function(other:Dynamic -> Dynamic, ?description:String):ShouldAssertion { })
	@:overload(function(regexp:js.RegExp, ?description:String):ShouldAssertion { })
	@:overload(function(other:Dynamic, ?description:String):ShouldAssertion { })
	function matchEach(other:{ }, ?description:String):ShouldAssertion;
	function length(n:Float, ?description:String):ShouldAssertion;
	@:overload(function(name:String, val:Dynamic, ?description:String):ShouldAssertion { })
	function property(name:String, ?description:String):ShouldAssertion;
	@:overload(function(name:String):ShouldAssertion { })
	@:overload(function(descriptor:Dynamic):ShouldAssertion { })
	@:overload(function(properties:haxe.extern.Rest<String>):ShouldAssertion { })
	function properties(names:Array<String>):ShouldAssertion;
	function ownProperty(name:String, ?description:String):ShouldAssertion;
	function contain(obj:Dynamic):ShouldAssertion;
	function containEql(obj:Dynamic):ShouldAssertion;
	function containDeep(obj:Dynamic):ShouldAssertion;
	@:overload(function(allKeys:Array<String>):ShouldAssertion { })
	function keys(allKeys:haxe.extern.Rest<String>):ShouldAssertion;
	function header(field:String, ?val:String):ShouldAssertion;
	function status(code:Float):ShouldAssertion;
	var json : ShouldAssertion;
	var html : ShouldAssertion;
	function startWith(expected:String, ?message:Dynamic):ShouldAssertion;
	function endWith(expected:String, ?message:Dynamic):ShouldAssertion;
	function throw(?message:Dynamic):ShouldAssertion;
	function include(obj:Dynamic, ?description:String):ShouldAssertion;
	function includeEql(obj:Array<Dynamic>, ?description:String):ShouldAssertion;
	function exactly(expected:Dynamic, ?description:String):ShouldAssertion;
	function instanceOf(constructor:haxe.Constraints.Function, ?description:String):ShouldAssertion;
	function throwError(?message:Dynamic):ShouldAssertion;
	function lengthOf(n:Float, ?description:String):ShouldAssertion;
	function key(key:String):ShouldAssertion;
	function haveOwnProperty(name:String, ?description:String):ShouldAssertion;
	function greaterThan(n:Float, ?description:String):ShouldAssertion;
	function lessThan(n:Float, ?description:String):ShouldAssertion;
};
typedef ShouldInternal = {
	function exist(actual:Dynamic, ?msg:String):Void;
	function exists(actual:Dynamic, ?msg:String):Void;
	var not : ShouldInternal;
};
typedef Internal = {
	>ShouldInternal,
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
	function doesNotThrow(block:Dynamic, ?message:String):Void;
	function ifError(value:Dynamic):Void;
	function inspect(value:Dynamic, obj:Dynamic):Dynamic;
};
typedef Window = {
	var Should : Internal;
};
extern class ShouldTopLevel {
	static var should : Internal;
	static var Should : Internal;
}
extern class ShouldTopLevel {
	static var should : Internal;
	static var Should : Internal;
}
