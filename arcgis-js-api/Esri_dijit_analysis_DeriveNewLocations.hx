extern class DeriveNewLocations extends AnalysisBase {
	var analysisLayer : FeatureLayer;
	var inputLayers : Array<FeatureLayer>;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
}
