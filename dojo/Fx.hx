typedef Animation = { };
typedef Fx = {
	@:overload(function(node:String, properties:Dynamic, duration:Float, easing:haxe.Constraints.Function, onEnd:haxe.Constraints.Function, delay:Float):Dynamic { })
	function anim(node:HTMLElement, properties:Dynamic, duration:Float, easing:haxe.Constraints.Function, onEnd:haxe.Constraints.Function, delay:Float):Dynamic;
	function animateProperty(args:Dynamic):Dynamic;
	function fadeIn(args:Dynamic):Dynamic;
	function fadeOut(args:Dynamic):Dynamic;
};
typedef Query = { };
typedef NodeList = { };
typedef Sniff = { };
typedef Lang = {
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
typedef Unload = {
	@:overload(function(obj:haxe.Constraints.Function, functionName:String):Void { })
	@:overload(function(obj:Dynamic, functionName:haxe.Constraints.Function):Void { })
	@:overload(function(obj:haxe.Constraints.Function, functionName:haxe.Constraints.Function):Void { })
	function addOnUnload(obj:Dynamic, functionName:String):Void;
	@:overload(function(obj:haxe.Constraints.Function, functionName:String):Void { })
	@:overload(function(obj:Dynamic, functionName:haxe.Constraints.Function):Void { })
	@:overload(function(obj:haxe.Constraints.Function, functionName:haxe.Constraints.Function):Void { })
	function addOnWindowUnload(obj:Dynamic, functionName:String):Void;
};
typedef Window = {
	var doc : Dynamic;
	var global : Dynamic;
	function body(doc:HTMLDocument):Dynamic;
	function setContext(globalObject:Dynamic, globalDocument:HTMLDocument):Void;
	function withDoc(documentObject:HTMLDocument, callback:haxe.Constraints.Function, thisObject:Dynamic, cbArguments:Array<Dynamic>):Dynamic;
	function withGlobal(globalObject:Dynamic, callback:haxe.Constraints.Function, thisObject:Dynamic, cbArguments:Array<Dynamic>):Dynamic;
};
extern class Toggler {
	function new(args:Dynamic):Void;
	var hideDuration : Float;
	var node : HTMLElement;
	var showDuration : Float;
	function hide(delay:Float):Dynamic;
	function hideFunc(args:Dynamic):Dynamic;
	function show(delay:Float):Dynamic;
	function showFunc(args:Dynamic):Dynamic;
}
typedef Easing = {
	function backIn(n:Float):Float;
	function backInOut(n:Float):Float;
	function backOut(n:Float):Float;
	function bounceIn(n:Float):Float;
	function bounceInOut(n:Float):Float;
	function bounceOut(n:Float):Float;
	function circIn(n:Float):Float;
	function circInOut(n:Float):Float;
	function circOut(n:Float):Dynamic;
	function cubicIn(n:Float):Dynamic;
	function cubicInOut(n:Float):Float;
	function cubicOut(n:Float):Float;
	function elasticIn(n:Float):Float;
	function elasticInOut(n:Float):Float;
	function elasticOut(n:Float):Float;
	function expoIn(n:Float):Dynamic;
	function expoInOut(n:Float):Float;
	function expoOut(n:Float):Float;
	function linear(n:Float):Float;
	function quadIn(n:Float):Dynamic;
	function quadInOut(n:Float):Float;
	function quadOut(n:Float):Float;
	function quartIn(n:Float):Dynamic;
	function quartInOut(n:Float):Float;
	function quartOut(n:Float):Float;
	function quintIn(n:Float):Dynamic;
	function quintInOut(n:Float):Float;
	function quintOut(n:Float):Float;
	function sineIn(n:Float):Float;
	function sineInOut(n:Float):Float;
	function sineOut(n:Float):Dynamic;
};
typedef Router = {
	>dojo.router.RouterBase,
};
