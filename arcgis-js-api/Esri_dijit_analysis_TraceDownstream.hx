extern class TraceDownstream extends AnalysisBase {
	var boundingPolygonLayer : FeatureLayer;
	var boundingPolygonLayers : Array<FeatureLayer>;
	var maxDistance : Float;
	var maxDistanceUnits : String;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var splitDistance : Float;
	var splitUnits : String;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
}
