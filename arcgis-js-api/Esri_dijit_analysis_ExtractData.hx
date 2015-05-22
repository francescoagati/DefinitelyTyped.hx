extern class ExtractData extends AnalysisBase {
	var clip : Bool;
	var dataFormat : String;
	var featureLayers : Array<FeatureLayer>;
	var inputLayers : Array<FeatureLayer>;
	var map : Map;
	var outputLayerName : String;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.ExtractDataOptions, srcNodeRef:String):Void { })
	function new(params:esri.ExtractDataOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
