typedef ITimeSeriesOptions = {
	@:optional
	var resetBounds : Bool;
	@:optional
	var resetBoundsInterval : Float;
};
typedef ITimeSeriesPresentationOptions = {
	@:optional
	var stokeStyle : String;
	@:optional
	var fillStyle : String;
	@:optional
	var lineWidth : Float;
};
extern class TimeSeries {
	function new(?options:ITimeSeriesOptions):Void;
	function clear():Void;
	function resetBounds():Void;
	function append(timestamp:Float, value:Float, ?sumRepeatedTimeStampValues:Bool):Void;
	function dropOldData(oldestValidTime:Float, maxDataSetLength:Float):Void;
}
typedef IGridOptions = {
	@:optional
	var fillStyle : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var stokeStyle : String;
	@:optional
	var millisPerLine : Float;
	@:optional
	var sharpLines : Bool;
	@:optional
	var verticalSections : Float;
	@:optional
	var borderVisible : Bool;
};
typedef ILabelOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var fillStyle : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontFamily : String;
	@:optional
	var precision : Float;
};
typedef IRange = {
	var min : Float;
	var max : Float;
};
typedef IHorizontalLine = {
	@:optional
	var value : Float;
	@:optional
	var color : String;
	@:optional
	var lineWidth : Float;
};
typedef IChartOptions = {
	@:optional
	var minValue : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var maxValueScale : Float;
	@:optional
	var yRangeFunction : IRange -> IRange;
	@:optional
	var scaleSmoothing : Float;
	@:optional
	var millisPerPixel : Float;
	@:optional
	var enableDpiScaling : Bool;
	@:optional
	var yMinFormatter : Float -> Float -> String;
	@:optional
	var yMaxFormatter : Float -> Float -> String;
	@:optional
	var maxDataSetLength : Float;
	@:optional
	var interpolation : String;
	@:optional
	var timestampFormatter : Date -> String;
	@:optional
	var horizontalLines : Array<IHorizontalLine>;
	@:optional
	var grid : IGridOptions;
	@:optional
	var labels : ILabelOptions;
};
extern class SmoothieChart {
	function new(?chartOptions:IChartOptions):Void;
	function addTimeSeries(series:TimeSeries, ?seriesOptions:ITimeSeriesPresentationOptions):Void;
	function removeTimeSeries(series:TimeSeries):Void;
	function getTimeSeriesOptions(timeSeries:TimeSeries):ITimeSeriesPresentationOptions;
	function bringToFront(timeSeries:TimeSeries):Void;
	function streamTo(canvas:HTMLCanvasElement, ?delayMillis:Float):Void;
	function start():Void;
	function stop():Void;
	function updateValueRange():Void;
	function render(?canvas:HTMLCanvasElement, ?time:Float):Void;
}
