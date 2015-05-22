typedef JQueryColor = {
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function red():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function green():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function blue():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function alpha():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function hue():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function saturation():Float;
	@:overload(function(val:Float):JQueryColor { })
	@:overload(function(val:String):JQueryColor { })
	function lightness():Float;
	@:overload(function(red:Float, green:Float, blue:Float, ?alpha:Float):JQueryColor { })
	@:overload(function(val:RgbaColor):JQueryColor { })
	@:overload(function(vals:Array<Float>):JQueryColor { })
	function rgba():Array<Float>;
	@:overload(function(hue:Float, saturation:Float, lightness:Float, ?alpha:Float):JQueryColor { })
	@:overload(function(val:HslaColor):JQueryColor { })
	@:overload(function(vals:Array<Float>):JQueryColor { })
	function hsla():Array<Float>;
	function toRgbaString():String;
	function toHslaString():String;
	function toHexString(?includeAlpha:Bool):String;
	function transition(othercolor:JQueryColor, distance:Float):JQueryColor;
	function blend(othercolor:JQueryColor):Void;
	function is(otherColor:JQueryColor):Bool;
};
typedef HslaColor = {
	@:optional
	var hue : Float;
	@:optional
	var saturation : Float;
	@:optional
	var lightness : Float;
	@:optional
	var alpha : Float;
};
typedef RgbaColor = {
	@:optional
	var red : Float;
	@:optional
	var green : Float;
	@:optional
	var blue : Float;
	@:optional
	var alpha : Float;
};
typedef JQueryStatic = {
	@:overload(function(color:RgbaColor):JQueryColor { })
	@:overload(function(color:String):JQueryColor { })
	function Color(color:HslaColor):JQueryColor;
};
