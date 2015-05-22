typedef EventsMixin<T> = {
	@:overload(function(events:{ }):T { })
	function on(eventName:String, eventHandler:haxe.Constraints.Function):T;
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):T { })
	function off(eventName:String):Dynamic;
};
