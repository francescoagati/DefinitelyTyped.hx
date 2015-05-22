extern class SpatialReference {
	var wkid : Float;
	var wkt : String;
	@:overload(function(wkid:Float):Void { })
	@:overload(function(wkt:String):Void { })
	function new(json:Dynamic):Void;
	function equals(sr:SpatialReference):Bool;
	function isWebMercator():Bool;
	function toJson():Dynamic;
}
