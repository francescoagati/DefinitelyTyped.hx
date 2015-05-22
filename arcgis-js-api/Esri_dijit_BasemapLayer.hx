extern class BasemapLayer {
	var copyright : String;
	var fullExtent : Extent;
	var initialExtent : Extent;
	var subDomains : Array<String>;
	var tileInfo : TileInfo;
	var tileServer : Array<String>;
	var type : String;
	function new(params:esri.BasemapLayerOptions):Void;
}
