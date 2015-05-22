extern class LayerMapSource extends LayerSource {
	var gdbVersion : String;
	var mapLayerId : Float;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
