extern class Polyline extends Geometry {
	var paths : Array<Array<Array<Float>>>;
	@:overload(function(json:Dynamic):Void { })
	@:overload(function(coordinates:Array<Array<Float>>):Void { })
	@:overload(function(coordinates:Array<Array<Array<Float>>>):Void { })
	function new(spatialReference:SpatialReference):Void;
	@:overload(function(path:Array<Array<Float>>):Polyline { })
	function addPath(path:Array<Point>):Polyline;
	function getExtent():Extent;
	function getPoint(pathIndex:Float, pointIndex:Float):Point;
	function insertPoint(pathIndex:Float, pointIndex:Float, point:Point):Polyline;
	function removePath(pathIndex:Float):Array<Point>;
	function removePoint(pathIndex:Float, pointIndex:Float):Point;
	function setPoint(pathIndex:Float, pointIndex:Float, point:Point):Polyline;
}
