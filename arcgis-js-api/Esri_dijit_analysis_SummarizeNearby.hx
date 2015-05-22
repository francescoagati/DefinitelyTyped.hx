extern class SummarizeNearby extends AnalysisBase {
	var distances : Array<Float>;
	var enableTravelModes : Bool;
	var groupByField : String;
	var map : Map;
	var minorityMajority : Bool;
	var nearType : String;
	var outputLayerName : String;
	var percentPoints : Bool;
	var returnFeatureCollection : Bool;
	var shapeUnits : String;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var summaryFields : Array<String>;
	var summaryLayer : FeatureLayer;
	var summaryLayers : Array<FeatureLayer>;
	var sumNearbyLayer : FeatureLayer;
	var sumShape : Bool;
	var units : String;
	@:overload(function(params:esri.SummarizeNearbyOptions, srcNodeRef:String):Void { })
	function new(params:esri.SummarizeNearbyOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
