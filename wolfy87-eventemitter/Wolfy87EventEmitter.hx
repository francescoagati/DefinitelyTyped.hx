typedef MultipleEvents = { };
extern class EventEmitter {
	static function noConflict():Dynamic;
	@:overload(function(event:js.RegExp):{ } { })
	function getListeners(event:String):Array<haxe.Constraints.Function>;
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function flattenListeners(listeners:Array<{ var listener : haxe.Constraints.Function; }>):Array<haxe.Constraints.Function>;
	@:overload(function(event:js.RegExp):{ } { })
	function getListenersAsObject(event:String):{ };
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function addOnceListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function defineEvent(event:String):EventEmitter;
	function defineEvents(events:Array<String>):EventEmitter;
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	@:overload(function(event:js.RegExp, listener:haxe.Constraints.Function):EventEmitter { })
	function off(event:String, listener:haxe.Constraints.Function):EventEmitter;
	@:overload(function(event:js.RegExp, listeners:Array<haxe.Constraints.Function>):EventEmitter { })
	@:overload(function(event:MultipleEvents):EventEmitter { })
	function addListeners(event:String, listeners:Array<haxe.Constraints.Function>):EventEmitter;
	@:overload(function(event:js.RegExp, listeners:Array<haxe.Constraints.Function>):EventEmitter { })
	@:overload(function(event:MultipleEvents):EventEmitter { })
	function removeListeners(event:String, listeners:Array<haxe.Constraints.Function>):EventEmitter;
	@:overload(function(remove:Bool, event:js.RegExp, listeners:Array<haxe.Constraints.Function>):EventEmitter { })
	@:overload(function(remove:Bool, event:MultipleEvents):EventEmitter { })
	function manipulateListeners(remove:Bool, event:String, listeners:Array<haxe.Constraints.Function>):EventEmitter;
	@:overload(function(?event:js.RegExp):EventEmitter { })
	function removeEvent(?event:String):EventEmitter;
	@:overload(function(event:js.RegExp):EventEmitter { })
	function removeAllListeners(event:String):EventEmitter;
	@:overload(function(event:js.RegExp, args:haxe.extern.Rest<Dynamic>):EventEmitter { })
	function emitEvent(event:String, args:haxe.extern.Rest<Dynamic>):EventEmitter;
	@:overload(function(event:js.RegExp, args:haxe.extern.Rest<Dynamic>):EventEmitter { })
	function trigger(event:String, args:haxe.extern.Rest<Dynamic>):EventEmitter;
	@:overload(function(event:js.RegExp, args:haxe.extern.Rest<Dynamic>):EventEmitter { })
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):EventEmitter;
	function setOnceReturnValue(value:Dynamic):EventEmitter;
}
