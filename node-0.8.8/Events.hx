typedef NodeEventEmitter = {
	function addListener(event:String, listener:haxe.Constraints.Function):Dynamic;
	function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	function once(event:String, listener:haxe.Constraints.Function):Void;
	function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	function removeAllListener(event:String):Void;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<{ var Function : Dynamic; }>;
	function emit(event:String, ?arg1:Dynamic, ?arg2:Dynamic):Void;
};
extern class EventsTopLevel {
	static var EventEmitter : NodeEventEmitter;
}
