extern class TiledMapServiceLayer extends Layer {
	var fullExtent : Extent;
	var initialExtent : Extent;
	var spatialReference : SpatialReference;
	var tileInfo : TileInfo;
	function new():Void;
	function getTileUrl(level:Float, row:Float, column:Float):String;
	function refresh():Void;
	function setExclusionAreas():Array<Dynamic>;
}
