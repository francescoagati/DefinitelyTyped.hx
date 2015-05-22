extern class BufferParameters {
	var bufferSpatialReference : SpatialReference;
	var distances : Array<Float>;
	var geodesic : Bool;
	var geometries : Array<Geometry>;
	var outSpatialReference : SpatialReference;
	var unionResults : Bool;
	var unit : String;
	function new():Void;
}
