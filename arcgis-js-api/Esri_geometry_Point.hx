extern class Point extends Geometry {
	var x : Float;
	var y : Float;
	@:overload(function(coords:Array<Float>, spatialReference:SpatialReference):Void { })
	@:overload(function(json:Dynamic):Void { })
	@:overload(function(long:Float, lat:Float):Void { })
	@:overload(function(point:Array<Float>):Void { })
	@:overload(function(point:Dynamic):Void { })
	function new(x:Float, y:Float, spatialReference:SpatialReference):Void;
	function getLatitude():Float;
	function getLongitude():Float;
	function normalize():Point;
	function offset(dx:Float, dy:Float):Point;
	function setLatitude(lat:Float):Point;
	function setLongitude(lon:Float):Point;
	function setX(x:Float):Point;
	function setY(y:Float):Point;
	function update(x:Float, y:Float):Point;
}
