extern class GeographyQueryBase {
	var countryID : String;
	var datasetID : String;
	var featureLimit : Float;
	var generalizationLevel : Float;
	var outSR : SpatialReference;
	var returnCentroids : Bool;
	var returnGeometry : Bool;
	var useFuzzySearch : Bool;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
