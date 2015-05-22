typedef Ready = { };
typedef Sniff = { };
typedef When = { };
extern class DeferredList {
	function new():Void;
	function gatherResults(deferredList:dojo.DeferredList):Dynamic;
}
extern class Deferred {
	function new(?canceler:haxe.Constraints.Function):Void;
	var promise : dojo.promise.Promise<Dynamic>;
	function cancel(reason:Dynamic, strict:Bool):Dynamic;
	function isCanceled():Bool;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isResolved():Bool;
	function progress(update:Dynamic, strict:Bool):dojo.promise.Promise<Dynamic>;
	function reject(error:Dynamic, strict:Bool):Dynamic;
	function resolve(value:Dynamic, ?strict:Bool):dojo.promise.Promise<Dynamic>;
	function then(callback:haxe.Constraints.Function, errback:haxe.Constraints.Function, progback:haxe.Constraints.Function):dojo.promise.Promise<Dynamic>;
	function toString():String;
}
extern class Evented {
	function new():Void;
	function emit(type:String, data:Dynamic):Dynamic;
	function on(type:String, listener:{ }):{ var remove : { }; };
}
extern class NodeList {
	function new(array:Dynamic):Void;
	var events : Array<Dynamic>;
	@:overload(function(className:Array<Dynamic>):Void { })
	function addClass(className:String):Void;
	function addClassFx(cssClass:Dynamic, args:Dynamic):{ var type : haxe.Constraints.Function; var value : Dynamic; };
	@:overload(function(content:HTMLElement, position:String):haxe.Constraints.Function { })
	@:overload(function(content:Dynamic, position:String):haxe.Constraints.Function { })
	@:overload(function(content:dojo.NodeList, position:String):haxe.Constraints.Function { })
	@:overload(function(content:String, position:Float):haxe.Constraints.Function { })
	@:overload(function(content:HTMLElement, position:Float):haxe.Constraints.Function { })
	@:overload(function(content:Dynamic, position:Float):haxe.Constraints.Function { })
	@:overload(function(content:dojo.NodeList, position:Float):haxe.Constraints.Function { })
	function addContent(content:String, position:String):haxe.Constraints.Function;
	@:overload(function(queryOrListOrNode:Array<Dynamic>, position:String):Dynamic { })
	@:overload(function(queryOrListOrNode:HTMLElement, position:String):Dynamic { })
	function adopt(queryOrListOrNode:String, position:String):Dynamic;
	@:overload(function(content:HTMLElement):Dynamic { })
	@:overload(function(content:NodeList):Dynamic { })
	function after(content:String):Dynamic;
	function andSelf():Dynamic;
	function anim(properties:Dynamic, duration:Float, easing:haxe.Constraints.Function, onEnd:haxe.Constraints.Function, delay:Float):Dynamic;
	function animateProperty(args:Dynamic):Dynamic;
	@:overload(function(content:HTMLElement):Dynamic { })
	@:overload(function(content:NodeList):Dynamic { })
	function append(content:String):Dynamic;
	function appendTo(query:String):Dynamic;
	function at(index:Array<Float>):Dynamic;
	function attr(property:String, value:String):Dynamic;
	@:overload(function(content:HTMLElement):Dynamic { })
	@:overload(function(content:NodeList):Dynamic { })
	function before(content:String):Dynamic;
	function children(query:String):Dynamic;
	function clone():Dynamic;
	@:overload(function(query:String, root:HTMLElement):Dynamic { })
	function closest(query:String, root:String):Dynamic;
	function concat(item:Dynamic):Dynamic;
	@:overload(function(methodName:String, objOrFunc:haxe.Constraints.Function, funcName:String):Void { })
	@:overload(function(methodName:String, objOrFunc:String, funcName:String):Void { })
	function connect(methodName:String, objOrFunc:Dynamic, funcName:String):Void;
	function coords():Void;
	@:overload(function(key:String, value:Dynamic):Dynamic { })
	function data(key:Dynamic, value:Dynamic):Dynamic;
	function delegate(selector:String, eventName:String, fn:haxe.Constraints.Function):Dynamic;
	@:overload(function(template:String, context:dojox.dtl.__ObjectArgs):haxe.Constraints.Function { })
	@:overload(function(template:dojox.dtl.__StringArgs, context:Dynamic):haxe.Constraints.Function { })
	@:overload(function(template:String, context:Dynamic):haxe.Constraints.Function { })
	function dtl(template:dojox.dtl.__StringArgs, context:dojox.dtl.__ObjectArgs):haxe.Constraints.Function;
	function empty():Dynamic;
	function end():Dynamic;
	function even():Dynamic;
	function every(callback:haxe.Constraints.Function, thisObject:Dynamic):Dynamic;
	function fadeIn(args:Dynamic):Dynamic;
	function fadeOut(args:Dynamic):Dynamic;
	@:overload(function(filter:haxe.Constraints.Function):Dynamic { })
	function filter(filter:String):Dynamic;
	function first():Dynamic;
	function forEach(callback:Dynamic, thisObj:Dynamic):haxe.Constraints.Function;
	@:overload(function(value:HTMLElement):Dynamic { })
	@:overload(function(value:NodeList):Dynamic { })
	function html(value:String):Dynamic;
	function indexOf(value:Dynamic, fromIndex:Float):Dynamic;
	@:overload(function(value:HTMLElement):Dynamic { })
	@:overload(function(value:NodeList):Dynamic { })
	function innerHTML(value:String):Dynamic;
	function insertAfter(query:String):Dynamic;
	function insertBefore(query:String):Dynamic;
	@:overload(function(declaredClass:Dynamic, properties:Dynamic):Dynamic { })
	function instantiate(declaredClass:String, properties:Dynamic):Dynamic;
	function last():Dynamic;
	function lastIndexOf(value:Dynamic, fromIndex:Float):Dynamic;
	function map(func:haxe.Constraints.Function, obj:haxe.Constraints.Function):Dynamic;
	function marginBox():Void;
	function next(query:String):Dynamic;
	function nextAll(query:String):Dynamic;
	function odd():Dynamic;
	function on(eventName:Dynamic, listener:Dynamic):Dynamic;
	function orphan(filter:String):Dynamic;
	function parent(query:String):Dynamic;
	function parents(query:String):Dynamic;
	@:overload(function(queryOrNode:HTMLElement, position:String):Dynamic { })
	function place(queryOrNode:String, position:String):Dynamic;
	function position():Dynamic;
	@:overload(function(content:HTMLElement):Dynamic { })
	@:overload(function(content:NodeList):Dynamic { })
	function prepend(content:String):Dynamic;
	function prependTo(query:String):Dynamic;
	function prev(query:String):Dynamic;
	function prevAll(query:String):Dynamic;
	function query(queryStr:String):Dynamic;
	function remove(filter:String):Dynamic;
	function removeAttr(name:String):Void;
	@:overload(function(className:Array<Dynamic>):Dynamic { })
	function removeClass(className:String):Dynamic;
	function removeClassFx(cssClass:Dynamic, args:Dynamic):{ var type : haxe.Constraints.Function; var value : Dynamic; };
	function removeData(key:String):Void;
	function replaceAll(query:String):Dynamic;
	@:overload(function(addClassStr:Array<Dynamic>, removeClassStr:String):Void { })
	@:overload(function(addClassStr:String, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(addClassStr:Array<Dynamic>, removeClassStr:Array<Dynamic>):Void { })
	function replaceClass(addClassStr:String, removeClassStr:String):Void;
	@:overload(function(content:HTMLElement):Dynamic { })
	@:overload(function(content:NodeList):Dynamic { })
	function replaceWith(content:String):Dynamic;
	function siblings(query:String):Dynamic;
	function slice(begin:Float, end:Float):Dynamic;
	function slideTo(args:Dynamic):Dynamic;
	function some(callback:haxe.Constraints.Function, thisObject:Dynamic):Dynamic;
	function splice(index:Float, howmany:Float, item:Array<Dynamic>):Dynamic;
	function style(property:String, value:String):Dynamic;
	function text(value:String):Dynamic;
	function toggleClass(className:String, condition:Bool):Void;
	function toggleClassFx(cssClass:Dynamic, force:Dynamic, args:Dynamic):{ var type : haxe.Constraints.Function; var value : Dynamic; };
	function toString():Dynamic;
	@:overload(function(value:Array<Dynamic>):Dynamic { })
	function val(value:String):Dynamic;
	function wipeIn(args:Dynamic):Dynamic;
	function wipeOut(args:Dynamic):Dynamic;
	@:overload(function(html:HTMLElement):Dynamic { })
	function wrap(html:String):Dynamic;
	@:overload(function(html:HTMLElement):Dynamic { })
	function wrapAll(html:String):Dynamic;
	@:overload(function(html:HTMLElement):Dynamic { })
	function wrapInner(html:String):Dynamic;
}
