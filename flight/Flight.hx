typedef Base = {
	function attributes(obj:Dynamic):Void;
	function defaultAttrs(obj:Dynamic):Void;
	function select(attr:String):JQuery;
	function initialize(node:Dynamic, options:Dynamic):Void;
	@:overload(function(eventType:String, handler:Dynamic):Void { })
	@:overload(function(selector:String, eventType:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Document, eventType:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Element, eventType:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Array<Element>, eventType:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:String, eventType:String, handler:Dynamic):Void { })
	@:overload(function(selector:Document, eventType:String, handler:Dynamic):Void { })
	@:overload(function(selector:Element, eventType:String, handler:Dynamic):Void { })
	@:overload(function(selector:Array<Element>, eventType:String, handler:Dynamic):Void { })
	function on(eventType:String, handler:haxe.Constraints.Function):Void;
	@:overload(function(selector:String, eventType:String, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Document, eventType:String, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Element, eventType:String, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Array<Element>, eventType:String, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:String, eventType:Dynamic, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Document, eventType:Dynamic, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Element, eventType:Dynamic, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:Array<Element>, eventType:Dynamic, ?handler:haxe.Constraints.Function):Void { })
	@:overload(function(selector:String, eventType:String, ?handler:Dynamic):Void { })
	@:overload(function(selector:Document, eventType:String, ?handler:Dynamic):Void { })
	@:overload(function(selector:Element, eventType:String, ?handler:Dynamic):Void { })
	@:overload(function(selector:Array<Element>, eventType:String, ?handler:Dynamic):Void { })
	@:overload(function(selector:String, eventType:Dynamic, ?handler:Dynamic):Void { })
	@:overload(function(selector:Document, eventType:Dynamic, ?handler:Dynamic):Void { })
	@:overload(function(selector:Element, eventType:Dynamic, ?handler:Dynamic):Void { })
	@:overload(function(selector:Array<Element>, eventType:Dynamic, ?handler:Dynamic):Void { })
	function off(eventType:String, ?handler:haxe.Constraints.Function):Void;
	@:overload(function(selector:String, eventType:String, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Document, eventType:String, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Element, eventType:String, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Array<Element>, eventType:String, ?eventPayload:Dynamic):Void { })
	@:overload(function(eventType:Dynamic):Void { })
	@:overload(function(selector:String, eventType:Dynamic, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Document, eventType:Dynamic, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Element, eventType:Dynamic, ?eventPayload:Dynamic):Void { })
	@:overload(function(selector:Array<Element>, eventType:Dynamic, ?eventPayload:Dynamic):Void { })
	function trigger(eventType:String):Void;
	function teardown():Void;
};
typedef Advice = {
	>Base,
	function after(method:String, fn:haxe.Constraints.Function):Void;
	function around(method:String, fn:haxe.Constraints.Function):Void;
	function before(method:String, fn:haxe.Constraints.Function):Void;
};
typedef Component = {
	>Base,
	>Advice,
	var node : Element;
	var $node : JQuery;
};
typedef AdviceStatic = {
	function withAdvice():haxe.Constraints.Function;
};
typedef ComponentStatic = {
	@:overload(function(selector:Element, ?options:Dynamic):Void { })
	@:overload(function(selector:JQuery, ?options:Dynamic):Void { })
	function attachTo(selector:String, ?options:Dynamic):Void;
	function teardownAll():Void;
};
typedef ComposeStatic = {
	function mixin(base:Dynamic, mixins:Array<haxe.Constraints.Function>):Void;
};
typedef DebugStatic = {
	var events : { function logAll():Void; function logByAction(action:String):Void; function logByName(name:String):Void; function logNone():Void; };
};
typedef UtilsStatic = {
	function compose(fn1:haxe.Constraints.Function, fn2:haxe.Constraints.Function, fns:haxe.extern.Rest<haxe.Constraints.Function>):haxe.Constraints.Function;
	function countThen(num:Float, base:haxe.Constraints.Function):haxe.Constraints.Function;
	function debounce(func:haxe.Constraints.Function, wait:Float, immediate:Bool):haxe.Constraints.Function;
	function delegate(rules:Dynamic):Void;
	function isDomObj(obj:Dynamic):Bool;
	function isEnumerable(obj:Dynamic, property:String):Bool;
	@:overload(function(obj1:Dynamic, obj2:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	function merge(obj1:Dynamic, obj2:Dynamic, ?deepClone:Bool):Dynamic;
	function push(base:Dynamic, extra:Dynamic, ?protect:Bool):Void;
	function throttle(func:haxe.Constraints.Function, wait:Float):haxe.Constraints.Function;
	function toArray(obj:Dynamic, ?from:Float):Array<Dynamic>;
	function uniqueArray(array:Array<Dynamic>):Array<Dynamic>;
};
typedef EventData = {
	var el : HTMLElement;
};
typedef FlightStatic = {
	var advice : AdviceStatic;
	var component : ComponentStatic;
	var compose : ComposeStatic;
	var utils : UtilsStatic;
};
