extern class Dispatcher<TPayload> {
	function new():Void;
	function register(callback:TPayload -> Void):String;
	function unregister(id:String):Void;
	function waitFor(IDs:Array<String>):Void;
	function dispatch(payload:TPayload):Void;
	function isDispatching():Bool;
}
