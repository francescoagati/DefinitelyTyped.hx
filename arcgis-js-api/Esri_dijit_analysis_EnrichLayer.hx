extern class EnrichLayer extends AnalysisBase {
	var distance : Float;
	var enableTravelModes : Bool;
	var inputLayer : FeatureLayer;
	var map : Map;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var showTrafficWidget : Bool;
	@:overload(function(params:esri.EnrichLayerOptions, srcNodeRef:String):Void { })
	function new(params:esri.EnrichLayerOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
