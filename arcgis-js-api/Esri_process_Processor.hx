extern class Processor {
	var drawFeatures : Bool;
	var fetchWithWorker : Bool;
	var layers : Array<FeatureLayer>;
	var passFeatures : Bool;
	var requireWorkerSupport : Bool;
	function new(?options:esri.ProcessorOptions):Void;
	function addLayer(layer:FeatureLayer):Void;
	function removeLayer(layer:FeatureLayer):Void;
	function setMap(map:Map):Void;
	function start():Void;
	function stop():Void;
	function unsetMap():Void;
	@:overload(function(type:Stop, listener:{ var target : Processor; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Start, listener:{ var target : Processor; } -> Void):esri.Handle;
}
