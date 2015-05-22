extern class EventEmitter {
	static function listenerCount(emitter:EventEmitter, event:String):Float;
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(?event:String):EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
