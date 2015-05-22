extern class CreateBuffers extends AnalysisBase {
	var bufferDistance : Array<Float>;
	var inputLayer : FeatureLayer;
	var map : Map;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var units : String;
	@:overload(function(params:esri.CreateBuffersOptions, srcNodeRef:String):Void { })
	function new(params:esri.CreateBuffersOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
