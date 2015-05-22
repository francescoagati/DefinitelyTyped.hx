extern class Base extends dojox.charting.Element {
	function new(chart:dojox.charting.Chart, ?kwArgs:Dynamic):Void;
	var chart : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	function calculate(min:Dynamic, max:Dynamic, span:Dynamic):Dynamic;
	function cleanGroup(creator:dojox.gfx.shape.Surface):Dynamic;
	function clear():Dynamic;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function getGroup():Dynamic;
	function getOffsets():Dynamic;
	function getScaler():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function getTicks():Dynamic;
	function initialized():Dynamic;
	function purgeGroup():Dynamic;
	function render(dim:Dynamic, offsets:Dynamic):Dynamic;
}
extern class Default extends dojox.charting.axis2d.Invisible {
	function new(chart:dojox.charting.Chart, ?kwArgs:Dynamic):Void;
	var chart : Dynamic;
	var defaultParams : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	var offset : Float;
	var opt : Dynamic;
	var optionalParams : Dynamic;
	var scale : Float;
	var scaler : Dynamic;
	var ticks : Dynamic;
	function calculate(min:Dynamic, max:Dynamic, span:Dynamic):haxe.Constraints.Function;
	function cleanGroup(creator:Dynamic):Void;
	function clear():Dynamic;
	function createLine(creator:Dynamic, params:Dynamic):Dynamic;
	function createText(labelType:Dynamic, creator:Dynamic, x:Dynamic, y:Dynamic, align:Dynamic, textContent:Dynamic, font:Dynamic, fontColor:Dynamic, labelWidth:Dynamic):Dynamic;
	function dependOnData():Bool;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function getGroup():Dynamic;
	function getOffsets():Dynamic;
	function getScaler():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function getTicks():Dynamic;
	function getWindowOffset():Float;
	function getWindowScale():Float;
	function initialized():Dynamic;
	function labelTooltip(elem:Dynamic, chart:Dynamic, label:Dynamic, truncatedLabel:Dynamic, font:Dynamic, elemType:Dynamic):Void;
	function purgeGroup():Dynamic;
	function render(dim:Dynamic, offsets:Dynamic):Dynamic;
	function setWindow(scale:Float, offset:Float):Dynamic;
}
extern class Invisible extends dojox.charting.axis2d.Base {
	function new(chart:dojox.charting.Chart, ?kwArgs:Dynamic):Void;
	var chart : Dynamic;
	var defaultParams : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	var optionalParams : Dynamic;
	function calculate(min:Float, max:Float, span:Float):Dynamic;
	function cleanGroup(creator:dojox.gfx.shape.Surface):Dynamic;
	function clear():Dynamic;
	function dependOnData():Bool;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function getGroup():Dynamic;
	function getOffsets():Dynamic;
	function getScaler():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function getTicks():Dynamic;
	function getWindowOffset():Float;
	function getWindowScale():Float;
	function initialized():Dynamic;
	function purgeGroup():Dynamic;
	function render(dim:Dynamic, offsets:Dynamic):Dynamic;
	function setWindow(scale:Float, offset:Float):Dynamic;
}
typedef Common = {
	var createText : Dynamic;
};
extern class Default {
	function new():Void;
	function labelTooltip(elem:Dynamic, chart:Dynamic, label:Dynamic, truncatedLabel:Dynamic, font:Dynamic, elemType:Dynamic):Void;
}
