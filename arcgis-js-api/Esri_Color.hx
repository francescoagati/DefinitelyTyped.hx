extern class Color {
	static var named : Dynamic;
	var a : Float;
	var b : Float;
	var g : Float;
	var r : Float;
	@:overload(function(?color:Array<Float>):Void { })
	@:overload(function(?color:Dynamic):Void { })
	function new(?color:String):Void;
	static function blendColors(start:Color, end:Color, weight:Float, ?obj:Color):Color;
	static function fromArray(a:Array<Float>, ?obj:Color):Color;
	static function fromHex(color:String, ?obj:Color):Color;
	static function fromRgb(color:String, ?obj:Color):Color;
	static function fromString(str:String, ?obj:Color):Color;
	@:overload(function(color:Array<Float>):Color { })
	@:overload(function(color:Dynamic):Color { })
	function setColor(color:String):Color;
	function toCss(?includeAlpha:Bool):String;
	function toHex():String;
	function toRgb():Array<Float>;
	function toRgba():Array<Float>;
}
