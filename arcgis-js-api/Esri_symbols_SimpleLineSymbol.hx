extern class SimpleLineSymbol extends LineSymbol {
	static var STYLE_DASH : Dynamic;
	static var STYLE_DASHDOT : Dynamic;
	static var STYLE_DASHDOTDOT : Dynamic;
	static var STYLE_DOT : Dynamic;
	static var STYLE_LONGDASH : Dynamic;
	static var STYLE_LONGDASHDOT : Dynamic;
	static var STYLE_NULL : Dynamic;
	static var STYLE_SHORTDASH : Dynamic;
	static var STYLE_SHORTDASHDOT : Dynamic;
	static var STYLE_SHORTDASHDOTDOT : Dynamic;
	static var STYLE_SHORTDOT : Dynamic;
	static var STYLE_SOLID : Dynamic;
	var style : String;
	@:overload(function(style:String, color:Color, width:Float):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function setStyle(style:String):SimpleLineSymbol;
}
