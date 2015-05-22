extern class InterpolatePoints extends AnalysisBase {
	var boundingPolygonLayer : FeatureLayer;
	var boundingPolygonLayers : Array<FeatureLayer>;
	var classificationType : String;
	var inputLayer : FeatureLayer;
	var maxClasses : Float;
	var minClasses : Float;
	var numClasses : Float;
	var outputLayerName : String;
	var predictAtPointLayers : Array<FeatureLayer>;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
}
