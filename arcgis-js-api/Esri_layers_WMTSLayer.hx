extern class WMTSLayer extends TiledMapServiceLayer {
	var copyright : String;
	var description : String;
	var format : String;
	var fullExtent : Extent;
	var initialExtent : Extent;
	var layerInfos : Array<Dynamic>;
	var serviceMode : String;
	var spatialReference : SpatialReference;
	var tileInfo : TileInfo;
	var title : String;
	var version : String;
	function new(url:String, ?options:esri.WMTSLayerOptions):Void;
	function setActiveLayer(WMTSLayerInfo:WMTSLayerInfo):Void;
}
