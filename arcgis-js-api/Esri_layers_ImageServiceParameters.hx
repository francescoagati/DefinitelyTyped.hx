extern class ImageServiceParameters {
	static var INTERPOLATION_BILINEAR : Dynamic;
	static var INTERPOLATION_CUBICCONVOLUTION : Dynamic;
	static var INTERPOLATION_MAJORITY : Dynamic;
	static var INTERPOLATION_NEARESTNEIGHBOR : Dynamic;
	var bandIds : Array<Float>;
	var compressionQuality : Float;
	var extent : Extent;
	var format : String;
	var height : Float;
	var interpolation : String;
	var mosaicRule : MosaicRule;
	var noData : Float;
	var renderingRule : RasterFunction;
	var timeExtent : TimeExtent;
	var width : Float;
	function new():Void;
}
