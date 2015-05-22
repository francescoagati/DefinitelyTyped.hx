extern class HeatmapRenderer extends Renderer {
	var blurRadius : Float;
	var colors : Array<String>;
	var colorStops : Array<Dynamic>;
	var field : String;
	var maxPixelIntensity : Float;
	var minPixelIntensity : Float;
	function new(options:esri.HeatmapRendererOptions):Void;
	function setBlurRadius(blurRadius:Float):Void;
	function setColors(colors:Array<String>):Void;
	function setColorStops(stops:Array<Dynamic>):HeatmapRenderer;
	function setField(field:String):Void;
	function setMaxPixelIntensity(maxPixelIntensity:Float):Void;
	function setMinPixelIntensity(minPixelIntensity:Float):Void;
	function toJson():String;
}
