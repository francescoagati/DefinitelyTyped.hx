typedef Matchers = {
	function toBeArray():Bool;
	function toBeCloseToOneOf(values:Array<Dynamic>, isCloseToFunction:Float -> Float -> Bool):Bool;
	function toBeInstanceOf(Constructor:haxe.Constraints.Function):Bool;
	function toBeInRange(min:Float, max:Float):Bool;
	function toBeNan():Bool;
	function toBeNumber():Bool;
	function toBeOfType(type:String):Bool;
	function toBeOneOf(values:Array<Dynamic>):Bool;
	function toContainOnce(value:Dynamic):Bool;
	function toHaveBeenCalledXTimes(count:Float):Bool;
	function toHaveLength(length:Float):Bool;
	function toHaveOwnProperties(names:haxe.extern.Rest<String>):Bool;
	function toHaveOwnPropertiesWithValues(obj:Dynamic):Bool;
	function toHaveProperties(names:haxe.extern.Rest<String>):Bool;
	function toHavePropertiesWithValues(obj:Dynamic):Bool;
	function toExactlyHaveProperties(names:haxe.extern.Rest<String>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function toStartWith(value:Dynamic):Bool;
	@:overload(function(values:Array<Dynamic>):Bool { })
	function toEndWith(value:Dynamic):Bool;
	function toEachStartWith(searchString:String):Bool;
	function toSomeStartWith(searchString:String):Bool;
	function toEachEndWith(searchString:String):Bool;
	function toSomeEndWith(searchString:String):Bool;
	function toStartWithEither(searchString:haxe.extern.Rest<Dynamic>):Bool;
	function toThrowInstanceOf(klass:haxe.Constraints.Function):Bool;
	function toThrowStartsWith(text:String):Bool;
};
