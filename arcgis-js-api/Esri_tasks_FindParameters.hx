extern class FindParameters {
	var contains : Bool;
	var dynamicLayerInfos : Array<DynamicLayerInfo>;
	var layerDefinitions : Array<String>;
	var layerIds : Array<Float>;
	var maxAllowableOffset : Float;
	var outSpatialReference : SpatialReference;
	var returnGeometry : Bool;
	var searchFields : Array<String>;
	var searchText : String;
	function new():Void;
}
