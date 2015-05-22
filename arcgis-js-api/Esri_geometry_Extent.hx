extern class Extent extends Geometry {
	var xmax : Float;
	var xmin : Float;
	var ymax : Float;
	var ymin : Float;
	@:overload(function(json:Dynamic):Void { })
	function new(xmin:Float, ymin:Float, xmax:Float, ymax:Float, spatialReference:SpatialReference):Void;
	function centerAt(point:Point):Extent;
	function contains(geometry:Geometry):Bool;
	function expand(factor:Float):Extent;
	function getCenter():Point;
	function getHeight():Float;
	function getWidth():Float;
	function intersects(geometry:Geometry):Dynamic;
	function normalize():Array<Extent>;
	function offset(dx:Float, dy:Float):Extent;
	function shiftCentralMeridian():Extent;
	function union(extent:Extent):Extent;
	function update(xmin:Float, ymin:Float, xmax:Float, ymax:Float, spatialReference:SpatialReference):Extent;
}
