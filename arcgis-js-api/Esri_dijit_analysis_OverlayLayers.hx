extern class OverlayLayers extends AnalysisBase {
	var inputLayer : FeatureLayer;
	var map : Map;
	var outputLayerName : String;
	var overlayLayer : Array<FeatureLayer>;
	var overlayType : String;
	var returnFeatureCollection : Bool;
	var showChooseExtent : Bool;
	var showCredits : Bool;
	var showHelp : Bool;
	var showSelectFolder : Bool;
	var snapToInput : Bool;
	var tolerance : Float;
	@:overload(function(params:esri.OverlayLayersOptions, srcNodeRef:String):Void { })
	function new(params:esri.OverlayLayersOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
