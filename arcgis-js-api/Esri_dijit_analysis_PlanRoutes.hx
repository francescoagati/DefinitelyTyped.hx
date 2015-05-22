extern class PlanRoutes extends AnalysisBase {
	var distanceDefaultUnits : String;
	var endLayer : String;
	var featureLayers : Array<FeatureLayer>;
	var limitMaxTimePerRoute : Bool;
	var maxStopsPerRoute : Float;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var returnToStart : Bool;
	var routeCount : Float;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var startLayer : String;
	var stopsLayer : FeatureLayer;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
}
