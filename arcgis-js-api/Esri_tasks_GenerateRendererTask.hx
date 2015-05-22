extern class GenerateRendererTask {
	function new(url:String, ?options:esri.GenerateRendererTaskOptions):Void;
	function execute(generateRendererParameters:GenerateRendererParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Error, listener:{ var error : Error; var target : GenerateRendererTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var renderer : Renderer; var target : GenerateRendererTask; } -> Void):esri.Handle;
}
