extern class DimensionalDefinition {
	var dimensionName : String;
	var isSlice : Bool;
	var values : Array<Dynamic>;
	var variableName : String;
	function new(json:Dynamic):Void;
	function toJson():Dynamic;
}
