extern class Multipoint extends Geometry {
	var points : Array<Array<Float>>;
	@:overload(function(json:Dynamic):Void { })
	function new(spatialReference:SpatialReference):Void;
	@:overload(function(point:Array<Float>):Multipoint { })
	function addPoint(point:Point):Multipoint;
	function getExtent():Extent;
	function getPoint(index:Float):Point;
	function removePoint(index:Float):Point;
	function setPoint(index:Float, point:Point):Multipoint;
}
