extern class Chart extends Component {
	@:overload(function(element:JQuery, ?options:viz.charts.ChartOptions):Void { })
	function new(element:Element, ?options:viz.charts.ChartOptions):Void;
	function clearSelection():Void;
	function getSeries():viz.charts.series.Series;
	function hidiTooltip():Void;
	@:overload(function():Void { })
	function render(options:viz.charts.RenderOptions):Void;
	function zoomArgument(minArg:Dynamic, maxArg:Dynamic):Void;
	function getSeriesByPos(seriesIndex:Float):viz.charts.series.Series;
	function getSeriesByName(seriesName:String):viz.charts.series.Series;
	function getAllSeries():Array<viz.charts.series.Series>;
	function instance():Chart;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
	function getSize():{ var width : Float; var height : Float; };
}
extern class PieChart extends Component {
	@:overload(function(element:JQuery, ?options:viz.charts.PieOptions):Void { })
	function new(element:Element, ?options:viz.charts.PieOptions):Void;
	function clearSelection():Void;
	function getSeries():viz.charts.series.PieSeries;
	function hidiTooltip():Void;
	@:overload(function():Void { })
	function render(options:viz.charts.RenderOptions):Void;
	function instance():PieChart;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
	function getSize():{ var width : Float; var height : Float; };
}
extern class RangeSelector extends Component {
	@:overload(function(element:JQuery, ?options:viz.rangeSelector.RangeSelectorOptions):Void { })
	function new(element:Element, ?options:viz.rangeSelector.RangeSelectorOptions):Void;
	var getSelectedRange : Void -> viz.rangeSelector.SelectedRange;
	var setSelectedRange : viz.rangeSelector.SelectedRange -> Void;
	function render():RangeSelector;
	function instance():RangeSelector;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
}
extern class CircularGauge extends Component {
	@:overload(function(element:JQuery, ?options:viz.gauges.CircularGaugeOptions):Void { })
	function new(element:Element, ?options:viz.gauges.CircularGaugeOptions):Void;
	@:overload(function(val:Float):CircularGauge { })
	function value():Float;
	@:overload(function(values:Array<Float>):CircularGauge { })
	function subvalues():Array<Float>;
	function render():CircularGauge;
	function instance():CircularGauge;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
}
extern class LinearGauge extends Component {
	@:overload(function(element:JQuery, ?options:viz.gauges.LinearGaugeOptions):Void { })
	function new(element:Element, ?options:viz.gauges.LinearGaugeOptions):Void;
	@:overload(function(val:Float):LinearGauge { })
	function value():Float;
	@:overload(function(values:Array<Float>):LinearGauge { })
	function subvalues():Array<Float>;
	function render():LinearGauge;
	function instance():LinearGauge;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
}
extern class BarGauge extends Component {
	@:overload(function(element:JQuery, ?options:viz.gauges.BarGaugeOptions):Void { })
	function new(element:Element, ?options:viz.gauges.BarGaugeOptions):Void;
	@:overload(function(vals:Array<Float>):BarGauge { })
	function values():Array<Float>;
	function render():BarGauge;
	function instance():BarGauge;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
}
extern class Sparkline extends Component {
	@:overload(function(element:JQuery, ?options:viz.sparklines.SparklineOptions):Void { })
	function new(element:Element, ?options:viz.sparklines.SparklineOptions):Void;
	function render():Sparkline;
	function instance():Sparkline;
	function svg():String;
}
extern class Bullet extends Component {
	@:overload(function(element:JQuery, ?options:viz.sparklines.BulletOptions):Void { })
	function new(element:Element, ?options:viz.sparklines.BulletOptions):Void;
	function render():Bullet;
	function instance():Bullet;
	function svg():String;
}
extern class Map extends Component {
	@:overload(function(element:JQuery, ?options:viz.map.VectorMapOptions):Void { })
	function new(element:Element, ?options:viz.map.VectorMapOptions):Void;
	function render():Map;
	function instance():Map;
	function getAreas():Array<viz.map.AreaProxy>;
	function getMarkers():Array<viz.map.MarkerProxy>;
	function clearAreaSelection():Map;
	function clearMarkerSelection():Map;
	function clearSelection():Map;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function svg():String;
	@:overload(function(center:Array<Float>):Map { })
	function center():Array<Float>;
	@:overload(function(zoomFactor:Float):Map { })
	function zoomFactor():Float;
	@:overload(function(viewport:Array<Float>):Map { })
	function viewport():Array<Float>;
	function convertCoordinates(x:Float, y:Float):Array<Float>;
}
