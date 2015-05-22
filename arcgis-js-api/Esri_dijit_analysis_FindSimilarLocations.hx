extern class FindSimilarLocations extends AnalysisBase {
	var inputLayer : FeatureLayer;
	var outputLayerName : String;
	var returnFeatureCollection : Bool;
	var returnProcessInfo : Bool;
	var searchLayers : Array<FeatureLayer>;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Selecttool-deactivate, listener:{ var target : FindSimilarLocations; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Selecttool-activate, listener:{ var target : FindSimilarLocations; } -> Void):esri.Handle;
}
