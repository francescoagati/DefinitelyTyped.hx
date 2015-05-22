typedef IGetSet<T, V> = { };
typedef IBiGetSet<T, R, V> = { };
typedef Accessor<T, V> = { };
typedef UnitFunction = { };
typedef FloatPointUnits = {
	function precision(precision:Float):UnitFunction;
};
typedef Units = {
	var integers : UnitFunction;
	var ordinal : UnitFunction;
	var fp : FloatPointUnits;
};
typedef Events = {
	function trigger(fn:Void -> Void, ?delay:Float):Void;
};
typedef Errors = {
	function Exception(msg:String):Void;
	function InvalidStateException(msg:String):Void;
};
typedef Filter = {
	function isFiltered(value:Dynamic):Bool;
};
typedef Filters = {
	function RangedFilter(low:Dynamic, high:Dynamic):Filter;
	function TwoDimensionalFilter(arr:Array<Dynamic>):Filter;
	function RangedTwoDimensionalFilter(arr:Array<Dynamic>):Filter;
};
typedef Logger = {
	var enableDebugLog : Bool;
	function warn(msg:String):Void;
	function debug(msg:String):Void;
	function deprecate(fn:haxe.Constraints.Function, msg:String):Void;
};
typedef Printers = {
	function filters(filters:Array<Dynamic>):String;
	function filter(filter:Dynamic):String;
};
typedef Round = {
	function floor(n:Float):Float;
	function ceil(n:Float):Float;
	function round(n:Float):Float;
};
typedef Utils = {
	function printSingleValue(filter:Dynamic):String;
	function add(l:Dynamic, r:Dynamic):Dynamic;
	function subtract(l:Dynamic, r:Dynamic):Dynamic;
	function isNumber(n:Dynamic):Bool;
	function isFloat(n:Dynamic):Bool;
	function isInteger(n:Dynamic):Bool;
	function isNegligible(n:Dynamic):Bool;
	function clamp(n:Float, min:Float, max:Float):Float;
	function uniqueId():Float;
	function nameToId(name:String):String;
	function appendOrSelect(parent:D3.Selection, selector:String, tag:Dynamic):D3.Selection;
	function safeNumber(n:Dynamic):Float;
};
typedef Legend = {
	var x : IGetSet<Float, Float>;
	var y : IGetSet<Float, Float>;
	var gap : IGetSet<Float, Float>;
	var itemHeight : IGetSet<Float, Float>;
	var horizontal : IGetSet<Bool, Bool>;
	var legendWidth : IGetSet<Float, Float>;
	var itemWidth : IGetSet<Float, Float>;
	var autoItemWidth : IGetSet<Bool, Bool>;
	var render : Void -> Void;
};
typedef BaseMixin<T> = {
	var width : IGetSet<Float, T>;
	var height : IGetSet<Float, T>;
	var minWidth : IGetSet<Float, T>;
	var minHeight : IGetSet<Float, T>;
	var dimension : IGetSet<Dynamic, T>;
	var data : IGetSet<Dynamic -> Array<Dynamic>, T>;
	var group : IGetSet<Dynamic, T>;
	var ordering : IGetSet<Accessor<Dynamic, Dynamic>, T>;
	function filterAll():Void;
	function select(selector:haxe.extern.EitherType<D3.Selection, String>):D3.Selection;
	function selectAll(selector:haxe.extern.EitherType<D3.Selection, String>):D3.Selection;
	function anchor(anchor:haxe.extern.EitherType<BaseMixin<Dynamic>, haxe.extern.EitherType<D3.Selection, String>>, ?chartGroup:String):D3.Selection;
	function anchorName():String;
	var svg : IGetSet<D3.Selection, D3.Selection>;
	function resetSvg():Void;
	var filterPrinter : IGetSet<Array<Dynamic> -> String, T>;
	function turnOnControls():Void;
	function turnOffControls():Void;
	var transitionDuration : IGetSet<Float, T>;
	function render():Void;
	function redraw():Void;
	function redrawGroup():Void;
	var hasFilterHandler : IGetSet<Array<Dynamic> -> Dynamic -> Bool, T>;
	function hasFilter(?filter:Dynamic):Bool;
	var removeFilterHandler : IGetSet<Array<Dynamic> -> Array<Dynamic>, T>;
	var addFilterHandler : IGetSet<Array<Dynamic> -> Array<Dynamic>, T>;
	var resetFilterHandler : IGetSet<Array<Dynamic> -> Array<Dynamic>, T>;
	var filter : IGetSet<Dynamic, T>;
	function filters():Array<Dynamic>;
	function onClick(datum:Dynamic):Void;
	var filterHandler : IGetSet<Dynamic -> Dynamic -> Dynamic, T>;
	var keyAccessor : IGetSet<Accessor<Dynamic, Dynamic>, T>;
	var valueAccessor : IGetSet<Accessor<Dynamic, Dynamic>, T>;
	var label : IGetSet<Accessor<Dynamic, String>, T>;
	var renderLabel : IGetSet<Bool, T>;
	var title : IGetSet<Accessor<Dynamic, String>, T>;
	var renderTitle : IGetSet<Bool, T>;
	var chartGroup : IGetSet<String, T>;
	function expireCache():T;
	var legend : IGetSet<Legend, T>;
	function options(optionsObject:Dynamic):T;
	function renderlet(fn:T -> Dynamic):T;
	function on(event:String, fn:T -> Dynamic):T;
};
typedef Margins = {
	var left : Float;
	var top : Float;
	var right : Float;
	var bottom : Float;
};
typedef MarginMixin<T> = {
	var margins : IGetSet<Margins, T>;
};
typedef ColorMixin<T> = {
	var colors : IGetSet<haxe.extern.EitherType<D3.Scale.GenericScale<Dynamic>, Array<String>>, T>;
	function ordinalColors(r:Array<String>):Void;
	function linearColors(r:Array<Float>):Void;
	var colorAccessor : IGetSet<Accessor<Dynamic, String>, T>;
	var colorDomain : IGetSet<Array<Dynamic>, T>;
	function calculateColorDomain():Void;
	function getColor(datum:Dynamic, ?index:Float):String;
	var colorCalculator : IGetSet<Accessor<Dynamic, String>, T>;
};
typedef CoordinateGridMixin<T> = {
	>BaseMixin<T>,
	>MarginMixin<T>,
	>BaseMixin<T>,
	var rangeChart : IGetSet<BaseMixin<Dynamic>, T>;
	var zoomScale : IGetSet<Array<Dynamic>, T>;
	var zoomOutRestrict : IGetSet<Bool, T>;
	var g : IGetSet<D3.Selection, T>;
	var mouseZoomable : IGetSet<Bool, T>;
	function chartBodyG():D3.Selection;
	var x : IGetSet<D3.Scale.GenericScale<Dynamic>, T>;
	var xUnits : IGetSet<UnitFunction, T>;
	var xAxis : IGetSet<D3.Svg.Axis, T>;
	var elasticX : IGetSet<Bool, T>;
	var xAxisPadding : IGetSet<Float, T>;
	function xUnitCount():Float;
	var useRightYAxis : IGetSet<Bool, T>;
	function isOrdinal():Bool;
	var xAxisLabel : IBiGetSet<String, Float, T>;
	var yAxisLabel : IBiGetSet<String, Float, T>;
	var y : IGetSet<D3.Scale.GenericQuantitativeScale<Dynamic>, T>;
	var yAxis : IGetSet<D3.Svg.Axis, T>;
	var elasticY : IGetSet<Bool, T>;
	var renderHorizontalGridLines : IGetSet<Bool, T>;
	var renderVerticalGridLines : IGetSet<Bool, T>;
	function xAxisMin():Dynamic;
	function xAxisMax():Dynamic;
	function yAxisMin():Dynamic;
	function yAxisMax():Dynamic;
	var yAxisPadding : IGetSet<Float, T>;
	var round : IGetSet<Dynamic -> Dynamic, T>;
	var clipPadding : IGetSet<Float, T>;
	function focus(?range:Array<Dynamic>):Void;
	var brushOn : IGetSet<Bool, T>;
};
typedef StackMixin<T> = {
	function stack(group:Dynamic, ?name:String, ?accessor:Accessor<Dynamic, Dynamic>):Void;
	var hidableStacks : IGetSet<Bool, T>;
	function hideStack(name:String):Void;
	function showStack(name:String):Void;
	var stackLayout : IGetSet<D3.Layout.StackLayout, T>;
};
typedef CapMixin<T> = {
	var cap : IGetSet<Float, T>;
	var othersLabel : IGetSet<String, T>;
	var othersGrouper : IGetSet<Array<Dynamic> -> Array<Dynamic>, T>;
};
typedef BubbleMixin<T> = {
	>ColorMixin<T>,
	var r : IGetSet<D3.Scale.GenericQuantitativeScale<Dynamic>, T>;
	var radiusValueAccessor : IGetSet<Accessor<Dynamic, Float>, T>;
	var minRadiusWithLabel : IGetSet<Float, T>;
	var maxBubbleRelativeSize : IGetSet<Float, T>;
};
typedef PieChart = {
	>CapMixin<PieChart>,
	>ColorMixin<PieChart>,
	>BaseMixin<PieChart>,
	var slicesCap : IGetSet<Float, PieChart>;
	var innerRadius : IGetSet<Float, PieChart>;
	var radius : IGetSet<Float, PieChart>;
	var cx : IGetSet<Float, PieChart>;
	var cy : IGetSet<Float, PieChart>;
	var minAngleForLabel : IGetSet<Float, PieChart>;
};
typedef BarChart = {
	>StackMixin<BarChart>,
	>CoordinateGridMixin<BarChart>,
	var centerBar : IGetSet<Bool, BarChart>;
	var barPadding : IGetSet<Float, BarChart>;
	var outerPadding : IGetSet<Float, BarChart>;
	var gap : IGetSet<Float, BarChart>;
	var alwaysUseRounding : IGetSet<Bool, BarChart>;
};
typedef RenderDataPointOptions = {
	var fillOpacity : Float;
	var strokeOpacity : Float;
	var radius : Float;
};
typedef LineChart = {
	>StackMixin<BarChart>,
	>CoordinateGridMixin<BarChart>,
	var interpolate : IGetSet<String, LineChart>;
	var tension : IGetSet<Float, LineChart>;
	var defined : IGetSet<Accessor<Dynamic, Bool>, LineChart>;
	var dashStyle : IGetSet<Array<Float>, LineChart>;
	var renderArea : IGetSet<Bool, LineChart>;
	var dotRadius : IGetSet<Float, LineChart>;
	var renderDataPoints : IGetSet<haxe.extern.EitherType<RenderDataPointOptions, Dynamic>, LineChart>;
};
typedef DataCountWidgetHTML = {
	var all : String;
	var some : String;
};
typedef DataCountWidget = {
	>BaseMixin<DataCountWidget>,
	var html : IGetSet<DataCountWidgetHTML, DataCountWidget>;
	var formatNumber : IGetSet<Accessor<Float, String>, DataCountWidget>;
};
typedef DataTableWidget = {
	>BaseMixin<DataTableWidget>,
	var size : IGetSet<Float, DataTableWidget>;
	var columns : IGetSet<Array<haxe.extern.EitherType<Accessor<Dynamic, Dynamic>, haxe.extern.EitherType<String, Array<haxe.extern.EitherType<Accessor<Dynamic, Dynamic>, String>>>>>, DataTableWidget>;
	var sortBy : IGetSet<Accessor<Dynamic, Dynamic>, DataTableWidget>;
	var order : IGetSet<Dynamic -> Dynamic -> Float, DataTableWidget>;
};
typedef DataGridWidget = {
	>BaseMixin<DataGridWidget>,
	var size : IGetSet<Float, DataTableWidget>;
	var html : IGetSet<Accessor<Dynamic, String>, DataTableWidget>;
	var htmlGroup : IGetSet<Accessor<Dynamic, String>, DataTableWidget>;
	var sortBy : IGetSet<Accessor<Dynamic, Dynamic>, DataTableWidget>;
	var order : IGetSet<Dynamic -> Dynamic -> Float, DataTableWidget>;
};
typedef BubbleChart = {
	>BubbleMixin<BubbleChart>,
	>CoordinateGridMixin<BubbleChart>,
	var elasticRadius : IGetSet<Bool, BubbleChart>;
};
typedef CompositeChart = {
	>CoordinateGridMixin<CompositeChart>,
	var useRightAxisGridLines : IGetSet<Bool, CompositeChart>;
	var childOptions : IGetSet<Dynamic, CompositeChart>;
	var rightYAxisLabel : IGetSet<String, CompositeChart>;
	var compose : IGetSet<Array<BaseMixin<Dynamic>>, CompositeChart>;
	function children():Array<BaseMixin<Dynamic>>;
	var shareColors : IGetSet<Bool, CompositeChart>;
	var shareTitle : IGetSet<Bool, CompositeChart>;
	var rightY : IGetSet<D3.Scale.GenericQuantitativeScale<Dynamic>, CompositeChart>;
	var rightYAxis : IGetSet<D3.Svg.Axis, CompositeChart>;
};
typedef SeriesChart = {
	>CompositeChart,
	var chart : IGetSet<Dynamic -> BaseMixin<Dynamic>, SeriesChart>;
	var seriesAccessor : IGetSet<Accessor<Dynamic, Dynamic>, SeriesChart>;
	var seriesSort : IGetSet<Dynamic -> Dynamic -> Float, SeriesChart>;
	var valueSort : IGetSet<Dynamic -> Dynamic -> Float, SeriesChart>;
};
typedef GeoChoroplethLayer = {
	var name : String;
	var keyAccessor : Accessor<Dynamic, Dynamic>;
	var data : Dynamic;
};
typedef GeoChoroplethChart = {
	>ColorMixin<GeoChoroplethChart>,
	>BaseMixin<GeoChoroplethChart>,
	function overlayGeoJson(json:Dynamic, name:String, keyAccessor:Accessor<Dynamic, Dynamic>):Void;
	var projection : IGetSet<D3.Geo.Projection, GeoChoroplethChart>;
	function geoJsons():Array<GeoChoroplethLayer>;
	function geoPath():D3.Geo.Path;
	function removeGeoJson(name:String):Void;
};
typedef BubbleOverlayChart = {
	>BubbleMixin<BubbleOverlayChart>,
	>BaseMixin<BubbleOverlayChart>,
	function point(name:String, x:Float, y:Float):Void;
};
typedef RowChart = {
	>CapMixin<RowChart>,
	>MarginMixin<RowChart>,
	>ColorMixin<RowChart>,
	>BaseMixin<RowChart>,
	var x : IGetSet<D3.Scale.GenericQuantitativeScale<Dynamic>, RowChart>;
	var renderTitleLabel : IGetSet<Bool, RowChart>;
	var xAxis : IGetSet<D3.Svg.Axis, RowChart>;
	var fixedBarHeight : IGetSet<Float, RowChart>;
	var gap : IGetSet<Float, RowChart>;
	var elasticX : IGetSet<Bool, RowChart>;
	var labelOffsetX : IGetSet<Float, RowChart>;
	var labelOffsetY : IGetSet<Float, RowChart>;
	var titleLabelOffsetX : IGetSet<Float, RowChart>;
};
typedef ScatterPlot = {
	>CoordinateGridMixin<ScatterPlot>,
	var existenceAccessor : IGetSet<Accessor<Dynamic, Bool>, ScatterPlot>;
	var symbol : IGetSet<D3.Svg.Symbol, ScatterPlot>;
	var symbolSize : IGetSet<Float, ScatterPlot>;
	var highlightedSize : IGetSet<Float, ScatterPlot>;
	var hiddenSize : IGetSet<Float, ScatterPlot>;
};
typedef NumberDisplayWidgetHTML = {
	var one : String;
	var some : String;
	var none : String;
};
typedef NumberDisplayWidget = {
	>BaseMixin<NumberDisplayWidget>,
	var html : IGetSet<NumberDisplayWidgetHTML, NumberDisplayWidget>;
	function value():String;
	var formatNumber : IGetSet<Accessor<Float, String>, NumberDisplayWidget>;
};
typedef HeatMap = {
	>ColorMixin<HeatMap>,
	>MarginMixin<HeatMap>,
	>BaseMixin<HeatMap>,
	var colsLabel : IGetSet<Accessor<Dynamic, String>, HeatMap>;
	var rowsLabel : IGetSet<Accessor<Dynamic, String>, HeatMap>;
	var rows : IGetSet<Array<Dynamic>, HeatMap>;
	var cols : IGetSet<Array<Dynamic>, HeatMap>;
	var boxOnClick : IGetSet<Dynamic -> Void, HeatMap>;
	var xAxisOnClick : IGetSet<Dynamic -> Void, HeatMap>;
	var yAxisOnClick : IGetSet<Dynamic -> Void, HeatMap>;
};
typedef BoxPlot = {
	>CoordinateGridMixin<BoxPlot>,
	var boxPadding : IGetSet<Float, BoxPlot>;
	var outerPadding : IGetSet<Float, BoxPlot>;
	var boxWidth : IGetSet<Float, BoxPlot>;
	var tickFormat : IGetSet<Accessor<Float, String>, BoxPlot>;
};
typedef ChartRegistry = {
	function has(chart:BaseMixin<Dynamic>):Bool;
	function register(chart:BaseMixin<Dynamic>, ?group:String):Void;
	function deregister(chart:BaseMixin<Dynamic>, ?group:String):Void;
	function clear(?group:String):Void;
	function list(?group:String):Array<BaseMixin<Dynamic>>;
};
typedef Base = {
	var chartRegistry : ChartRegistry;
	function registerChart(chart:BaseMixin<Dynamic>, ?group:String):Void;
	function deregisterChart(chart:BaseMixin<Dynamic>, ?group:String):Void;
	function hasChart(chart:BaseMixin<Dynamic>):Bool;
	function deregisterAllCharts(?group:String):Void;
	function filterAll(?group:String):Void;
	function refocusAll(?group:String):Void;
	function renderAll(?group:String):Void;
	function redrawAll(?group:String):Void;
	var disableTransitions : Bool;
	function transition(selections:D3.Selection, duration:Float, callback:D3.Selection -> Void):Void;
	var units : Units;
	var events : Events;
	var errors : Errors;
	function instanceOfChart(object:Dynamic):Bool;
	var logger : Logger;
	function override(object:Dynamic, fnName:String, newFn:haxe.Constraints.Function):Void;
	var printers : Printers;
	function pluck(n:String, ?f:Accessor<Dynamic, Dynamic>):Accessor<Dynamic, Dynamic>;
	var round : Round;
	var utils : Utils;
	function legend():Legend;
	function pieChart(parent:String, ?chartGroup:String):PieChart;
	function barChart(parent:String, ?chartGroup:String):BarChart;
	function lineChart(parent:String, ?chartGroup:String):LineChart;
	function dataCount(parent:String, ?chartGroup:String):DataCountWidget;
	function dataTable(parent:String, ?chartGroup:String):DataTableWidget;
	function dataGrid(parent:String, ?chartGroup:String):DataGridWidget;
	function bubbleChart(parent:String, ?chartGroup:String):BubbleChart;
	function compositeChart(parent:String, ?chartGroup:String):CompositeChart;
	function seriesChart(parent:String, ?chartGroup:String):SeriesChart;
	function geoChoroplethChart(parent:String, ?chartGroup:String):GeoChoroplethChart;
	function bubbleOverlayChart(parent:String, ?chartGroup:String):BubbleOverlayChart;
	function rowChart(parent:String, ?chartGroup:String):RowChart;
	function scatterPlot(parent:String, ?chartGroup:String):ScatterPlot;
	function numberDisplay(parent:String, ?chartGroup:String):NumberDisplayWidget;
	function heatMap(parent:String, ?chartGroup:String):HeatMap;
	function boxPlot(parent:String, ?chartGroup:String):BoxPlot;
};
