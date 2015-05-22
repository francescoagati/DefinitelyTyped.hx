typedef Z_BasePointStyle = {
	@:optional
	var color : String;
	@:optional
	var border : { @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var color : String; };
	@:optional
	var size : Float;
};
typedef BasePointOptions = {
	>Z_BasePointStyle,
	@:optional
	var hoverMode : String;
	@:optional
	var selectionMode : String;
	@:optional
	var visible : Bool;
	@:optional
	var symbol : String;
	@:optional
	var image : Dynamic;
	@:optional
	var hoverStyle : Z_BasePointStyle;
	@:optional
	var selectionStyle : Z_BasePointStyle;
};
typedef Z_BaseSeriesOptions = {
	@:optional
	var argumentField : String;
	@:optional
	var hoverMode : String;
	@:optional
	var maxLabelCount : Float;
	@:optional
	var label : Z_BaseLabelOptions;
	@:optional
	var selectionMode : String;
	@:optional
	var showInLegend : Bool;
	@:optional
	var tagField : String;
	@:optional
	var visible : Bool;
};
typedef Z_BaseLabelOptions = {
	@:optional
	var visible : Bool;
	@:optional
	var alignment : String;
	@:optional
	var rotationAngle : Float;
	@:optional
	var format : String;
	@:optional
	var precision : Float;
	@:optional
	var argumentFormat : String;
	@:optional
	var argumentPrecision : Float;
	@:optional
	var precission : Float;
	@:optional
	var percentPrecision : Float;
	@:optional
	var font : viz.common.FontOptions;
	@:optional
	var backgroundColor : String;
	@:optional
	var border : { @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var color : String; @:optional
	var dashStyle : String; };
	@:optional
	var connector : { @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var color : String; };
};
typedef Z_BaseChartSeriesLabelOptions = {
	>Z_BaseLabelOptions,
	@:optional
	var horizontalOffset : Float;
	@:optional
	var verticalOffset : Float;
	@:optional
	var customizeText : { var originalValue : Dynamic; var value : Dynamic; var valueText : String; var originalArgument : Dynamic; var argument : Dynamic; var argumentText : String; var seriesName : String; } -> String;
};
typedef Z_BaseSeriesStyle = {
	@:optional
	var color : String;
};
typedef ScatterSeriesOptions = {
	>Z_BaseSeriesOptions,
	>Z_BaseSeriesStyle,
	@:optional
	var selectionStyle : Z_BaseSeriesStyle;
	@:optional
	var hoverStyle : Z_BaseSeriesStyle;
	@:optional
	var valueField : String;
	@:optional
	var point : BasePointOptions;
	@:optional
	var axis : String;
	@:optional
	var pane : String;
};
typedef LineSeriesStyle = {
	>Z_BaseSeriesStyle,
	@:optional
	var dashStyle : String;
	@:optional
	var width : Float;
};
typedef LineSeriesOptions = {
	>LineSeriesStyle,
	>Z_BaseSeriesOptions,
	@:optional
	var selectionStyle : LineSeriesStyle;
	@:optional
	var hoverStyle : LineSeriesStyle;
	@:optional
	var valueField : String;
	@:optional
	var point : BasePointOptions;
	@:optional
	var pane : String;
};
typedef AreaSeriesStyle = {
	>Z_BaseSeriesStyle,
	@:optional
	var hatching : { @:optional
	var direction : String; @:optional
	var width : Float; @:optional
	var step : Float; @:optional
	var opacity : Float; };
	@:optional
	var border : { @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var color : String; @:optional
	var dashStyle : String; };
};
typedef AreaSeriesOptions = {
	>AreaSeriesStyle,
	>Z_BaseSeriesOptions,
	@:optional
	var selectionStyle : AreaSeriesStyle;
	@:optional
	var hoverStyle : AreaSeriesStyle;
	@:optional
	var valueField : String;
	@:optional
	var point : BasePointOptions;
	@:optional
	var pane : String;
	@:optional
	var axis : String;
};
typedef BarSeriesLabel = {
	>Z_BaseChartSeriesLabelOptions,
	@:optional
	var position : String;
	@:optional
	var showForZeroValues : Bool;
};
typedef BarSeriesStyle = {
	>AreaSeriesStyle,
};
typedef Z_BaseBarSeriesOptions = {
	>Z_BaseSeriesOptions,
	>BarSeriesStyle,
	@:optional
	var minBarSize : Float;
	@:optional
	var cornerRadius : Float;
	@:optional
	var label : BarSeriesLabel;
	@:optional
	var selectionStyle : BarSeriesStyle;
	@:optional
	var hoverStyle : BarSeriesStyle;
	@:optional
	var pane : String;
	@:optional
	var axis : String;
};
typedef BarSeriesOptions = {
	>Z_BaseBarSeriesOptions,
	@:optional
	var valueField : String;
};
typedef OHLCSeriesStyle = {
	>Z_BaseSeriesStyle,
	@:optional
	var width : Float;
};
typedef Z_BaseOHLCSeries = {
	>Z_BaseSeriesOptions,
	@:optional
	var openValueField : String;
	@:optional
	var highValueField : String;
	@:optional
	var lowValueField : String;
	@:optional
	var closeValueField : String;
	@:optional
	var reduction : { @:optional
	var color : String; @:optional
	var level : String; };
	@:optional
	var pane : String;
	@:optional
	var axis : String;
};
typedef CandleStickSeriesOptions = {
	>Z_BaseOHLCSeries,
	>OHLCSeriesStyle,
	@:optional
	var innerColor : String;
	@:optional
	var selectionStyle : OHLCSeriesStyle;
	@:optional
	var hoverStyle : OHLCSeriesStyle;
};
typedef StockSeriesOptions = {
	>Z_BaseOHLCSeries,
	>OHLCSeriesStyle,
	@:optional
	var selectionStyle : OHLCSeriesStyle;
	@:optional
	var hoverStyle : OHLCSeriesStyle;
};
typedef FullStackedAreaSeriesOptions = {
	>Z_BaseSeriesOptions,
	>AreaSeriesOptions,
	@:optional
	var valueField : String;
	@:optional
	var selectionStyle : AreaSeriesStyle;
	@:optional
	var hoverStyle : AreaSeriesStyle;
	@:optional
	var point : BasePointOptions;
};
typedef FullStackedBarSeriesOptions = {
	>BarSeriesOptions,
	@:optional
	var stack : String;
};
typedef FullStackedLineSeriesOptions = {
	>LineSeriesOptions,
	@:optional
	var point : BasePointOptions;
};
typedef Z_BaseRangeSeriesOptions = {
	>Z_BaseSeriesOptions,
	@:optional
	var rangeValue1Field : String;
	@:optional
	var rangeValue2Field : String;
	@:optional
	var pane : String;
	@:optional
	var axis : String;
};
typedef RangeAreaSeriesOptions = {
	>Z_BaseSeriesOptions,
	>AreaSeriesStyle,
	@:optional
	var selectionStyle : AreaSeriesStyle;
	@:optional
	var hoverStyle : AreaSeriesStyle;
	@:optional
	var point : BasePointOptions;
};
typedef RangeBarSeriesOptions = {
	>Z_BaseBarSeriesOptions,
	@:optional
	var rangeValue1Field : String;
	@:optional
	var rangeValue2Field : String;
	@:optional
	var pane : String;
	@:optional
	var axis : String;
};
typedef SplineSeriesOptions = {
	>LineSeriesOptions,
};
typedef SplineAreaSeries = {
	>AreaSeriesOptions,
};
typedef StackedLineSeries = {
	>LineSeriesOptions,
};
typedef StackedAreaSeries = {
	>AreaSeriesOptions,
};
typedef StackedBasrSeriesOptions = {
	>BarSeriesOptions,
	@:optional
	var stack : String;
};
typedef BubbleSeriesStyle = {
	>AreaSeriesStyle,
};
typedef BubbleSeriesOptions = {
	>Z_BaseBarSeriesOptions,
	>BubbleSeriesStyle,
	@:optional
	var selectionStyle : LineSeriesStyle;
	@:optional
	var hoverStyle : LineSeriesStyle;
	@:optional
	var valueField : String;
	@:optional
	var pane : String;
	@:optional
	var sizeField : String;
};
typedef StepLineSeries = {
	>LineSeriesOptions,
};
typedef StepAreaSeries = {
	>AreaSeriesOptions,
};
typedef PieSeriesStyle = {
	>AreaSeriesStyle,
};
typedef PieSeriesLabelOptions = {
	>Z_BaseLabelOptions,
	var customizeText : { var value : Dynamic; var valueText : String; var originalValue : Dynamic; var argument : Dynamic; var argumentText : String; var originalArgument : Dynamic; var percent : Dynamic; var percentText : String; var seriesName : String; } -> String;
	@:optional
	var radialOffset : Float;
};
typedef PieSeriesOptions = {
	>Z_BaseSeriesOptions,
	>PieSeriesStyle,
	@:optional
	var valueField : String;
	@:optional
	var minSegmentSize : String;
	@:optional
	var selectionStyle : PieSeriesStyle;
	@:optional
	var hoverStyle : PieSeriesStyle;
	@:optional
	var segmentsDirection : String;
	@:optional
	var startAngle : Float;
	@:optional
	var type : String;
	@:optional
	var label : PieSeriesLabelOptions;
	@:optional
	var smallValuesGrouping : ValuesGrouping;
};
typedef ValuesGrouping = {
	@:optional
	var mode : String;
	@:optional
	var topCount : Float;
	@:optional
	var threshold : Float;
	@:optional
	var groupName : String;
};
typedef AllSeriesStyleOptions = {
	>Z_BaseSeriesStyle,
	>AreaSeriesStyle,
	>LineSeriesStyle,
};
typedef Z_AllLabelsOptions = {
	>Z_BaseChartSeriesLabelOptions,
	>BarSeriesLabel,
};
typedef CommonSeriesOptions = {
	>Z_BaseSeriesOptions,
	>Z_BaseBarSeriesOptions,
	>Z_BaseRangeSeriesOptions,
	>Z_BaseOHLCSeries,
	>AllSeriesStyleOptions,
	>BubbleSeriesOptions,
	@:optional
	var selectionStyle : AllSeriesStyleOptions;
	@:optional
	var hoverStyle : AllSeriesStyleOptions;
	@:optional
	var label : Z_AllLabelsOptions;
	@:optional
	var valueField : String;
};
typedef SeriesOptions = {
	>CommonSeriesOptions,
	@:optional
	var tag : Dynamic;
	@:optional
	var name : String;
	@:optional
	var type : String;
};
typedef CommonSeriesSettings = {
	>CommonSeriesOptions,
	@:optional
	var area : AreaSeriesOptions;
	@:optional
	var bar : BarSeriesOptions;
	@:optional
	var candlestick : CandleStickSeriesOptions;
	@:optional
	var fullstackedarea : FullStackedAreaSeriesOptions;
	@:optional
	var fullstackedbar : FullStackedBarSeriesOptions;
	@:optional
	var fullstackedline : FullStackedLineSeriesOptions;
	@:optional
	var line : LineSeriesOptions;
	@:optional
	var rangearea : RangeAreaSeriesOptions;
	@:optional
	var rangebar : RangeBarSeriesOptions;
	@:optional
	var scatter : ScatterSeriesOptions;
	@:optional
	var spline : SplineSeriesOptions;
	@:optional
	var splinearea : SplineAreaSeries;
	@:optional
	var stackedarea : StackedAreaSeries;
	@:optional
	var stackedbar : StackedBasrSeriesOptions;
	@:optional
	var stackedline : StackedLineSeries;
	@:optional
	var steparea : StepAreaSeries;
	@:optional
	var stepline : StepLineSeries;
	@:optional
	var stock : StockSeriesOptions;
	@:optional
	var bubble : BubbleSeriesOptions;
};
extern class Z_BasePoint {
	var fullState : Float;
	var originalArgument : Dynamic;
	var originalValue : Dynamic;
	var tag : Dynamic;
	function clearSelection():Void;
	function select():Void;
	function hideTootip():Void;
	function isSelected():Bool;
	function isHovered():Bool;
	function getColor():String;
}
extern class Point extends Z_BasePoint {
	var series : Series;
}
extern class PiePoint extends Z_BasePoint {
	var percent : Dynamic;
	var series : PieSeries;
	function isVisible():Bool;
	function hide():Void;
	function show():Void;
}
extern class Series {
	var axis : String;
	var fullState : Float;
	var name : String;
	var pane : String;
	var tag : Dynamic;
	var type : String;
	function clearSelection():Void;
	function deselectPoint(point:Point):Void;
	function getAllPoints():Array<Point>;
	function getPointByArg(pointArg:Dynamic):Point;
	function getPointByPos(positionIndex:Float):Point;
	function select():Void;
	function selectPoint(point:Point):Void;
	function isSelected():Bool;
	function isHovered():Bool;
	function isVisible():Bool;
	function show():Void;
	function hode():Void;
}
extern class PieSeries {
	var fullState : Float;
	var type : String;
	function clearSelection():Void;
	function deselectPoint(point:PiePoint):Void;
	function getAllPoints():Array<PiePoint>;
	function getPointByArg(pointArg:Dynamic):PiePoint;
	function getPointByPos(positionIndex:Float):PiePoint;
	function select():Void;
	function selectPoint(point:PiePoint):Void;
	function isSelected():Bool;
	function isHovered():Bool;
}
