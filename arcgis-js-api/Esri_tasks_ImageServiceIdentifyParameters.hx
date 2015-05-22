extern class ImageServiceIdentifyParameters {
	var geometry : Geometry;
	var mosaicRule : MosaicRule;
	var noData : Dynamic;
	var noDataInterpretation : String;
	var pixelSize : Symbol;
	var pixelSizeX : Float;
	var pixelSizeY : Float;
	var renderingRule : RasterFunction;
	var returnCatalogItems : Bool;
	var returnGeometry : Bool;
	var timeExtent : TimeExtent;
	function new():Void;
}
