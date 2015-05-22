extern class DissolveBoundaries extends AnalysisBase {
	var dissolveFields : Array<String>;
	var inputLayer : FeatureLayer;
	var map : Map;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var summaryFields : Array<String>;
	@:overload(function(params:esri.DissolveBoundariesOptions, srcNodeRef:String):Void { })
	function new(params:esri.DissolveBoundariesOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
