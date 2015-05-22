extern class AggregatePoints extends AnalysisBase {
	var groupByField : String;
	var keepBoundariesWithNoPoints : Bool;
	var map : Map;
	var minorityMajority : Bool;
	var outputLayerName : String;
	var percentPoints : Bool;
	var pointLayer : FeatureLayer;
	var polygonLayer : FeatureLayer;
	var polygonLayers : Array<FeatureLayer>;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var summaryFields : Array<String>;
	@:overload(function(params:esri.AggregatePointsOptions, srcNodeRef:String):Void { })
	function new(params:esri.AggregatePointsOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
