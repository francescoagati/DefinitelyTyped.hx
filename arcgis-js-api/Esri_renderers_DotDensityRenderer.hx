extern class DotDensityRenderer extends Renderer {
	var backgroundColor : Color;
	var dotShape : String;
	var dotSize : Float;
	var dotValue : Float;
	var fields : Array<Dynamic>;
	var outline : LineSymbol;
	function new(params:esri.DotDensityRendererOptions):Void;
	function setBackgroundColor(color:Color):Void;
	function setDotSize(size:Float):Void;
	function setDotValue(value:Float):Void;
	function setOutline(outline:LineSymbol):Void;
}
