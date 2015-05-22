extern class LayerDrawingOptions {
	var labelingInfo : Array<LabelClass>;
	var renderer : Renderer;
	var scaleSymbols : Bool;
	var showLabels : Bool;
	var transparency : Float;
	function new(?json:Dynamic):Void;
	function toJson():Dynamic;
}
