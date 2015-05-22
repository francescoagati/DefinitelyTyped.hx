extern class RelationshipQuery {
	var definitionExpression : String;
	var geometryPrecision : Float;
	var maxAllowableOffset : Float;
	var objectIds : Array<Float>;
	var outFields : Array<String>;
	var outSpatialReference : SpatialReference;
	var relationshipId : Float;
	var returnGeometry : Bool;
	function new():Void;
}
