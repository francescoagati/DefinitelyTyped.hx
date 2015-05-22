extern class PictureMarkerSymbol extends MarkerSymbol {
	var height : Float;
	var url : String;
	var width : Float;
	@:overload(function(json:Dynamic):Void { })
	function new(url:String, width:Float, height:Float):Void;
	function setHeight(height:Float):PictureMarkerSymbol;
	function setUrl(url:String):PictureMarkerSymbol;
	function setWidth(width:Float):PictureMarkerSymbol;
}
