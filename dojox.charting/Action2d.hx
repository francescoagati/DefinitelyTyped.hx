extern class _IndicatorElement extends dojox.charting.plot2d.Indicator {
	function new(chart:Dynamic, kwArgs:Dynamic):Void;
	var baseParams : Dynamic;
	var chart : Dynamic;
	var defaultParams : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	var optionalParams : Dynamic;
	function addSeries(run:Dynamic):Void;
	function assignAxes(axes:Array<Dynamic>):Void;
	function calculateAxes(dim:Dynamic):Dynamic;
	function cleanGroup(creator:dojox.gfx.Surface):Dynamic;
	function clear():Void;
	@:overload(function(object:Dynamic, method:haxe.Constraints.Function):Dynamic { })
	function connect(object:Dynamic, method:String):Dynamic;
	function createLabel(group:Dynamic, value:Dynamic, bbox:Dynamic, theme:Dynamic):Void;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function events():Dynamic;
	function fireEvent(seriesName:String, eventName:String, index:Float, eventObject:Dynamic):Void;
	function getGroup():Dynamic;
	function getRequiredColors():Dynamic;
	function getSeriesStats():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function initializeScalers(dim:Dynamic, stats:Dynamic):Dynamic;
	function isDataDirty():Dynamic;
	function isDirty():Dynamic;
	function performZoom(dim:Dynamic, offsets:Dynamic):Dynamic;
	function plotEvent(o:Dynamic):Void;
	function purgeGroup():Void;
	function raiseEvent(o:Dynamic):Void;
	function render():Void;
	function renderLabel(group:Dynamic, x:Dynamic, y:Dynamic, label:Dynamic, theme:Dynamic, block:Dynamic, align:Dynamic):Dynamic;
	function resetEvents():Void;
	function setAxis(axis:dojox.charting.axis2d.Base):Dynamic;
	function stopTrack():Void;
	function toData(coord:Dynamic):Dynamic;
	function toPage(coord:Dynamic):Dynamic;
}
extern class Base extends dojo.Evented {
	function new(chart:dojox.charting.Chart, ?plot:String):Void;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
}
extern class ChartAction extends dojox.charting.action2d.Base {
	function new(chart:dojox.charting.Chart, ?plot:String):Void;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
}
extern class Highlight extends dojox.charting.action2d.PlotAction {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function process(o:dojox.gfx.shape.Shape):Void;
	function reset():Void;
}
extern class Magnify extends dojox.charting.action2d.PlotAction {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function process(o:dojox.gfx.shape.Shape):Void;
	function reset():Void;
}
extern class MouseIndicator extends dojox.charting.action2d.ChartAction {
	function new(chart:dojox.charting.Chart, plot:Dynamic, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function onChange(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
}
extern class MouseZoomAndPan extends dojox.charting.action2d.ChartAction {
	function new(chart:dojox.charting.Chart, plot:Dynamic, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function onDoubleClick(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onMouseWheel(event:Dynamic):Void;
}
extern class MoveSlice extends dojox.charting.action2d.PlotAction {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function process(o:dojox.gfx.shape.Shape):Void;
	function reset():Void;
}
extern class PlotAction extends dojox.charting.action2d.Base {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwargs:Dynamic):Void;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function reset():Void;
}
extern class Shake extends dojox.charting.action2d.PlotAction {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function process(o:dojox.gfx.shape.Shape):Void;
	function reset():Void;
}
extern class Tooltip extends dojox.charting.action2d.PlotAction {
	function new(chart:dojox.charting.Chart, ?plot:String, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	var overOutEvents : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function process(o:dojox.gfx.shape.Shape):Void;
	function reset():Void;
	function onClick():Void;
}
extern class TouchIndicator extends dojox.charting.action2d.ChartAction {
	function new(chart:dojox.charting.Chart, plot:Dynamic, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function onChange(event:Dynamic):Void;
	function onTouchEnd(event:Dynamic):Void;
	function onTouchMove(event:Dynamic):Void;
	function onTouchStart(event:Dynamic):Void;
}
extern class TouchZoomAndPan extends dojox.charting.action2d.ChartAction {
	function new(chart:dojox.charting.Chart, plot:Dynamic, ?kwArgs:Dynamic):Void;
	var defaultParams : Dynamic;
	var optionalParams : Dynamic;
	function connect():Void;
	function destroy():Void;
	function disconnect():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function onDoubleTap(event:Dynamic):Void;
	function onTouchEnd(event:Dynamic):Void;
	function onTouchMove(event:Dynamic):Void;
	function onTouchStart(event:Dynamic):Void;
}
extern class Tooltip {
	function new():Void;
}
extern class ZoomAndPan {
	function new():Void;
}
