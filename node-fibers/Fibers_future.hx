extern class Future {
	function new():Void;
	function detach():Void;
	function get():Dynamic;
	function isResolved():Bool;
	function proxy(future:Future):Void;
	function proxyErrors(futureOrList:Dynamic):Future;
	function resolver():haxe.Constraints.Function;
	function resolve(fn:haxe.Constraints.Function):Void;
	function resolveSuccess(fn:haxe.Constraints.Function):Void;
	function return(?result:Dynamic):Void;
	function throw(error:Dynamic):Void;
	@:overload(function(future:Future):Dynamic { })
	@:overload(function(future_list:Array<Future>):Dynamic { })
	function wait():Void;
	static function wrap(fn:haxe.Constraints.Function):Future;
}
