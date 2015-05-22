extern class Event {
	function new(type:String, bubbles:Bool, cancelable:Bool):Void;
	var bubbles : Bool;
	var cancelable : Bool;
	var currentTarget : Dynamic;
	var defaultPrevented : Bool;
	var eventPhase : Float;
	var immediatePropagationStopped : Bool;
	var propagationStopped : Bool;
	var removed : Bool;
	var target : Dynamic;
	var timeStamp : Float;
	var type : String;
	var data : Dynamic;
	var delta : Float;
	var error : String;
	var id : String;
	var item : Dynamic;
	var loaded : Float;
	var name : String;
	var next : String;
	var params : Dynamic;
	var paused : Bool;
	var progress : Float;
	var rawResult : Dynamic;
	var result : Dynamic;
	var runTime : Float;
	var src : String;
	var time : Float;
	var total : Float;
	function clone():Event;
	function preventDefault():Void;
	function remove():Void;
	function set(props:Dynamic):Event;
	function stopImmediatePropagation():Void;
	function stopPropagation():Void;
	function toString():String;
}
extern class EventDispatcher {
	function new():Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Dynamic { })
	function addEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):haxe.Constraints.Function;
	@:overload(function(eventObj:String, ?target:Dynamic):Bool { })
	@:overload(function(eventObj:Event, ?target:Dynamic):Bool { })
	function dispatchEvent(eventObj:Dynamic, ?target:Dynamic):Bool;
	function hasEventListener(type:String):Bool;
	static function initialize(target:Dynamic):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	function off(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	function on(type:String, listener:Dynamic -> Bool, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function;
	function removeAllEventListeners(?type:String):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	function removeEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	function toString():String;
	function willTrigger(type:String):Bool;
}
extern class CreatejsTopLevel {
	static function extend(subclass:Void -> Dynamic, superclass:Void -> Dynamic):Void -> Dynamic;
	static function indexOf(array:Array<Dynamic>, searchElement:Dynamic):Float;
	static function promote(subclass:Void -> Dynamic, prefix:String):Void -> Dynamic;
	static function proxy(method:Dynamic -> Bool, scope:Dynamic, arg:haxe.extern.Rest<Dynamic>):Dynamic -> Dynamic;
	static function proxy(method:Dynamic -> Void, scope:Dynamic, arg:haxe.extern.Rest<Dynamic>):Dynamic -> Dynamic;
	static function proxy(method:{ var handleEvent : Dynamic -> Bool; }, scope:Dynamic, arg:haxe.extern.Rest<Dynamic>):Dynamic -> Dynamic;
	static function proxy(method:{ var handleEvent : Dynamic -> Void; }, scope:Dynamic, arg:haxe.extern.Rest<Dynamic>):Dynamic -> Dynamic;
}
