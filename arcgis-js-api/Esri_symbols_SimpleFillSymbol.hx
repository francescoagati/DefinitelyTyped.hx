extern class SimpleFillSymbol extends FillSymbol {
	static var STYLE_BACKWARD_DIAGONAL : Dynamic;
	static var STYLE_CROSS : Dynamic;
	static var STYLE_DIAGONAL_CROSS : Dynamic;
	static var STYLE_FORWARD_DIAGONAL : Dynamic;
	static var STYLE_HORIZONTAL : Dynamic;
	static var STYLE_NULL : Dynamic;
	static var STYLE_SOLID : Dynamic;
	static var STYLE_VERTICAL : Dynamic;
	var style : String;
	@:overload(function(style:String, outline:SimpleLineSymbol, color:Color):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function setStyle(style:String):SimpleFillSymbol;
}
