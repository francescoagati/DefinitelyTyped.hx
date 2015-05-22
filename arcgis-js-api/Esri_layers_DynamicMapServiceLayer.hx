extern class DynamicMapServiceLayer extends Layer {
	var fullExtent : Extent;
	var initialExtent : Extent;
	var spatialReference : SpatialReference;
	function getImageUrl(extent:Extent, width:Float, height:Float, callback:haxe.Constraints.Function):String;
	function refresh():Void;
}
