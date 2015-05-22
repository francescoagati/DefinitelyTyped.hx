extern class Geoprocessor {
	var outputSpatialReference : SpatialReference;
	var outSpatialReference : SpatialReference;
	var processSpatialReference : SpatialReference;
	var updateDelay : Float;
	var url : String;
	function new(url:String):Void;
	function cancelJob(jobId:String, callback:haxe.Constraints.Function, errback:haxe.Constraints.Function):Dynamic;
	function cancelJobStatusUpdates(jobId:String):Void;
	function checkJobStatus(jobId:String, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Void;
	function execute(inputParameters:Dynamic, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function getResultData(jobId:String, parameterName:String, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function getResultImage(jobId:String, parameterName:String, imageParameters:ImageParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function getResultImageLayer(jobId:String, ?parameterName:String, ?imageParameters:ImageParameters, ?callback:haxe.Constraints.Function):ArcGISDynamicMapServiceLayer;
	function setOutputSpatialReference(spatialReference:SpatialReference):Void;
	function setOutSpatialReference(spatialReference:SpatialReference):Void;
	function setProcessSpatialReference(spatialReference:SpatialReference):Void;
	function setUpdateDelay(delay:Float):Void;
	function submitJob(inputParameters:Dynamic, ?callback:haxe.Constraints.Function, ?statusCallback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Void;
	@:overload(function(type:Execute-complete, listener:{ var messages : Array<GPMessage>; var results : Array<ParameterValue>; var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Get-result-data-complete, listener:{ var result : ParameterValue; var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Get-result-image-complete, listener:{ var mapImage : MapImage; var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Get-result-image-layer-complete, listener:{ var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Job-cancel, listener:{ var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Job-complete, listener:{ var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:Status-update, listener:{ var target : Geoprocessor; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : Geoprocessor; } -> Void):esri.Handle;
}
