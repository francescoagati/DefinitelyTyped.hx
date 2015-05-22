extern class ServiceAreaTask {
	function new(url:String):Void;
	function solve(params:ServiceAreaParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Solve-complete, listener:{ var result : ServiceAreaSolveResult; var target : ServiceAreaTask; } -> Void):esri.Handle;
}
