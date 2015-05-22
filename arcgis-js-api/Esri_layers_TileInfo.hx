extern class TileInfo {
	var dpi : Float;
	var format : String;
	var height : Float;
	var lods : Array<LOD>;
	var origin : Point;
	var spatialReference : SpatialReference;
	var width : Float;
	function new(properties:Dynamic):Void;
	function toJson():Dynamic;
}
