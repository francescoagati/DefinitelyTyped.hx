extern class SummarizeWithin extends AnalysisBase {
	var groupByField : String;
	var map : Map;
	var minorityMajority : Bool;
	var outputLayerName : String;
	var percentPoints : Bool;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var summaryFields : String;
	var summaryLayer : FeatureLayer;
	var summaryLayers : Array<FeatureLayer>;
	var sumWithinLayer : FeatureLayer;
	@:overload(function(params:esri.SummarizeWithinOptions, srcNodeRef:String):Void { })
	function new(params:esri.SummarizeWithinOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
