extern class DynamicLayerInfo extends LayerInfo {
	var defaultVisibility : Bool;
	var id : Float;
	var maxScale : Float;
	var minScale : Float;
	var name : String;
	var parentLayerId : Float;
	var source : LayerSource;
	var subLayerIds : Array<Float>;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
