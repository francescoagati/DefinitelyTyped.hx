extern class SubGeographyQuery extends GeographyQueryBase {
	var filterGeographyIDs : String;
	var filterGeographyLayerID : String;
	var filterGeographyWhere : String;
	var subGeographyLayerID : String;
	var subGeographyWhere : String;
	function new(?json:Dynamic):Void;
}
