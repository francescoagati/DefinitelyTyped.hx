extern class FindHotSpots extends AnalysisBase {
	var aggregationPolygonLayers : Array<FeatureLayer>;
	var analysisField : String;
	var analysisLayer : FeatureLayer;
	var boundingPolygonLayer : FeatureLayer;
	var boundingPolygonLayers : Array<FeatureLayer>;
	var map : Map;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var returnProcessInfo : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.FindHotSpotsOptions, srcNodeRef:String):Void { })
	function new(params:esri.FindHotSpotsOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
