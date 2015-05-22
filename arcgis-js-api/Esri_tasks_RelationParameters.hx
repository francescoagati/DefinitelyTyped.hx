extern class RelationParameters {
	static var SPATIAL_REL_COINCIDENCE : Dynamic;
	static var SPATIAL_REL_CROSS : Dynamic;
	static var SPATIAL_REL_DISJOINT : Dynamic;
	static var SPATIAL_REL_IN : Dynamic;
	static var SPATIAL_REL_INTERIORINTERSECTION : Dynamic;
	static var SPATIAL_REL_INTERSECTION : Dynamic;
	static var SPATIAL_REL_LINETOUCH : Dynamic;
	static var SPATIAL_REL_OVERLAP : Dynamic;
	static var SPATIAL_REL_POINTTOUCH : Dynamic;
	static var SPATIAL_REL_RELATION : Dynamic;
	static var SPATIAL_REL_TOUCH : Dynamic;
	static var SPATIAL_REL_WITHIN : Dynamic;
	var geometries1 : Array<Geometry>;
	var geometries2 : Array<Geometry>;
	var relation : String;
	var relationParam : String;
	function new():Void;
}
