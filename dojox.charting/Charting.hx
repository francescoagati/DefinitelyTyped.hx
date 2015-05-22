extern class Chart {
	function new(node:HTMLElement, ?kwArgs:Dynamic):Void;
	function addAxis(name:String, kwArgs:Dynamic):Dynamic;
	function addPlot(name:String, kwArgs:Dynamic):Dynamic;
	@:overload(function(name:String, data:Dynamic, kwArgs:Dynamic):Dynamic { })
	function addSeries(name:String, data:Array<Dynamic>, kwArgs:Dynamic):Dynamic;
	function calculateGeometry():Dynamic;
	function connectToPlot(name:String, object:Dynamic, method:haxe.Constraints.Function):Dynamic;
	function delayedRender():Dynamic;
	function destroy():Void;
	function fireEvent(seriesName:String, eventName:String, index:Float):Dynamic;
	function formatTruncatedLabel(element:Dynamic, label:Dynamic, labelType:Dynamic):Void;
	function fullGeometry():Dynamic;
	function fullRender():Dynamic;
	function getAxis(name:String):Dynamic;
	function getCoords():Dynamic;
	function getGeometry():Dynamic;
	function getPlot(name:String):Dynamic;
	function getPlotOrder():Dynamic;
	function getSeries(name:String):Dynamic;
	function getSeriesOrder(plotName:String):Dynamic;
	function movePlotToBack(name:String):Dynamic;
	function movePlotToFront(name:String):Dynamic;
	function moveSeriesToBack(name:String):Dynamic;
	function moveSeriesToFront(name:String):Dynamic;
	function removeAxis(name:String):Dynamic;
	function removePlot(name:String):Dynamic;
	function removeSeries(name:String):Dynamic;
	function render():Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	@:overload(function(name:String, scale:Float, offset:Float, zoom:Dynamic):Dynamic { })
	function setAxisWindow(name:String, scale:Float, offset:Float, zoom:Bool):Dynamic;
	function setDir(dir:Dynamic):haxe.Constraints.Function;
	function setPlotOrder(newOrder:Array<Dynamic>):Dynamic;
	function setSeriesOrder(newOrder:Array<Dynamic>):Dynamic;
	function setTheme(theme:dojox.charting.SimpleTheme):Dynamic;
	@:overload(function(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Dynamic):Dynamic { })
	function setWindow(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Bool):Dynamic;
	@:overload(function(name:String, data:Dynamic, offsets:Bool):Dynamic { })
	function updateSeries(name:String, data:Array<Dynamic>, offsets:Bool):Dynamic;
	function zoomIn(name:String, range:Array<Dynamic>, delayed:Dynamic):Void;
}
extern class Chart2D {
	function new(node:HTMLElement, ?kwArgs:Dynamic):Void;
	function addAxis(name:String, kwArgs:Dynamic):Dynamic;
	function addPlot(name:String, kwArgs:Dynamic):Dynamic;
	@:overload(function(name:String, data:Dynamic, kwArgs:Dynamic):Dynamic { })
	function addSeries(name:String, data:Array<Dynamic>, kwArgs:Dynamic):Dynamic;
	function calculateGeometry():Dynamic;
	function connectToPlot(name:String, object:Dynamic, method:haxe.Constraints.Function):Dynamic;
	function delayedRender():Dynamic;
	function destroy():Void;
	function fireEvent(seriesName:String, eventName:String, index:Float):Dynamic;
	function formatTruncatedLabel(element:Dynamic, label:Dynamic, labelType:Dynamic):Void;
	function fullGeometry():Dynamic;
	function fullRender():Dynamic;
	function getAxis(name:String):Dynamic;
	function getCoords():Dynamic;
	function getGeometry():Dynamic;
	function getPlot(name:String):Dynamic;
	function getPlotOrder():Dynamic;
	function getSeries(name:String):Dynamic;
	function getSeriesOrder(plotName:String):Dynamic;
	function movePlotToBack(name:String):Dynamic;
	function movePlotToFront(name:String):Dynamic;
	function moveSeriesToBack(name:String):Dynamic;
	function moveSeriesToFront(name:String):Dynamic;
	function removeAxis(name:String):Dynamic;
	function removePlot(name:String):Dynamic;
	function removeSeries(name:String):Dynamic;
	function render():Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	@:overload(function(name:String, scale:Float, offset:Float, zoom:Dynamic):Dynamic { })
	function setAxisWindow(name:String, scale:Float, offset:Float, zoom:Bool):Dynamic;
	function setDir(dir:Dynamic):haxe.Constraints.Function;
	function setPlotOrder(newOrder:Array<Dynamic>):Dynamic;
	function setSeriesOrder(newOrder:Array<Dynamic>):Dynamic;
	function setTheme(theme:dojox.charting.SimpleTheme):Dynamic;
	@:overload(function(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Dynamic):Dynamic { })
	function setWindow(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Bool):Dynamic;
	@:overload(function(name:String, data:Dynamic, offsets:Bool):Dynamic { })
	function updateSeries(name:String, data:Array<Dynamic>, offsets:Bool):Dynamic;
	function zoomIn(name:String, range:Array<Dynamic>, delayed:Dynamic):Void;
}
extern class Chart3D {
	function new(node:Dynamic, lights:Dynamic, camera:Dynamic, theme:Dynamic):Void;
	function addPlot(plot:Dynamic):Dynamic;
	function addWall(wall:Dynamic):Dynamic;
	function generate():Dynamic;
	function invalidate():haxe.Constraints.Function;
	function removePlot(plot:Dynamic):Dynamic;
	function removeWall(wall:Dynamic):Dynamic;
	function render():haxe.Constraints.Function;
	function setDir(dir:String):haxe.Constraints.Function;
}
extern class DataChart extends dojox.charting.Chart2D {
	function new(node:HTMLElement, kwArgs:Dynamic):Void;
	var chartTheme : Dynamic;
	var comparative : Bool;
	var displayRange : Float;
	var fieldName : String;
	var label : String;
	var minHeight : Float;
	var minWidth : Float;
	var query : String;
	var queryOptions : String;
	var scroll : Bool;
	var showing : Bool;
	var stretchToFit : Bool;
	function addAxis(name:String, kwArgs:Dynamic):Dynamic;
	function addPlot(name:String, kwArgs:Dynamic):Dynamic;
	@:overload(function(name:String, data:Dynamic, kwArgs:Dynamic):Dynamic { })
	function addSeries(name:String, data:Array<Dynamic>, kwArgs:Dynamic):Dynamic;
	function calculateGeometry():Dynamic;
	function connectToPlot(name:String, object:Dynamic, method:haxe.Constraints.Function):Dynamic;
	function convertLabels(axis:Dynamic):Dynamic;
	function delayedRender():Dynamic;
	function destroy():Void;
	function fetch():Void;
	function fireEvent(seriesName:String, eventName:String, index:Float):Dynamic;
	function formatTruncatedLabel(element:Dynamic, label:Dynamic, labelType:Dynamic):Void;
	function fullGeometry():Dynamic;
	function fullRender():Dynamic;
	function getAxis(name:String):Dynamic;
	function getCoords():Dynamic;
	function getGeometry():Dynamic;
	function getPlot(name:String):Dynamic;
	function getPlotOrder():Dynamic;
	function getProperty(item:Dynamic, prop:Dynamic):Dynamic;
	function getSeries(name:String):Dynamic;
	function getSeriesOrder(plotName:String):Dynamic;
	function hide():Void;
	function movePlotToBack(name:String):Dynamic;
	function movePlotToFront(name:String):Dynamic;
	function moveSeriesToBack(name:String):Dynamic;
	function moveSeriesToFront(name:String):Dynamic;
	function removeAxis(name:String):Dynamic;
	function removePlot(name:String):Dynamic;
	function removeSeries(name:String):Dynamic;
	function render():Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	function resizeChart(dim:Dynamic):Void;
	function seriesLabels(val:Float):Dynamic;
	@:overload(function(name:String, scale:Float, offset:Float, zoom:Dynamic):Dynamic { })
	function setAxisWindow(name:String, scale:Float, offset:Float, zoom:Bool):Dynamic;
	function setDir(dir:Dynamic):haxe.Constraints.Function;
	function setPlotOrder(newOrder:Array<Dynamic>):Dynamic;
	function setSeriesOrder(newOrder:Array<Dynamic>):Dynamic;
	function setStore(store:Dynamic, query:String, fieldName:String, queryOptions:Dynamic):Void;
	function setTheme(theme:dojox.charting.SimpleTheme):Dynamic;
	@:overload(function(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Dynamic):Dynamic { })
	function setWindow(sx:Float, sy:Float, dx:Float, dy:Float, zoom:Bool):Dynamic;
	function show():Void;
	@:overload(function(name:String, data:Dynamic, offsets:Bool):Dynamic { })
	function updateSeries(name:String, data:Array<Dynamic>, offsets:Bool):Dynamic;
	function zoomIn(name:String, range:Array<Dynamic>, delayed:Dynamic):Void;
	function onData(items:Array<Dynamic>):Void;
	function onDataReceived(items:Array<Dynamic>):Void;
	function onError(err:Error):Void;
	function onSet(item:Dynamic):Void;
}
extern class DataSeries {
	function new(store:Dynamic, kwArgs:Dynamic, value:haxe.Constraints.Function):Void;
	function destroy():Void;
	function fetch():Void;
	function setSeriesObject(series:dojox.charting.Series):Void;
	function onFetchError(errorData:Dynamic, request:Dynamic):Void;
}
extern class Element {
	function new(chart:dojox.charting.Chart):Void;
	var chart : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	function cleanGroup(creator:dojox.gfx.shape.Surface):Dynamic;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function getGroup():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function purgeGroup():Dynamic;
}
extern class Series extends dojox.charting.Element {
	function new(chart:dojox.charting.Chart, data:Array<Dynamic>, ?kwArgs:Dynamic):Void;
	var chart : Dynamic;
	var dirty : Bool;
	var group : Dynamic;
	var htmlElement : Array<Dynamic>;
	var htmlElements : Dynamic;
	function cleanGroup(creator:dojox.gfx.shape.Surface):Dynamic;
	function clear():Void;
	function destroy():Void;
	function destroyHtmlElements():Void;
	function getGroup():Dynamic;
	function getTextWidth(s:Dynamic, font:Dynamic):Float;
	function getTextWithLimitCharCount(s:String, font:String, wcLimit:Float, truncated:Bool):Dynamic;
	function getTextWithLimitLength(s:String, font:String, limitWidth:Float, truncated:Bool):Dynamic;
	function purgeGroup():Dynamic;
	@:overload(function(data:Dynamic):Void { })
	function update(data:Array<Dynamic>):Void;
}
extern class SimpleTheme {
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
	function getTick(name:String, mixin:Dynamic):Dynamic;
	function inspectObjects(f:Dynamic):Void;
	function next(elementType:String, mixin:Dynamic, doPost:Bool):Dynamic;
	function post(theme:dojox.charting.SimpleTheme, elementType:String):Dynamic;
	function reverseFills():Void;
	function setMarkers(obj:Dynamic):Void;
	function skip():Void;
}
