extern class LayerDataSource extends LayerSource {
	var dataSource : DataSource;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
