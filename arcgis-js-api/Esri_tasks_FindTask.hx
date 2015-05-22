extern class FindTask {
	var url : String;
	function new(url:String, ?options:esri.FindTaskOptions):Void;
	function execute(findParameters:FindParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Error, listener:{ var error : Error; var target : FindTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var results : Array<FindResult>; var target : FindTask; } -> Void):esri.Handle;
}
