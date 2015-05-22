extern class TextSymbol extends Symbol {
	static var ALIGN_END : Dynamic;
	static var ALIGN_MIDDLE : Dynamic;
	static var ALIGN_START : Dynamic;
	static var DECORATION_LINETHROUGH : Dynamic;
	static var DECORATION_NONE : Dynamic;
	static var DECORATION_OVERLINE : Dynamic;
	static var DECORATION_UNDERLINE : Dynamic;
	var align : String;
	var angle : Float;
	var decoration : String;
	var font : Font;
	var horizontalAlignment : String;
	var kerning : Bool;
	var rotated : Bool;
	var text : String;
	var verticalAlignment : String;
	var xoffset : Float;
	var yoffset : Float;
	@:overload(function(text:String, font:Font, color:Color):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new(text:String):Void;
	function setAlign(align:String):TextSymbol;
	function setAngle(angle:Float):TextSymbol;
	function setDecoration(decoration:String):TextSymbol;
	function setFont(font:Font):TextSymbol;
	function setHorizontalAlignment(alignment:String):TextSymbol;
	function setKerning(kerning:Bool):TextSymbol;
	function setOffset(x:Float, y:Float):TextSymbol;
	function setRotated(rotated:Bool):TextSymbol;
	function setText(text:String):TextSymbol;
	function setVerticalAlignment(alignment:String):TextSymbol;
}
