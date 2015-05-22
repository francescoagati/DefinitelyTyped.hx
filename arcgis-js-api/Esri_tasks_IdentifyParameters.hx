extern class IdentifyParameters {
	static var LAYER_OPTION_ALL : Dynamic;
	static var LAYER_OPTION_TOP : Dynamic;
	static var LAYER_OPTION_VISIBLE : Dynamic;
	var dpi : Float;
	var dynamicLayerInfos : Array<DynamicLayerInfo>;
	var geometry : Geometry;
	var height : Float;
	var layerDefinitions : Array<String>;
	var layerIds : Array<Float>;
	var layerOption : String;
	var layerTimeOptions : Array<LayerTimeOptions>;
	var mapExtent : Extent;
	var maxAllowableOffset : Float;
	var returnGeometry : Bool;
	var spatialReference : SpatialReference;
	var timeExtent : TimeExtent;
	var tolerance : Float;
	var width : Float;
	function new():Void;
}
