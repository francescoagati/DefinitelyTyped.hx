typedef Tinycolor = {
	function fromRatio(ratio:Dynamic):TinycolorInstance;
	function readability(firstColor:TinycolorInstance, secondColor:TinycolorInstance):Readable.Readable;
	function isReadable(foreColor:TinycolorInstance, backColor:TinycolorInstance):Bool;
	function mostReadable(color:TinycolorInstance, colorsToCompare:Array<TinycolorInstance>):TinycolorInstance;
	function mix(color1:TinycolorInstance, color2:TinycolorInstance, ?amount:Float):TinycolorInstance;
	function random():TinycolorInstance;
	var hexNames : { };
	var names : { };
};
typedef TinycolorInstance = {
	function isValid():Bool;
	function isLight():Bool;
	function isDark():Bool;
	function getFormat():String;
	function getOriginalInput():Dynamic;
	function getAlpha():Float;
	function getBrightness():Float;
	function setAlpha(alpha:Float):TinycolorInstance;
	function toHsv():ColorFormats.HSVA;
	function toHsvString():String;
	function toHsl():ColorFormats.HSLA;
	function toHslString():String;
	function toHex():String;
	function toHexString():String;
	function toHex8():String;
	function toHex8String():String;
	function toRgb():ColorFormats.RGBA;
	function toRgbString():String;
	function toPercentageRgb():ColorFormats.RGBA;
	function toPercentageRgbString():String;
	function toName():String;
	function toFilter():String;
	function toString(?format:String):String;
	function lighten(?amount:Float):TinycolorInstance;
	function brighten(?amount:Float):TinycolorInstance;
	function darken(?amount:Float):TinycolorInstance;
	function desaturate(?amount:Float):TinycolorInstance;
	function saturate(?amount:Float):TinycolorInstance;
	function greyscale():TinycolorInstance;
	function spin(?amount:Float):TinycolorInstance;
	function analogous(?results:Float, ?slices:Float):Array<TinycolorInstance>;
	function monochromatic(?results:Float):Array<TinycolorInstance>;
	function splitcomplement():Array<TinycolorInstance>;
	function triad():Array<TinycolorInstance>;
	function tetrad():Array<TinycolorInstance>;
	function complement():TinycolorInstance;
};
extern class TinycolorTopLevel {
	static var tinycolor : Tinycolor;
}
