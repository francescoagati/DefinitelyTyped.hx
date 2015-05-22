extern class Circle extends Polygon {
	var center : Dynamic;
	var radius : Float;
	var radiusUnit : String;
	var rings : Array<Array<Array<Float>>>;
	var spatialReference : SpatialReference;
	@:overload(function(center:Array<Float>, ?options:esri.CircleOptions1):Void { })
	@:overload(function(params:esri.CircleOptions2):Void { })
	function new(center:Point, ?options:esri.CircleOptions1):Void;
}
