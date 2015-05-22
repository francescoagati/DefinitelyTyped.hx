extern class JoinDataSource extends DataSource {
	var joinType : String;
	var leftTableKey : String;
	var leftTableSource : LayerSource;
	var rightTableKey : String;
	var rightTableSource : LayerSource;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
