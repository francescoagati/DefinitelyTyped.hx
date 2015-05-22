typedef PlotOptions = {
	@:optional
	var colors : Array<Dynamic>;
	@:optional
	var series : SeriesOptions;
	@:optional
	var legend : LegendOptions;
	@:optional
	var xaxis : AxisOptions;
	@:optional
	var yaxis : AxisOptions;
	@:optional
	var xaxes : Array<AxisOptions>;
	@:optional
	var yaxes : Array<AxisOptions>;
	@:optional
	var grid : GridOptions;
	@:optional
	var interaction : Interaction;
	@:optional
	var hooks : Hooks;
};
typedef Hooks = {
	var processOptions : Array<{ }>;
	var processRawData : Array<{ }>;
	var processDatapoints : Array<{ }>;
	var processOffset : Array<{ }>;
	var drawBackground : Array<{ }>;
	var drawSeries : Array<{ }>;
	var draw : Array<{ }>;
	var bindEvents : Array<{ }>;
	var drawOverlay : Array<{ }>;
	var shutdown : Array<{ }>;
};
typedef Interaction = {
	@:optional
	var redrawOverlayInterval : Float;
};
typedef GridOptions = {
	@:optional
	var show : Bool;
	@:optional
	var aboveData : Bool;
	@:optional
	var color : Dynamic;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var labelMargin : Float;
	@:optional
	var axisMargin : Float;
	@:optional
	var markings : Dynamic;
	@:optional
	var borderWidth : Dynamic;
	@:optional
	var borderColor : Dynamic;
	@:optional
	var minBorderMargin : Float;
	@:optional
	var clickable : Bool;
	@:optional
	var hoverable : Bool;
	@:optional
	var autoHighlight : Bool;
	@:optional
	var mouseActiveRadius : Float;
	@:optional
	var tickColor : Dynamic;
	@:optional
	var markingsColor : Dynamic;
	@:optional
	var markingsLineWidth : Float;
};
typedef LegendOptions = {
	@:optional
	var show : Bool;
	@:optional
	var labelFormatter : String -> Dynamic -> String;
	@:optional
	var labelBoxBorderColor : Dynamic;
	@:optional
	var noColumns : Float;
	@:optional
	var position : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var backgroundOpacity : Float;
	@:optional
	var container : JQuery;
	@:optional
	var sorted : Dynamic;
};
typedef SeriesOptions = {
	@:optional
	var color : Dynamic;
	@:optional
	var label : String;
	@:optional
	var lines : LinesOptions;
	@:optional
	var bars : BarsOptions;
	@:optional
	var points : PointsOptions;
	@:optional
	var xaxis : Float;
	@:optional
	var yaxis : Float;
	@:optional
	var clickable : Bool;
	@:optional
	var hoverable : Bool;
	@:optional
	var shadowSize : Float;
	@:optional
	var highlightColor : Dynamic;
};
typedef DataSeries = {
	>SeriesOptions,
	var data : Array<Dynamic>;
};
typedef AxisOptions = {
	@:optional
	var show : Bool;
	@:optional
	var position : String;
	@:optional
	var color : Dynamic;
	@:optional
	var tickColor : Dynamic;
	@:optional
	var font : Dynamic;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var autoscaleMargin : Float;
	@:optional
	var transform : Float -> Float;
	@:optional
	var inverseTransform : Float -> Float;
	@:optional
	var ticks : Dynamic;
	@:optional
	var tickSize : Dynamic;
	@:optional
	var minTickSize : Dynamic;
	@:optional
	var tickFormatter : Float -> ?Axis -> String;
	@:optional
	var tickDecimals : Float;
	@:optional
	var labelWidth : Float;
	@:optional
	var labelHeight : Float;
	@:optional
	var reserveSpace : Bool;
	@:optional
	var tickLength : Float;
	@:optional
	var alignTicksWithAxis : Float;
};
typedef SeriesTypeBase = {
	@:optional
	var show : Bool;
	@:optional
	var lineWidth : Float;
	@:optional
	var fill : Dynamic;
	@:optional
	var fillColor : Dynamic;
};
typedef LinesOptions = {
	>SeriesTypeBase,
	@:optional
	var steps : Bool;
};
typedef BarsOptions = {
	>SeriesTypeBase,
	@:optional
	var barWidth : Float;
	@:optional
	var align : String;
	@:optional
	var horizontal : Bool;
};
typedef PointsOptions = {
	>SeriesTypeBase,
	@:optional
	var radius : Float;
	@:optional
	var symbol : Dynamic;
};
typedef Gradient = {
	var colors : Array<Dynamic>;
};
typedef Item = {
	var datapoint : Array<Float>;
	var dataIndex : Float;
	var series : DataSeries;
	var seriesIndex : Float;
	var pageX : Float;
	var pageY : Float;
};
typedef Datapoints = {
	var points : Array<Float>;
	var pointsize : Float;
	var format : Array<DatapointFormat>;
};
typedef DatapointFormat = {
	@:optional
	var x : Bool;
	@:optional
	var y : Bool;
	var number : Bool;
	var required : Bool;
	@:optional
	var defaultValue : Float;
};
typedef Point = {
	var x : Float;
	var y : Float;
};
typedef Offset = {
	var left : Float;
	var top : Float;
};
typedef CanvasPoint = {
	var top : Float;
	var left : Float;
	@:optional
	var bottom : Float;
	@:optional
	var right : Float;
};
typedef Axes = {
	var xaxis : Axis;
	var yaxis : Axis;
	@:optional
	var x2axis : Axis;
	@:optional
	var y2axis : Axis;
};
typedef Axis = {
	>AxisOptions,
	var options : AxisOptions;
	function p2c(point:Point):CanvasPoint;
	function c2p(canvasPoint:CanvasPoint):Point;
};
typedef Plugin = {
	function init(options:PlotOptions):Dynamic;
	@:optional
	var options : Dynamic;
	@:optional
	var name : String;
	@:optional
	var version : String;
};
typedef Plot = {
	function highlight(series:DataSeries, datapoint:Item):Void;
	@:overload(function(series:DataSeries, datapoint:Item):Void { })
	function unhighlight():Void;
	function setData(data:Dynamic):Void;
	function setupGrid():Void;
	function draw():Void;
	function triggerRedrawOverlay():Void;
	function width():Float;
	function height():Float;
	function offset():JQueryCoordinates;
	function pointOffset(point:Point):Offset;
	function resize():Void;
	function shutdown():Void;
	function getData():Array<DataSeries>;
	function getAxes():Axes;
	function getXAxes():Array<Axis>;
	function getYAxes():Array<Axis>;
	function getPlaceholder():JQuery;
	function getCanvas():HTMLCanvasElement;
	function getPlotOffset():CanvasPoint;
	function getOptions():PlotOptions;
};
typedef PlotStatic = {
	var plugins : Array<Plugin>;
};
typedef JQueryStatic = {
	var plot : jquery.flot.PlotStatic;
};
