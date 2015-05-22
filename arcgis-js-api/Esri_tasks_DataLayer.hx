extern class DataLayer {
	static var SPATIAL_REL_CONTAINS : Dynamic;
	static var SPATIAL_REL_CROSSES : Dynamic;
	static var SPATIAL_REL_ENVELOPEINTERSECTS : Dynamic;
	static var SPATIAL_REL_INDEXINTERSECTS : Dynamic;
	static var SPATIAL_REL_INTERSECTS : Dynamic;
	static var SPATIAL_REL_OVERLAPS : Dynamic;
	static var SPATIAL_REL_TOUCHES : Dynamic;
	static var SPATIAL_REL_WITHIN : Dynamic;
	var geometry : Geometry;
	var name : String;
	var spatialRelationship : String;
	var where : String;
	function new():Void;
}
