extern class Esri_geometry_scaleUtilsTopLevel {
	static var scaleUtils : { function getExtentForScale(map:Map, scale:Float):Extent; function getScale(map:Map):Float; @:overload(function(sr:Float):Float { })
	@:overload(function(sr:String):Float { })
	function getUnitValueForSR(sr:SpatialReference):Float; };
}
