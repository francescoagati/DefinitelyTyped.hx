extern class IdentifyTask {
	var url : String;
	function new(url:String, ?options:esri.IdentifyTaskOptions):Void;
	function execute(identifyParameters:IdentifyParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Error, listener:{ var error : Error; var target : IdentifyTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var results : Array<IdentifyResult>; var target : IdentifyTask; } -> Void):esri.Handle;
}
