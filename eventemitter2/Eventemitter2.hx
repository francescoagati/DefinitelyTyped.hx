typedef EventEmitter2Configuration = {
	@:optional
	var wildcard : Bool;
	@:optional
	var delimiter : String;
	@:optional
	var newListener : Bool;
	@:optional
	var maxListeners : Float;
};
extern class EventEmitter2 {
	function new(?conf:EventEmitter2Configuration):Void;
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function onAny(listener:haxe.Constraints.Function):EventEmitter2;
	function offAny(?listener:haxe.Constraints.Function):EventEmitter2;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function many(event:String, timesToListen:Float, listener:haxe.Constraints.Function):EventEmitter2;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function off(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	@:overload(function(events:Array<String>):EventEmitter2 { })
	function removeAllListeners(?event:String):EventEmitter2;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function listenersAny():Array<haxe.Constraints.Function>;
	@:overload(function(event:Array<String>):Bool { })
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
extern class EventEmitter2 {
	function new(?conf:EventEmitter2Configuration):Void;
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function onAny(listener:haxe.Constraints.Function):EventEmitter2;
	function offAny(listener:haxe.Constraints.Function):EventEmitter2;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function many(event:String, timesToListen:Float, listener:haxe.Constraints.Function):EventEmitter2;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	function off(event:String, listener:haxe.Constraints.Function):EventEmitter2;
	@:overload(function(events:Array<String>):EventEmitter2 { })
	function removeAllListeners(?event:String):EventEmitter2;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function listenersAny():Array<haxe.Constraints.Function>;
	@:overload(function(event:Array<String>):Bool { })
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
