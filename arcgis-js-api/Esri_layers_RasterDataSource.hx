extern class RasterDataSource extends DataSource {
	var dataSourceName : String;
	var workspaceId : String;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
