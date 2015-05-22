extern class RouteTask {
	var url : String;
	function new(url:String):Void;
	function solve(params:RouteParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Solve-complete, listener:{ var result : Dynamic; var target : RouteTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : RouteTask; } -> Void):esri.Handle;
}
