extern class FindNearest extends AnalysisBase {
	var analysisLayer : FeatureLayer;
	var enableTravelModes : Bool;
	var map : Map;
	var maxCount : Float;
	var nearLayer : FeatureLayer;
	var nearLayers : Array<FeatureLayer>;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var searchCutoff : Float;
	var searchCutoffUnits : String;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.FindNearestOptions, srcNodeRef:String):Void { })
	function new(params:esri.FindNearestOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
