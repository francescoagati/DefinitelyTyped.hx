extern class PixelBlock {
	var height : Float;
	var mask : Array<Dynamic>;
	var pixels : Array<Array<Float>>;
	var pixelType : String;
	var statistics : Array<Dynamic>;
	var width : Float;
	function new(options:esri.PixelBlockOptions):Void;
	function addData(planeData:Dynamic):Void;
	function getAsRGBA():Array<Dynamic>;
	function getAsRGBAFloat():Array<Dynamic>;
	function getPlaneCount():Float;
}
