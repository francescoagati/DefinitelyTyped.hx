extern class Polygon extends Geometry {
	var rings : Array<Array<Array<Float>>>;
	@:overload(function(json:Dynamic):Void { })
	@:overload(function(coordinates:Array<Array<Float>>):Void { })
	@:overload(function(coordinates:Array<Array<Array<Float>>>):Void { })
	function new(spatialReference:SpatialReference):Void;
	@:overload(function(ring:Array<Array<Float>>):Polygon { })
	function addRing(ring:Array<Point>):Polygon;
	function contains(point:Point):Bool;
	static function fromExtent(extent:Extent):Polygon;
	function getCentroid():Point;
	function getExtent():Extent;
	function getPoint(ringIndex:Float, pointIndex:Float):Point;
	function insertPoint(ringIndex:Float, pointIndex:Float, point:Point):Polygon;
	@:overload(function(ring:Array<Array<Float>>):Bool { })
	function isClockwise(ring:Array<Point>):Bool;
	function isSelfIntersecting(polygon:Polygon):Bool;
	function removePoint(ringIndex:Float, pointIndex:Float):Point;
	function removeRing(ringIndex:Float):Array<Point>;
	function setPoint(ringIndex:Float, pointIndex:Float, point:Point):Polygon;
}
