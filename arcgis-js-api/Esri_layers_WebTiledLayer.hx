extern class WebTiledLayer extends TiledMapServiceLayer {
	var copyright : String;
	var fullExtent : Extent;
	var initialExtent : Extent;
	var spatialReference : SpatialReference;
	var tileInfo : TileInfo;
	var tileServers : Array<String>;
	function new(urlTemplate:String, ?options:esri.WebTiledLayerOptions):Void;
}
