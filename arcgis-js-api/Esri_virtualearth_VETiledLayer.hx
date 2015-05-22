extern class VETiledLayer extends TiledMapServiceLayer {
	static var MAP_STYLE_AERIAL : Dynamic;
	static var MAP_STYLE_AERIAL_WITH_LABELS : Dynamic;
	static var MAP_STYLE_ROAD : Dynamic;
	var copyright : String;
	var culture : String;
	var mapStyle : String;
	function new(options:esri.VETiledLayerOptions):Void;
	function setCulture(culture:String):Void;
	function setMapStyle(style:String):Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Map-style-change, listener:{ var target : VETiledLayer; } -> Void):esri.Handle;
}
