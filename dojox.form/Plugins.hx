typedef Flash = { };
typedef HTML5 = { };
typedef IFrame = { };
typedef _HasDropDown = {
	function clone(src:Dynamic):Dynamic;
	function delegate(obj:Dynamic, props:Array<Dynamic>):Dynamic;
	function exists(name:String, obj:Dynamic):Bool;
	function extend(ctor:Dynamic, props:Dynamic):Dynamic;
	function getObject(name:String, create:Bool, context:Dynamic):Dynamic;
	@:overload(function(scope:Dynamic, method:Array<String>):Dynamic { })
	function hitch(scope:Dynamic, method:haxe.Constraints.Function):Dynamic;
	function isAlien(it:Dynamic):Dynamic;
	function isArray(it:Dynamic):Dynamic;
	function isArrayLike(it:Dynamic):Dynamic;
	function isFunction(it:Dynamic):Bool;
	function isObject(it:Dynamic):Bool;
	function isString(it:Dynamic):Bool;
	function mixin(dest:Dynamic, sources:Array<Dynamic>):Dynamic;
	@:overload(function(method:String):Dynamic { })
	function partial(method:haxe.Constraints.Function):Dynamic;
	@:overload(function(tmpl:String, map:haxe.Constraints.Function, pattern:js.RegExp):String { })
	function replace(tmpl:String, map:Dynamic, pattern:js.RegExp):String;
	function setObject(name:String, value:Dynamic, context:Dynamic):Dynamic;
	function trim(str:String):String;
};
typedef DropDownStack = { };
typedef RadioStack = { };
