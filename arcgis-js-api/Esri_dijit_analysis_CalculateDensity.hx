extern class CalculateDensity extends AnalysisBase {
	var areaUnits : String;
	var boundingPolygonLayer : FeatureLayer;
	var boundingPolygonLayers : Array<FeatureLayer>;
	var classificationType : String;
	var inputLayer : FeatureLayer;
	var numClasses : Float;
	var outputLayerName : String;
	var radius : Float;
	var radiusUnits : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
}
