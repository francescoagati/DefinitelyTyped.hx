extern class ImageParameters {
	static var LAYER_OPTION_EXCLUDE : Dynamic;
	static var LAYER_OPTION_HIDE : Dynamic;
	static var LAYER_OPTION_INCLUDE : Dynamic;
	static var LAYER_OPTION_SHOW : Dynamic;
	var bbox : Extent;
	var dpi : Float;
	var format : String;
	var height : Float;
	var imageSpatialReference : SpatialReference;
	var layerDefinitions : Array<String>;
	var layerIds : Array<Float>;
	var layerOption : String;
	var layerTimeOptions : Array<LayerTimeOptions>;
	var timeExtent : TimeExtent;
	var transparent : Bool;
	var width : Float;
	function new():Void;
}
