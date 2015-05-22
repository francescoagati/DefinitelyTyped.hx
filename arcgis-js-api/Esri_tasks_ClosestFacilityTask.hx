extern class ClosestFacilityTask {
	function new(url:String):Void;
	function solve(params:ClosestFacilityParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Solve-complete, listener:{ var result : ClosestFacilitySolveResult; var target : ClosestFacilityTask; } -> Void):esri.Handle;
}
