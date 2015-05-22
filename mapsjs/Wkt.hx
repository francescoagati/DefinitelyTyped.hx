extern class WktTopLevel {
	static function parsePoint(wkt:String):Point;
	static function parseMultiPoint(wkt:String):Geometry;
	static function parseLineString(wkt:String):Geometry;
	static function parseMultiLineString(wkt:String):Geometry;
	static function parsePolygon(wkt:String):Geometry;
	static function parseMultiPolygon(wkt:String):Geometry;
	static function parse(wkt:String):Dynamic;
	static function toMultiPolygonString(polys:Array<geometry.Polygon>):String;
}
