typedef IRequestHandler = {
	@:overload(function(status:Float, ?data:Dynamic, ?headers:Dynamic):Void { })
	@:overload(function(data:Dynamic, ?headers:Dynamic):Void { })
	function respond(func:haxe.Constraints.Function):Void;
	function passThrough():Void;
};
