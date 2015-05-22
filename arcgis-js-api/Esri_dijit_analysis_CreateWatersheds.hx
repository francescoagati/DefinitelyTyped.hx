extern class CreateWatersheds extends AnalysisBase {
	var inputLayer : FeatureLayer;
	var map : Map;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var searchUnits : String;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.CreateWatershedsOptions, srcNodeRef:String):Void { })
	function new(params:esri.CreateWatershedsOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
