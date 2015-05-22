typedef DefaultMarkers = {
	var CIRCLE : String;
	var CROSS : String;
	var DIAMOND : String;
	var SQUARE : String;
	var TRIANGLE : String;
	var TRIANGLE_INVERTED : String;
	var X : String;
};
typedef DefaultTheme = {
	var axis : Dynamic;
	var chart : Dynamic;
	var indicator : Dynamic;
	var marker : Dynamic;
	var plotarea : Dynamic;
	var series : Dynamic;
};
extern class StoreSeries {
	function new(store:Dynamic, kwArgs:Dynamic, value:haxe.Constraints.Function):Void;
	function destroy():Void;
	function fetch():Void;
	function setSeriesObject(series:dojox.charting.Series):Void;
}
extern class Theme extends dojox.charting.SimpleTheme {
	function new(kwArgs:Dynamic):Void;
	var defaultColors : Array<Dynamic>;
	var defaultMarkers : Dynamic;
	var defaultTheme : Dynamic;
	var shapeSpaces : Dynamic;
	function addMarker(name:String, segment:String):Void;
	@:overload(function(theme:dojox.charting.SimpleTheme, elementType:String, mixin:Array<Dynamic>, doPost:Bool):Dynamic { })
	function addMixin(theme:dojox.charting.SimpleTheme, elementType:String, mixin:Dynamic, doPost:Bool):Dynamic;
	function clear():Void;
	function clone():Dynamic;
	function defineColors(kwArgs:Dynamic):Dynamic;
	function generateGradient(fillPattern:Dynamic, colorFrom:Dynamic, colorTo:Dynamic):Dynamic;
	function generateHslColor(color:Dynamic, luminance:Dynamic):Dynamic;
	function generateHslGradient(color:Dynamic, fillPattern:Dynamic, lumFrom:Dynamic, lumTo:Dynamic):Dynamic;
	function getTick(name:String, mixin:Dynamic):Dynamic;
	function inspectObjects(f:Dynamic):Void;
	function next(elementType:String, mixin:Dynamic, doPost:Bool):Dynamic;
	function post(theme:dojox.charting.SimpleTheme, elementType:String):Dynamic;
	function reverseFills():Void;
	function setMarkers(obj:Dynamic):Void;
	function skip():Void;
}
