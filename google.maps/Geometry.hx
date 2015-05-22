extern class Encoding {
	static function decodePath(encodedPath:String):Array<LatLng>;
	static function encodePath(path:Array<Dynamic>):String;
}
extern class Spherical {
	static function computeArea(path:Array<Dynamic>, ?radius:Float):Float;
	static function computeDistanceBetween(from:LatLng, to:LatLng, ?radius:Float):Float;
	static function computeHeading(from:LatLng, to:LatLng):Float;
	static function computeLength(path:Array<Dynamic>, ?radius:Float):Float;
	static function computeOffset(from:LatLng, distance:Float, heading:Float, ?radius:Float):LatLng;
	static function computeSignedArea(loop:Array<Dynamic>, ?radius:Float):Float;
	static function interpolate(from:LatLng, to:LatLng, fraction:Float):LatLng;
}
extern class Poly {
	static function containsLocation(point:LatLng, polygon:Polygon):Bool;
	static function isLocationOnEdge(point:LatLng, poly:Dynamic, ?tolerance:Float):Bool;
}
