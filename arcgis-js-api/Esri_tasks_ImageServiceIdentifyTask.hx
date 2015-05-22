extern class ImageServiceIdentifyTask {
	function new(url:String):Void;
	function execute(params:ImageServiceIdentifyParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var result : ImageServiceIdentifyResult; var target : ImageServiceIdentifyTask; } -> Void):esri.Handle;
}
