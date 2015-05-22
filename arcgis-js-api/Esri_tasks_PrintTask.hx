extern class PrintTask {
	var url : String;
	function new(url:String, ?params:esri.PrintTaskOptions):Void;
	function execute(printParameters:PrintParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Error, listener:{ var error : Error; var target : PrintTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var url : String; var target : PrintTask; } -> Void):esri.Handle;
}
