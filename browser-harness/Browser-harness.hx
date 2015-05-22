typedef HarnessEvents = {
	>_events.EventEmitter,
	@:overload(function(event:Ready, listener:Driver -> Void):_events.EventEmitter { })
	function once(event:String, listener:Driver -> Void):_events.EventEmitter;
	@:overload(function(event:Ready, listener:Driver -> Void):_events.EventEmitter { })
	function on(event:String, listener:Driver -> Void):_events.EventEmitter;
};
typedef DriverEvents = {
	>_events.EventEmitter,
	@:overload(function(event:Console.log, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Console.warn, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Console.error, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Window.onerror, listener:String -> Void):_events.EventEmitter { })
	function once(event:String, listener:String -> Void):_events.EventEmitter;
	@:overload(function(event:Console.log, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Console.warn, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Console.error, listener:String -> Void):_events.EventEmitter { })
	@:overload(function(event:Window.onerror, listener:String -> Void):_events.EventEmitter { })
	function on(event:String, listener:String -> Void):_events.EventEmitter;
};
typedef Driver = {
	@:overload(function(func:haxe.Constraints.Function, ?callback:haxe.Constraints.Function):Dynamic { })
	function exec(args:{ var func : haxe.Constraints.Function; @:optional
	var args : Array<Dynamic>; }, ?callback:haxe.Constraints.Function):Dynamic;
	function setUrl(url:String, ?callback:haxe.Constraints.Function):Dynamic;
	@:overload(function(condition:haxe.Constraints.Function, ?callback:haxe.Constraints.Function):Dynamic { })
	function waitFor(args:{ var condition : haxe.Constraints.Function; @:optional
	var exec : haxe.Constraints.Function; @:optional
	var timeoutMS : Float; }, ?callback:haxe.Constraints.Function):Dynamic;
	function findElement(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findElements(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findVisible(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findVisibles(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function find(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	var events : DriverEvents;
};
typedef ElementProxy = {
	function click(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function focus(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function blur(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function val(?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function attr(name:String, ?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function removeAttr(name:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function prop(name:String, ?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function removeProp(name:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function html(?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function text(?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function hasClass(className:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function addClass(className:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function removeClass(className:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function toggleClass(className:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function trigger(event:String, ?extraParameters:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function triggerHandler(event:String, ?extraParameters:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function css(name:String, ?value:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function height(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function innerHeight(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function outerHeight(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function width(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function innerWidth(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function outerWidth(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function offset(?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function position(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function scrollLeft(?value:Float, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function scrollTop(?value:Float, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function hide(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function show(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function toggle(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function children(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function closest(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function contents(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function find(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findElements(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findElement(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findVisible(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function findVisibles(selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function isActionable(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function first(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function has(arg:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function is(arg:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function last(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function next(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function nextAll(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function nextUntil(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function offsetParent(?callback:Error -> ElementProxy -> Void):ElementProxy;
	function parent(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function parents(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function parentsUntil(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function prev(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function prevAll(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function prevUntil(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function siblings(?selector:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function data(name:String, ?value:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function removeData(name:String, ?callback:Error -> ElementProxy -> Void):ElementProxy;
	function filter(selector:Dynamic, ?callback:Error -> ElementProxy -> Void):ElementProxy;
};
extern class Browser {
	function new(args:{ var type : String; @:optional
	var location : String; @:optional
	var args : Dynamic; }):Void;
	function open(harnessUrl:String, ?serverUrl:String):Dynamic;
	function close():Dynamic;
}
extern class Browser-harnessTopLevel {
	static function listen(port:Float, ?callback:haxe.Constraints.Function):Dynamic;
	static var events : HarnessEvents;
	static var config : { var timeoutMS : Float; var retryMS : Float; };
}
extern class Browser-harnessTopLevel {
	static function listen(port:Float, ?callback:haxe.Constraints.Function):Dynamic;
	static var events : HarnessEvents;
	static var config : { var timeoutMS : Float; var retryMS : Float; };
}
