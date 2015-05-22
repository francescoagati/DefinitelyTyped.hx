extern class QueryDataSource extends DataSource {
	var geometryType : String;
	var oidFields : Array<String>;
	var query : String;
	var spatialReference : SpatialReference;
	var workspaceId : String;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
