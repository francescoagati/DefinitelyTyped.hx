extern class CartographicLineSymbol extends SimpleLineSymbol {
	static var CAP_BUTT : Dynamic;
	static var CAP_ROUND : Dynamic;
	static var CAP_SQUARE : Dynamic;
	static var JOIN_BEVEL : Dynamic;
	static var JOIN_MITER : Dynamic;
	static var JOIN_ROUND : Dynamic;
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
	var cap : String;
	var join : String;
	var miterLimit : String;
	@:overload(function(?style:String, ?color:Color, ?width:Float, ?cap:String, ?join:String, ?miterLimit:String):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function setCap(cap:String):CartographicLineSymbol;
	function setJoin(join:String):CartographicLineSymbol;
	function setMiterLimit(miterLimit:String):CartographicLineSymbol;
}
