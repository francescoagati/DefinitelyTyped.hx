extern class MeanColorModel extends dojox.color.NeutralColorModel {
	function new(startColor:dojo._base.Color, ?endColor:dojo._base.Color):Void;
	function computeNeutral(min:Float, max:Float, sum:Float, values:Array<Float>):Dynamic;
	function getColor(value:Float):Dynamic;
	function getNormalizedValue(value:Float):Dynamic;
	function initialize(items:Array<Dynamic>, colorFunc:haxe.Constraints.Function):Void;
}
extern class NeutralColorModel extends dojox.color.SimpleColorModel {
	function new(startColor:dojo._base.Color, ?endColor:dojo._base.Color):Void;
	function computeNeutral(min:Float, max:Float, sum:Float, values:Array<Float>):Void;
	function getColor(value:Float):Dynamic;
	function getNormalizedValue(value:Float):Dynamic;
	function initialize(items:Array<Dynamic>, colorFunc:haxe.Constraints.Function):Void;
}
extern class SimpleColorModel {
	function new(startColor:dojo._base.Color, ?endColor:dojo._base.Color):Void;
	function getColor(value:Float):Dynamic;
	function getNormalizedValue(value:Float):Void;
}
typedef Palette = { };
typedef Palette = { };
typedef Palette = { };
typedef Palette = { };
