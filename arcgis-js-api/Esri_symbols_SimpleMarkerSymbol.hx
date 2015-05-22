extern class SimpleMarkerSymbol extends MarkerSymbol {
	static var STYLE_CIRCLE : Dynamic;
	static var STYLE_CROSS : Dynamic;
	static var STYLE_DIAMOND : Dynamic;
	static var STYLE_PATH : Dynamic;
	static var STYLE_SQUARE : Dynamic;
	static var STYLE_X : Dynamic;
	var outline : SimpleLineSymbol;
	var size : Float;
	var style : String;
	@:overload(function(style:String, size:Float, outline:SimpleLineSymbol, color:Color):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function setOutline(outline:SimpleLineSymbol):SimpleMarkerSymbol;
	function setPath(path:String):SimpleMarkerSymbol;
	function setStyle(style:String):SimpleMarkerSymbol;
}
