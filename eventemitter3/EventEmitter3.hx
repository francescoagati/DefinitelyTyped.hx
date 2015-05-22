extern class EventEmitter {
	function new():Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
	function on(event:String, fn:haxe.Constraints.Function, ?context:Dynamic):EventEmitter;
	function once(event:String, fn:haxe.Constraints.Function, ?context:Dynamic):EventEmitter;
	function removeListener(event:String, fn:haxe.Constraints.Function, ?once:Bool):EventEmitter;
	function removeAllListeners(event:String):EventEmitter;
	function off(event:String, fn:haxe.Constraints.Function, ?once:Bool):EventEmitter;
	function addListener(event:String, fn:haxe.Constraints.Function, ?context:Dynamic):EventEmitter;
	function setMaxListeners():EventEmitter;
}
