extern class Geometry {
	var cache : Dynamic;
	var spatialReference : SpatialReference;
	var type : String;
	function clearCache():Void;
	function getCacheValue(name:String):Dynamic;
	function setCacheValue(name:String, value:Dynamic):Void;
	function setSpatialReference(sr:SpatialReference):Geometry;
	function toJson():Dynamic;
}
