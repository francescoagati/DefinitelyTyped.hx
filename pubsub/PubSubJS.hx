typedef Base = {
	>Publish,
	>Subscribe,
	>Unsubscribe,
	var version : String;
	var name : String;
};
typedef Publish = {
	@:overload(function(message:Dynamic, data:Dynamic, sync:Bool, immediateExceptions:haxe.Constraints.Function):Bool { })
	function publish(message:Dynamic, data:Dynamic):Bool;
	function publishSync(message:Dynamic, data:Dynamic):Bool;
};
typedef Subscribe = {
	function subscribe(message:Dynamic, func:haxe.Constraints.Function):Dynamic;
};
typedef Unsubscribe = {
	function unsubscribe(tokenOrFunction:Dynamic):Dynamic;
};
