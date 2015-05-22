extern class MergeLayers extends AnalysisBase {
	var analysisGpServer : String;
	var inputLayer : FeatureLayer;
	var map : Map;
	var mergeLayers : Array<FeatureLayer>;
	var mergingAttributes : Array<String>;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.MergeLayersOptions, srcNodeRef:String):Void { })
	function new(params:esri.MergeLayersOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
