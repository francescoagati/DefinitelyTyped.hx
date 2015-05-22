extern class DensifyParameters {
	var geodesic : Bool;
	var geometries : Array<Geometry>;
	var lengthUnit : Dynamic;
	var maxSegmentLength : Float;
	function toJson():Dynamic;
}
