extern class Font {
	static var STYLE_ITALIC : Dynamic;
	static var STYLE_NORMAL : Dynamic;
	static var STYLE_OBLIQUE : Dynamic;
	static var VARIANT_NORMAL : Dynamic;
	static var VARIANT_SMALLCAPS : Dynamic;
	static var WEIGHT_BOLD : Dynamic;
	static var WEIGHT_BOLDER : Dynamic;
	static var WEIGHT_LIGHTER : Dynamic;
	static var WEIGHT_NORMAL : Dynamic;
	var decoration : String;
	var family : String;
	var size : Float;
	var style : String;
	var variant : String;
	var weight : String;
	@:overload(function(?size:Float, ?style:String, ?variant:String, ?weight:String, ?family:String):Void { })
	@:overload(function(?size:String, ?style:String, ?variant:String, ?weight:String, ?family:String):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function setDecoration(decoration:String):Font;
	function setFamily(family:String):Font;
	@:overload(function(size:String):Font { })
	function setSize(size:Float):Font;
	function setStyle(style:String):Font;
	function setVariant(variant:String):Font;
	function setWeight(weight:String):Font;
}
