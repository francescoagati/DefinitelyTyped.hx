extern class TableDataSource extends DataSource {
	var dataSourceName : String;
	var gdbVersion : String;
	var workspaceId : String;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
