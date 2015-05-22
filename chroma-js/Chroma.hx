typedef ChromaStatic = {
	function color(a:Float, b:Float, c:Float, ?colorSpace:String):Color;
	@:overload(function(color1:Color, color2:String):Float { })
	@:overload(function(color1:String, color2:Color):Float { })
	@:overload(function(color1:String, color2:String):Float { })
	function contrast(color1:Color, color2:Color):Float;
	function css(color:String):Color;
	function hex(color:String):Color;
	function rgb(red:Float, green:Float, blue:Float, ?alpha:Float):Color;
	function hsl(hue:Float, saturation:Float, lightness:Float, ?alpha:Float):Color;
	function hsv(hue:Float, saturation:Float, value:Float, ?alpha:Float):Color;
	function lab(lightness:Float, a:Float, b:Float, ?alpha:Float):Color;
	function lch(lightness:Float, chroma:Float, hue:Float, ?alpha:Float):Color;
	function gl(red:Float, green:Float, blue:Float, ?alpha:Float):Color;
	var interpolate : InterpolateFunction;
	var mix : InterpolateFunction;
	@:overload(function(color:String):Float { })
	function luminance(color:Color):Float;
	@:overload(function(?colors:Array<String>):Scale { })
	function scale(name:String):Scale;
	var scales : PredefinedScales;
};
typedef InterpolateFunction = {
	function bezier(colors:Array<Dynamic>):Float -> Color;
};
typedef PredefinedScales = {
	var cool : Scale;
	var hot : Scale;
};
typedef Color = {
	@:overload(function(a:Float, b:Float, c:Float, ?colorSpace:String):Color { })
	@:overload(function(a:Float, b:Float, c:Float, alpha:Float, ?colorSpace:String):Color { })
	@:overload(function(values:Array<Float>, colorSpace:String):Color { })
	function new(color:String):Color;
	function hex():String;
	function luminance():Float;
	function name():String;
	@:overload(function(alpha:Float):Color { })
	function alpha():Float;
	function css(?mode:String):String;
	@:overload(function(color:String, f:Float, ?mode:String):Color { })
	function interpolate(color:Color, f:Float, ?mode:String):Color;
	function premultiply():Color;
	function rgb():Array<Float>;
	function rgba():Array<Float>;
	function hsl():Array<Float>;
	function hsv():Array<Float>;
	function lab():Array<Float>;
	function lch():Array<Float>;
	function hsi():Array<Float>;
	function gl():Array<Float>;
	function darken(?amount:Float):Color;
	function darker(amount:Float):Color;
	function brighten(?amount:Float):Color;
	function brighter(amount:Float):Color;
	function saturate(?amount:Float):Color;
	function desaturate(?amount:Float):Color;
	function toString():String;
};
typedef Scale = {
	function colors(?mode:String):Array<Dynamic>;
	@:overload(function(enable:Bool):Scale { })
	function correctLightness():Bool;
	@:overload(function(domain:Array<Float>, ?classes:Float, ?mode:String):Scale { })
	function domain():Array<Float>;
	function mode(colorSpace:String):Scale;
	function out(mode:String):Scale;
	function range(colors:Array<String>):Scale;
};
