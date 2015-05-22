extern class FeatureSet {
	var displayFieldName : String;
	var exceededTransferLimit : Bool;
	var features : Array<Graphic>;
	var fieldAliases : Dynamic;
	var geometryType : String;
	var spatialReference : SpatialReference;
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
}
