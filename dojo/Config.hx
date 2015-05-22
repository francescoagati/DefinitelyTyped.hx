typedef ModulePaths = { };
extern class Color {
	function new(color:Array<Dynamic>):Void;
	var a : Float;
	var b : Float;
	var g : Float;
	var named : Dynamic;
	var r : Float;
	function blendColors(start:dojo._base.Color, end:dojo._base.Color, weight:Float, obj:dojo._base.Color):Dynamic;
	function fromArray(a:Array<Dynamic>, obj:dojo._base.Color):Dynamic;
	function fromHex(color:String, obj:dojo._base.Color):Dynamic;
	function fromRgb(color:String, obj:dojo._base.Color):Dynamic;
	function fromString(str:String, obj:dojo._base.Color):Dynamic;
	function makeGrey(g:Float, a:Float):Void;
	function sanitize():Void;
	@:overload(function(color:String):haxe.Constraints.Function { })
	@:overload(function(color:Dynamic):haxe.Constraints.Function { })
	function setColor(color:Array<Dynamic>):haxe.Constraints.Function;
	function toCmy():Dynamic;
	function toCmyk():Dynamic;
	function toCss(includeAlpha:Bool):String;
	function toHex():String;
	function toHsl():Dynamic;
	function toHsv():Dynamic;
	function toRgb():Array<Dynamic>;
	function toRgba():Array<Dynamic>;
	function toString():Dynamic;
}
