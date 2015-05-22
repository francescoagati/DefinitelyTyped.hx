typedef Assertion = {
	function ok():Void;
	@:overload(function(regexp:js.RegExp):Void { })
	function throwError(?fn:Dynamic -> Void):Void;
	@:overload(function(regexp:js.RegExp):Void { })
	function throwException(?fn:Dynamic -> Void):Void;
	function empty():Assertion;
	function equal(obj:Dynamic):Assertion;
	function eql(obj:Dynamic):Assertion;
	function within(start:Float, finish:Float):Assertion;
	@:overload(function(type:haxe.Constraints.Function):Assertion { })
	function a(type:String):Assertion;
	var an : An;
	function greaterThan(n:Float):Assertion;
	function above(n:Float):Assertion;
	function lessThan(n:Float):Assertion;
	function below(n:Float):Assertion;
	function match(regexp:js.RegExp):Assertion;
	function length(n:Float):Assertion;
	function property(name:String, ?val:Dynamic):Assertion;
	@:overload(function(obj:Dynamic):Assertion { })
	function contain(str:String):Assertion;
	@:overload(function(obj:Dynamic):Assertion { })
	function string(str:String):Assertion;
	@:overload(function(keys:haxe.extern.Rest<String>):Assertion { })
	function key(keys:Array<String>):Assertion;
	@:overload(function(keys:haxe.extern.Rest<String>):Assertion { })
	function keys(keys:Array<String>):Assertion;
	function fail(?message:String):Assertion;
};
typedef Root = {
	>Assertion,
	var not : Not;
	var to : To;
	var only : Only;
	var have : Have;
	var be : Be;
};
typedef Be = {
	>Assertion,
	var an : An;
};
typedef An = {
	>Assertion,
};
typedef Not = {
	>Expect.NotBase,
	var to : Expect.ToBase;
};
typedef NotBase = {
	>Assertion,
	var be : Be;
	var have : Have;
	var include : Assertion;
	var only : Only;
};
typedef To = {
	>Expect.ToBase,
	var not : Expect.NotBase;
};
typedef ToBase = {
	>Assertion,
	var be : Be;
	var have : Have;
	var include : Assertion;
	var only : Only;
};
typedef Only = {
	>Assertion,
	var have : Have;
};
typedef Have = {
	>Assertion,
	var own : Assertion;
};
