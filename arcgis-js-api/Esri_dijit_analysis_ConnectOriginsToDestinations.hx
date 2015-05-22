extern class ConnectOriginsToDestinations extends AnalysisBase {
	var distanceDefaultUnits : String;
	var enableTravelModes : Bool;
	var featureLayers : Array<FeatureLayer>;
	var map : Map;
	var originsLayer : FeatureLayer;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.ConnectOriginsToDestinationsOptions, srcNodeRef:String):Void { })
	function new(params:esri.ConnectOriginsToDestinationsOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
