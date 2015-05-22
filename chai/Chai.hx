typedef ChaiStatic = {
	var expect : ExpectStatic;
	function use(fn:Dynamic -> Dynamic -> Void):Dynamic;
	var assert : AssertStatic;
	var config : Config;
};
typedef ExpectStatic = {
	>AssertionStatic,
};
typedef AssertStatic = {
	>Assert,
};
typedef AssertionStatic = { };
typedef Assertion = {
	>LanguageChains,
	>NumericComparison,
	>TypeComparison,
	var not : Assertion;
	var deep : Deep;
	var a : TypeComparison;
	var an : TypeComparison;
	var include : Include;
	var contain : Include;
	var ok : Assertion;
	var true : Assertion;
	var false : Assertion;
	var null : Assertion;
	var undefined : Assertion;
	var exist : Assertion;
	var empty : Assertion;
	var arguments : Assertion;
	var Arguments : Assertion;
	var equal : Equal;
	var equals : Equal;
	var eq : Equal;
	var eql : Equal;
	var eqls : Equal;
	var property : Property;
	var ownProperty : OwnProperty;
	var haveOwnProperty : OwnProperty;
	var length : Length;
	var lengthOf : Length;
	function match(regexp:haxe.extern.EitherType<js.RegExp, String>, ?message:String):Assertion;
	function string(string:String, ?message:String):Assertion;
	var keys : Keys;
	function key(string:String):Assertion;
	var throw : Throw;
	var throws : Throw;
	var Throw : Throw;
	function respondTo(method:String, ?message:String):Assertion;
	var itself : Assertion;
	function satisfy(matcher:haxe.Constraints.Function, ?message:String):Assertion;
	function closeTo(expected:Float, delta:Float, ?message:String):Assertion;
	var members : Members;
};
typedef LanguageChains = {
	var to : Assertion;
	var be : Assertion;
	var been : Assertion;
	var is : Assertion;
	var that : Assertion;
	var which : Assertion;
	var and : Assertion;
	var has : Assertion;
	var have : Assertion;
	var with : Assertion;
	var at : Assertion;
	var of : Assertion;
	var same : Assertion;
};
typedef NumericComparison = {
	var above : NumberComparer;
	var gt : NumberComparer;
	var greaterThan : NumberComparer;
	var least : NumberComparer;
	var gte : NumberComparer;
	var below : NumberComparer;
	var lt : NumberComparer;
	var lessThan : NumberComparer;
	var most : NumberComparer;
	var lte : NumberComparer;
	function within(start:Float, finish:Float, ?message:String):Assertion;
};
typedef NumberComparer = { };
typedef TypeComparison = {
	var instanceof : InstanceOf;
	var instanceOf : InstanceOf;
};
typedef InstanceOf = { };
typedef Deep = {
	var equal : Equal;
	var include : Include;
	var property : Property;
};
typedef Equal = { };
typedef Property = { };
typedef OwnProperty = { };
typedef Length = {
	>LanguageChains,
	>NumericComparison,
};
typedef Include = {
	var keys : Keys;
	var members : Members;
};
typedef Keys = { };
typedef Throw = { };
typedef Members = { };
typedef Assert = {
	function fail(?actual:Dynamic, ?expected:Dynamic, ?msg:String, ?operator:String):Void;
	function ok(val:Dynamic, ?msg:String):Void;
	function notOk(val:Dynamic, ?msg:String):Void;
	function equal(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function notEqual(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function strictEqual(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function notStrictEqual(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function deepEqual(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function notDeepEqual(act:Dynamic, exp:Dynamic, ?msg:String):Void;
	function isTrue(val:Dynamic, ?msg:String):Void;
	function isFalse(val:Dynamic, ?msg:String):Void;
	function isNull(val:Dynamic, ?msg:String):Void;
	function isNotNull(val:Dynamic, ?msg:String):Void;
	function isUndefined(val:Dynamic, ?msg:String):Void;
	function isDefined(val:Dynamic, ?msg:String):Void;
	function isFunction(val:Dynamic, ?msg:String):Void;
	function isNotFunction(val:Dynamic, ?msg:String):Void;
	function isObject(val:Dynamic, ?msg:String):Void;
	function isNotObject(val:Dynamic, ?msg:String):Void;
	function isArray(val:Dynamic, ?msg:String):Void;
	function isNotArray(val:Dynamic, ?msg:String):Void;
	function isString(val:Dynamic, ?msg:String):Void;
	function isNotString(val:Dynamic, ?msg:String):Void;
	function isNumber(val:Dynamic, ?msg:String):Void;
	function isNotNumber(val:Dynamic, ?msg:String):Void;
	function isBoolean(val:Dynamic, ?msg:String):Void;
	function isNotBoolean(val:Dynamic, ?msg:String):Void;
	function typeOf(val:Dynamic, type:String, ?msg:String):Void;
	function notTypeOf(val:Dynamic, type:String, ?msg:String):Void;
	function instanceOf(val:Dynamic, type:haxe.Constraints.Function, ?msg:String):Void;
	function notInstanceOf(val:Dynamic, type:haxe.Constraints.Function, ?msg:String):Void;
	@:overload(function(exp:Array<Dynamic>, inc:Dynamic, ?msg:String):Void { })
	function include(exp:String, inc:Dynamic, ?msg:String):Void;
	@:overload(function(exp:Array<Dynamic>, inc:Dynamic, ?msg:String):Void { })
	function notInclude(exp:String, inc:Dynamic, ?msg:String):Void;
	function match(exp:Dynamic, re:js.RegExp, ?msg:String):Void;
	function notMatch(exp:Dynamic, re:js.RegExp, ?msg:String):Void;
	function property(obj:Dynamic, prop:String, ?msg:String):Void;
	function notProperty(obj:Dynamic, prop:String, ?msg:String):Void;
	function deepProperty(obj:Dynamic, prop:String, ?msg:String):Void;
	function notDeepProperty(obj:Dynamic, prop:String, ?msg:String):Void;
	function propertyVal(obj:Dynamic, prop:String, val:Dynamic, ?msg:String):Void;
	function propertyNotVal(obj:Dynamic, prop:String, val:Dynamic, ?msg:String):Void;
	function deepPropertyVal(obj:Dynamic, prop:String, val:Dynamic, ?msg:String):Void;
	function deepPropertyNotVal(obj:Dynamic, prop:String, val:Dynamic, ?msg:String):Void;
	function lengthOf(exp:Dynamic, len:Float, ?msg:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, ?msg:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	function throw(fn:haxe.Constraints.Function, ?msg:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, ?msg:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	function throws(fn:haxe.Constraints.Function, ?msg:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, ?msg:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	function Throw(fn:haxe.Constraints.Function, ?msg:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, ?msg:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, errType:haxe.Constraints.Function, regExp:js.RegExp):Void { })
	function doesNotThrow(fn:haxe.Constraints.Function, ?msg:String):Void;
	function operator(val:Dynamic, operator:String, val2:Dynamic, ?msg:String):Void;
	function closeTo(act:Float, exp:Float, delta:Float, ?msg:String):Void;
	function sameMembers(set1:Array<Dynamic>, set2:Array<Dynamic>, ?msg:String):Void;
	function includeMembers(set1:Array<Dynamic>, set2:Array<Dynamic>, ?msg:String):Void;
	function ifError(val:Dynamic, ?msg:String):Void;
};
typedef Config = {
	var includeStack : Bool;
};
extern class AssertionError {
	function new(message:String, ?_props:Dynamic, ?ssf:haxe.Constraints.Function):Void;
	var name : String;
	var message : String;
	var showDiff : Bool;
	var stack : String;
}
