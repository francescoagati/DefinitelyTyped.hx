extern class Esri_geometry_webMercatorUtilsTopLevel {
	static var webMercatorUtils : { @:overload(function(source:Dynamic, target:SpatialReference):Bool { })
	@:overload(function(source:SpatialReference, target:SpatialReference):Bool { })
	@:overload(function(source:Dynamic, target:Dynamic):Bool { })
	function canProject(source:SpatialReference, target:Dynamic):Bool; function geographicToWebMercator(geometry:Geometry):Geometry; function lngLatToXY(long:Float, lat:Float):Array<Float>; @:overload(function(geometry:Geometry, target:Dynamic):Dynamic { })
	function project(geometry:Geometry, target:SpatialReference):Dynamic; function webMercatorToGeographic(geometry:Geometry):Geometry; function xyToLngLat(x:Float, y:Float):Array<Float>; };
}
