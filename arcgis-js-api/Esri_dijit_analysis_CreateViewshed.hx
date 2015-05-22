extern class CreateViewshed extends AnalysisBase {
	var inputLayer : FeatureLayer;
	var map : Map;
	var maxDistanceUnits : String;
	var maximumDistance : Float;
	var observerHeight : Float;
	var observerHeightUnits : String;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var targetHeight : Float;
	var targetHeightUnits : String;
	@:overload(function(params:esri.CreateViewshedOptions, srcNodeRef:String):Void { })
	function new(params:esri.CreateViewshedOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
