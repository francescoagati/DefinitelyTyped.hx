extern class CreateDriveTimeAreas extends AnalysisBase {
	var breakUnits : String;
	var breakValues : Array<Float>;
	var inputLayer : FeatureLayer;
	var inputType : String;
	var map : Map;
	var outputLayerName : String;
	var overlapPolicy : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	@:overload(function(params:esri.CreateDriveTimeAreasOptions, srcNodeRef:String):Void { })
	function new(params:esri.CreateDriveTimeAreasOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
