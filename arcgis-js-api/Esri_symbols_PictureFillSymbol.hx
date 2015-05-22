extern class PictureFillSymbol extends FillSymbol {
	var height : Float;
	var url : String;
	var width : Float;
	var xoffset : Float;
	var xscale : Float;
	var yoffset : Float;
	var yscale : Float;
	@:overload(function(json:Dynamic):Void { })
	function new(url:String, outline:SimpleLineSymbol, width:Float, height:Float):Void;
	function setHeight(height:Float):PictureFillSymbol;
	function setOffset(x:Float, y:Float):PictureFillSymbol;
	function setUrl(url:String):PictureFillSymbol;
	function setWidth(width:Float):PictureFillSymbol;
	function setXScale(scale:Float):PictureFillSymbol;
	function setYScale(scale:Float):PictureFillSymbol;
}
