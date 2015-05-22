extern class WMSLayer extends DynamicMapServiceLayer {
	var copyright : String;
	var description : String;
	var extent : Extent;
	var getMapUrl : String;
	var imageFormat : String;
	var layerInfos : Array<WMSLayerInfo>;
	var maxHeight : Float;
	var maxWidth : Float;
	var spatialReference : SpatialReference;
	var title : String;
	var version : String;
	function new(url:String, ?options:esri.WMSLayerOptions):Void;
	function setImageFormat(format:String):Void;
	function setImageTransparency(transparency:Bool):Void;
	function setVisibleLayers(layers:Array<String>):Void;
}
