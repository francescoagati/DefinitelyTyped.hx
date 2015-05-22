typedef BaseSeries = {
	var fullState : Float;
	var type : String;
	function clearSelection():Void;
	function getPointByArg(pointArg:Dynamic):Dynamic;
	function getPointByPos(positionIndex:Float):Dynamic;
	function select():Void;
	function selectPoint(point:BasePoint):Void;
	function deselectPoint(point:BasePoint):Void;
	function getAllPoints():Array<BasePoint>;
	function getVisiblePoints():Array<BasePoint>;
};
typedef BasePoint = {
	var fullState : Float;
	var originalArgument : Dynamic;
	var originalValue : Dynamic;
	var tag : String;
	function clearSelection():Void;
	function getColor():String;
	function hideTooltip():Void;
	function isHovered():Dynamic;
	function isSelected():Dynamic;
	function select():Void;
	function showTooltip():Void;
	function getLabel():Dynamic;
	var series : BaseSeries;
};
typedef ChartSeries = {
	>BaseSeries,
	var pane : String;
	var axis : String;
	var name : String;
	var tag : String;
	function hide():Void;
	function isHovered():Dynamic;
	function isSelected():Dynamic;
	function isVisible():Bool;
	function show():Void;
	function selectPoint(point:ChartPoint):Void;
	function deselectPoint(point:ChartPoint):Void;
	function getAllPoints():Array<ChartPoint>;
	function getVisiblePoints():Array<ChartPoint>;
};
typedef ChartPoint = {
	>BasePoint,
	var originalCloseValue : Dynamic;
	var originalHighValue : Dynamic;
	var originalLowValue : Dynamic;
	var originalMinValue : Dynamic;
	var originalOpenValue : Dynamic;
	var size : Dynamic;
	function getBoundingRect():{ var x : Float; var y : Float; var width : Float; var height : Float; };
	var series : ChartSeries;
};
typedef Label = {
	function getBoundingRect():{ var x : Float; var y : Float; var width : Float; var height : Float; };
	function hide():Void;
	function show():Void;
};
typedef PieSeries = {
	>BaseSeries,
	function selectPoint(point:PiePoint):Void;
	function deselectPoint(point:PiePoint):Void;
	function getAllPoints():Array<PiePoint>;
	function getVisiblePoints():Array<PiePoint>;
};
typedef PiePoint = {
	>BasePoint,
	var percent : Dynamic;
	function isVisible():Bool;
	function show():Void;
	function hide():Void;
	var series : PieSeries;
};
typedef PolarSeries = {
	>BaseSeries,
	var axis : String;
	var name : String;
	var tag : String;
	function hide():Void;
	function isHovered():Dynamic;
	function isSelected():Dynamic;
	function isVisible():Bool;
	function show():Void;
	function selectPoint(point:PolarPoint):Void;
	function deselectPoint(point:PolarPoint):Void;
	function getAllPoints():Array<PolarPoint>;
	function getVisiblePoints():Array<PolarPoint>;
};
typedef PolarPoint = {
	>BasePoint,
	function getBoundingRect():Dynamic;
	var series : PolarSeries;
};
typedef Strip = {
	@:optional
	var color : String;
	@:optional
	var label : { @:optional
	var text : String; };
	@:optional
	var startValue : Dynamic;
	@:optional
	var endValue : Dynamic;
};
typedef BaseSeriesConfigLabel = {
	@:optional
	var argumentFormat : String;
	@:optional
	var argumentPrecision : Float;
	@:optional
	var backgroundColor : String;
	@:optional
	var border : viz.core.DashedBorder;
	@:optional
	var connector : { @:optional
	var color : String; @:optional
	var visible : Bool; @:optional
	var width : Float; };
	@:optional
	var customizeText : Dynamic -> String;
	@:optional
	var font : viz.core.Font;
	@:optional
	var format : String;
	@:optional
	var position : String;
	@:optional
	var precision : Float;
	@:optional
	var rotationAngle : Float;
	@:optional
	var visible : Bool;
};
typedef SeriesConfigLabel = {
	>BaseSeriesConfigLabel,
	@:optional
	var showForZeroValues : Bool;
};
typedef ChartSeriesConfigLabel = {
	>SeriesConfigLabel,
	@:optional
	var alignment : String;
	@:optional
	var horizontalOffset : Float;
	@:optional
	var verticalOffset : Float;
	@:optional
	var percentPrecision : Float;
};
typedef BaseCommonSeriesConfig = {
	@:optional
	var argumentField : String;
	@:optional
	var axis : String;
	@:optional
	var label : ChartSeriesConfigLabel;
	@:optional
	var border : viz.core.DashedBorder;
	@:optional
	var color : String;
	@:optional
	var dashStyle : String;
	@:optional
	var hoverMode : String;
	@:optional
	var hoverStyle : { @:optional
	var border : viz.core.DashedBorder; @:optional
	var color : String; @:optional
	var dashStyle : String; @:optional
	var hatching : viz.core.Hatching; @:optional
	var width : Float; };
	@:optional
	var ignoreEmptyPoints : Bool;
	@:optional
	var maxLabelCount : Float;
	@:optional
	var minBarSize : Float;
	@:optional
	var opacity : Float;
	@:optional
	var selectionMode : String;
	@:optional
	var selectionStyle : { @:optional
	var border : viz.core.DashedBorder; @:optional
	var color : String; @:optional
	var dashStyle : String; @:optional
	var hatching : viz.core.Hatching; @:optional
	var width : Float; };
	@:optional
	var showInLegend : Bool;
	@:optional
	var stack : String;
	@:optional
	var tagField : String;
	@:optional
	var valueField : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var valueErrorBar : { @:optional
	var displayMode : String; @:optional
	var lowValueField : String; @:optional
	var highValueField : String; @:optional
	var type : String; @:optional
	var value : Float; @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var edgeLength : Float; @:optional
	var lineWidth : Float; };
};
typedef CommonPointOptions = {
	@:optional
	var border : viz.core.Border;
	@:optional
	var color : String;
	@:optional
	var hoverMode : String;
	@:optional
	var hoverStyle : { @:optional
	var border : viz.core.Border; @:optional
	var color : String; @:optional
	var size : Float; };
	@:optional
	var selectionMode : String;
	@:optional
	var selectionStyle : { @:optional
	var border : viz.core.Border; @:optional
	var color : String; @:optional
	var size : Float; };
	@:optional
	var size : Float;
	@:optional
	var symbol : String;
	@:optional
	var visible : Bool;
};
typedef ChartCommonPointOptions = {
	>CommonPointOptions,
	@:optional
	var image : { @:optional
	var height : Dynamic; @:optional
	var url : Dynamic; @:optional
	var width : Dynamic; };
};
typedef PolarCommonPointOptions = {
	>CommonPointOptions,
	@:optional
	var image : { @:optional
	var height : Float; @:optional
	var url : String; @:optional
	var width : Float; };
};
typedef CommonSeriesConfig = {
	>BaseCommonSeriesConfig,
	@:optional
	var closeValueField : String;
	@:optional
	var cornerRadius : Float;
	@:optional
	var highValueField : String;
	@:optional
	var innerColor : String;
	@:optional
	var lowValueField : String;
	@:optional
	var openValueField : String;
	@:optional
	var pane : String;
	@:optional
	var point : ChartCommonPointOptions;
	@:optional
	var rangeValue1Field : String;
	@:optional
	var rangeValue2Field : String;
	@:optional
	var reduction : { @:optional
	var color : String; @:optional
	var level : String; };
	@:optional
	var sizeField : String;
};
typedef CommonSeriesSettings = {
	>CommonSeriesConfig,
	@:optional
	var area : CommonSeriesConfig;
	@:optional
	var bar : CommonSeriesConfig;
	@:optional
	var bubble : CommonSeriesConfig;
	@:optional
	var candlestick : CommonSeriesConfig;
	@:optional
	var fullstackedarea : CommonSeriesConfig;
	@:optional
	var fullstackedsplinearea : CommonSeriesConfig;
	@:optional
	var fullstackedbar : CommonSeriesConfig;
	@:optional
	var fullstackedline : CommonSeriesConfig;
	@:optional
	var fullstackedspline : CommonSeriesConfig;
	@:optional
	var line : CommonSeriesConfig;
	@:optional
	var rangearea : CommonSeriesConfig;
	@:optional
	var rangebar : CommonSeriesConfig;
	@:optional
	var scatter : CommonSeriesConfig;
	@:optional
	var spline : CommonSeriesConfig;
	@:optional
	var splinearea : CommonSeriesConfig;
	@:optional
	var stackedarea : CommonSeriesConfig;
	@:optional
	var stackedsplinearea : CommonSeriesConfig;
	@:optional
	var stackedbar : CommonSeriesConfig;
	@:optional
	var stackedline : CommonSeriesConfig;
	@:optional
	var stackedspline : CommonSeriesConfig;
	@:optional
	var steparea : CommonSeriesConfig;
	@:optional
	var stepline : CommonSeriesConfig;
	@:optional
	var stock : CommonSeriesConfig;
	@:optional
	var type : String;
};
typedef SeriesConfig = {
	>CommonSeriesConfig,
	@:optional
	var name : String;
	@:optional
	var tag : Dynamic;
	@:optional
	var type : String;
};
typedef CommonPolarSeriesConfig = {
	>BaseCommonSeriesConfig,
	@:optional
	var closed : Bool;
	@:optional
	var label : SeriesConfigLabel;
	@:optional
	var point : PolarCommonPointOptions;
};
typedef CommonPolarSeriesSettings = {
	>CommonPolarSeriesConfig,
	@:optional
	var area : CommonPolarSeriesConfig;
	@:optional
	var bar : CommonPolarSeriesConfig;
	@:optional
	var line : CommonPolarSeriesConfig;
	@:optional
	var scatter : CommonPolarSeriesConfig;
	@:optional
	var stackedbar : CommonPolarSeriesConfig;
	@:optional
	var type : String;
};
typedef PolarSeriesConfig = {
	>CommonPolarSeriesConfig,
	@:optional
	var name : String;
	@:optional
	var tag : Dynamic;
	@:optional
	var type : String;
};
typedef PieSeriesConfigLabel = {
	>BaseSeriesConfigLabel,
	@:optional
	var radialOffset : Float;
	@:optional
	var percentPrecision : Float;
};
typedef CommonPieSeriesConfig = {
	@:optional
	var argumentField : String;
	@:optional
	var argumentType : String;
	@:optional
	var border : viz.core.DashedBorder;
	@:optional
	var color : String;
	@:optional
	var hoverMode : String;
	@:optional
	var hoverStyle : { @:optional
	var border : viz.core.DashedBorder; @:optional
	var color : String; @:optional
	var hatching : viz.core.Hatching; };
	@:optional
	var innerRadius : Float;
	@:optional
	var label : PieSeriesConfigLabel;
	@:optional
	var maxLabelCount : Float;
	@:optional
	var minSegmentSize : Float;
	@:optional
	var segmentsDirection : String;
	@:optional
	var selectionMode : String;
	@:optional
	var selectionStyle : { @:optional
	var border : viz.core.DashedBorder; @:optional
	var color : String; @:optional
	var hatching : viz.core.Hatching; };
	@:optional
	var smallValuesGrouping : { @:optional
	var groupName : String; @:optional
	var mode : String; @:optional
	var threshold : Float; @:optional
	var topCount : Float; };
	@:optional
	var startAngle : Float;
	@:optional
	var tagField : String;
	@:optional
	var valueField : String;
	@:optional
	var valueType : String;
};
typedef PieSeriesConfig = {
	>CommonPieSeriesConfig,
	@:optional
	var type : String;
};
typedef SeriesTemplate = {
	@:optional
	var customizeSeries : String -> SeriesConfig;
	@:optional
	var nameField : String;
};
typedef PolarSeriesTemplate = {
	@:optional
	var customizeSeries : String -> PolarSeriesConfig;
	@:optional
	var nameField : String;
};
typedef ChartCommonConstantLineLabel = {
	@:optional
	var font : viz.core.Font;
	@:optional
	var position : String;
};
typedef PolarCommonConstantLineLabel = {
	@:optional
	var font : viz.core.Font;
};
typedef ConstantLineStyle = {
	@:optional
	var color : String;
	@:optional
	var dashStyle : String;
	@:optional
	var width : Float;
};
typedef ChartCommonConstantLineStyle = {
	>ConstantLineStyle,
	@:optional
	var label : ChartCommonConstantLineLabel;
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
};
typedef PolarCommonConstantLineStyle = {
	>ConstantLineStyle,
	@:optional
	var label : PolarCommonConstantLineLabel;
};
typedef CommonAxisLabel = {
	@:optional
	var font : viz.core.Font;
	@:optional
	var indentFromAxis : Float;
	@:optional
	var visible : Bool;
};
typedef ChartCommonAxisLabel = {
	>CommonAxisLabel,
	@:optional
	var alignment : String;
	@:optional
	var overlappingBehavior : { @:optional
	var mode : String; @:optional
	var rotationAngle : Float; @:optional
	var staggeringSpacing : Float; };
};
typedef PolarCommonAxisLabel = {
	>CommonAxisLabel,
	@:optional
	var overlappingBehavior : String;
};
typedef CommonAxisTitle = {
	@:optional
	var font : viz.core.Font;
	@:optional
	var margin : Float;
};
typedef BaseCommonAxisSettings = {
	@:optional
	var color : String;
	@:optional
	var discreteAxisDivisionMode : String;
	@:optional
	var grid : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; @:optional
	var width : Float; };
	@:optional
	var minorGrid : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; @:optional
	var width : Float; };
	@:optional
	var inverted : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var setTicksAtUnitBeginning : Bool;
	@:optional
	var tick : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; };
	@:optional
	var minorTick : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; };
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartCommonAxisSettings = {
	>BaseCommonAxisSettings,
	@:optional
	var constantLineStyle : ChartCommonConstantLineStyle;
	@:optional
	var label : ChartCommonAxisLabel;
	@:optional
	var maxValueMargin : Float;
	@:optional
	var minValueMargin : Float;
	@:optional
	var placeholderSize : Float;
	@:optional
	var stripStyle : { @:optional
	var label : { @:optional
	var font : viz.core.Font; @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; }; @:optional
	var paddingLeftRight : Float; @:optional
	var paddingTopBottom : Float; };
	@:optional
	var title : CommonAxisTitle;
	@:optional
	var valueMarginsEnabled : Bool;
};
typedef PolarCommonAxisSettings = {
	>BaseCommonAxisSettings,
	@:optional
	var constantLineStyle : PolarCommonConstantLineStyle;
	@:optional
	var label : PolarCommonAxisLabel;
	@:optional
	var stripStyle : { @:optional
	var label : { @:optional
	var font : viz.core.Font; }; };
};
typedef ChartConstantLineLabel = {
	>ChartCommonConstantLineLabel,
	@:optional
	var horizontalAlignment : String;
	@:optional
	var verticalAlignment : String;
	@:optional
	var text : String;
};
typedef PolarConstantLineLabel = {
	>PolarCommonConstantLineLabel,
	@:optional
	var text : String;
};
typedef AxisLabel = {
	@:optional
	var customizeHint : { var value : Dynamic; var valueText : String; } -> String;
	@:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String;
	@:optional
	var format : String;
	@:optional
	var precision : Float;
};
typedef ChartAxisLabel = {
	>ChartCommonAxisLabel,
	>AxisLabel,
};
typedef PolarAxisLabel = {
	>PolarCommonAxisLabel,
	>AxisLabel,
};
typedef AxisTitle = {
	>CommonAxisTitle,
	@:optional
	var text : String;
};
typedef ChartConstantLineStyle = {
	>ChartCommonConstantLineStyle,
	@:optional
	var label : ChartConstantLineLabel;
};
typedef ChartConstantLine = {
	>ChartConstantLineStyle,
	@:optional
	var label : ChartConstantLineLabel;
	@:optional
	var value : Dynamic;
};
typedef PolarConstantLine = {
	>PolarCommonConstantLineStyle,
	@:optional
	var label : PolarConstantLineLabel;
	@:optional
	var value : Dynamic;
};
typedef Axis = {
	@:optional
	var axisDivisionFactor : Float;
	@:optional
	var categories : Array<Dynamic>;
	@:optional
	var logarithmBase : Float;
	@:optional
	var tickInterval : Dynamic;
	@:optional
	var minorTickInterval : Dynamic;
	@:optional
	var minorTickCount : Float;
	@:optional
	var type : String;
	@:optional
	var strips : Array<Strip>;
};
typedef ChartAxis = {
	>ChartCommonAxisSettings,
	>Axis,
	@:optional
	var constantLines : Array<ChartConstantLine>;
	@:optional
	var constantLineStyle : ChartCommonConstantLineStyle;
	@:optional
	var label : ChartAxisLabel;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var position : String;
	@:optional
	var title : AxisTitle;
};
typedef PolarAxis = {
	>PolarCommonAxisSettings,
	>Axis,
	@:optional
	var constantLines : Array<PolarConstantLine>;
	@:optional
	var label : PolarAxisLabel;
};
typedef ArgumentAxis = {
	@:optional
	var argumentType : String;
	@:optional
	var hoverMode : String;
};
typedef ChartArgumentAxis = {
	>ChartAxis,
	>ArgumentAxis,
};
typedef PolarArgumentAxis = {
	>PolarAxis,
	>ArgumentAxis,
	@:optional
	var startAngle : Float;
	@:optional
	var firstPointOnStartAngle : Bool;
	@:optional
	var period : Float;
};
typedef ValueAxis = {
	@:optional
	var name : String;
	@:optional
	var showZero : Bool;
	@:optional
	var valueType : String;
};
typedef ChartValueAxis = {
	>ChartAxis,
	>ValueAxis,
	@:optional
	var multipleAxesSpacing : Float;
	@:optional
	var synchronizedValue : Float;
};
typedef PolarValueAxis = {
	>PolarAxis,
	>ValueAxis,
	@:optional
	var valueMarginsEnabled : Bool;
	@:optional
	var maxValueMargin : Float;
	@:optional
	var minValueMargin : Float;
	@:optional
	var tick : { @:optional
	var visible : Bool; };
};
typedef CommonPane = {
	@:optional
	var backgroundColor : String;
	@:optional
	var border : PaneBorder;
};
typedef Pane = {
	>CommonPane,
	@:optional
	var name : String;
};
typedef PaneBorder = {
	>viz.core.DashedBorderWithOpacity,
	@:optional
	var bottom : Bool;
	@:optional
	var left : Bool;
	@:optional
	var right : Bool;
	@:optional
	var top : Bool;
};
typedef ChartAnimation = {
	>viz.core.Animation,
	@:optional
	var maxPointCountSupported : Float;
};
typedef BaseChartTooltip = {
	>viz.core.Tooltip,
	@:optional
	var argumentFormat : String;
	@:optional
	var argumentPrecision : Float;
	@:optional
	var percentPrecision : Float;
};
typedef BaseChartOptions<TPoint> = {
	>viz.core.BaseWidgetOptions,
	@:optional
	var adaptiveLayout : { @:optional
	var width : Float; @:optional
	var height : Float; @:optional
	var keepLabels : Bool; };
	@:optional
	var animation : ChartAnimation;
	@:optional
	var customizeLabel : Dynamic -> Dynamic;
	@:optional
	var customizePoint : Dynamic -> Dynamic;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var done : haxe.Constraints.Function;
	@:optional
	var loadingIndicator : viz.core.LoadingIndicator;
	@:optional
	var legend : core.BaseLegend;
	@:optional
	var margin : viz.core.Margins;
	@:optional
	var palette : Dynamic;
	@:optional
	var onDone : { var component : BaseChart; var element : Element; } -> Void;
	@:optional
	var onPointClick : Dynamic;
	@:optional
	var pointClick : Dynamic;
	@:optional
	var onPointHoverChanged : { var component : BaseChart; var element : Element; var target : TPoint; } -> Void;
	@:optional
	var pointHoverChanged : TPoint -> Void;
	@:optional
	var onPointSelectionChanged : { var component : BaseChart; var element : Element; var target : TPoint; } -> Void;
	@:optional
	var pointSelectionChanged : TPoint -> Void;
	@:optional
	var pointSelectionMode : String;
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var series : Dynamic;
	@:optional
	var size : viz.core.Size;
	@:optional
	var theme : String;
	@:optional
	var title : { @:optional
	var font : viz.core.Font; @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; @:optional
	var margin : viz.core.Margins; @:optional
	var placeholderSize : Float; @:optional
	var text : String; };
	@:optional
	var tooltip : BaseChartTooltip;
	@:optional
	var onTooltipShown : { var component : BaseChart; var element : Element; } -> Void;
	@:optional
	var onTooltipHidden : { var component : BaseChart; var element : Element; } -> Void;
	@:optional
	var tooltipHidden : TPoint -> Void;
	@:optional
	var tooltipShown : TPoint -> Void;
};
extern class BaseChart extends viz.core.BaseWidget {
	function clearSelection():Void;
	function getSize():{ var width : Float; var height : Float; };
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function hideTooltip():Void;
	function render(?renderOptions:{ @:optional
	var force : Bool; @:optional
	var animate : Bool; @:optional
	var asyncSeriesRendering : Bool; }):Void;
}
typedef AdvancedLegend = {
	>core.BaseLegend,
	@:optional
	var customizeHint : { var seriesName : String; var seriesIndex : Float; var seriesColor : String; } -> String;
	@:optional
	var customizeText : { var seriesName : String; var seriesIndex : Float; var seriesColor : String; } -> String;
	@:optional
	var hoverMode : String;
};
typedef AdvancedOptions<TPoint, TSeries> = {
	>BaseChartOptions<TPoint>,
	@:optional
	var onArgumentAxisClick : Dynamic;
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var dataPrepareSettings : { @:optional
	var checkTypeForAllData : Bool; @:optional
	var convertToAxisDataType : Bool; @:optional
	var sortingMethod : Dynamic; };
	@:optional
	var onLegendClick : Dynamic;
	@:optional
	var onSeriesClick : Dynamic;
	@:optional
	var onSeriesHoverChanged : { var component : BaseChart; var element : Element; var target : TSeries; } -> Void;
	@:optional
	var onSeriesSelectionChanged : { var component : BaseChart; var element : Element; var target : TSeries; } -> Void;
	@:optional
	var seriesSelectionMode : String;
	@:optional
	var resolveLabelOverlapping : String;
};
typedef Legend = {
	>AdvancedLegend,
	@:optional
	var position : String;
};
typedef ChartTooltip = {
	>BaseChartTooltip,
	@:optional
	var location : String;
	@:optional
	var shared : Bool;
};
typedef DxChartOptions = {
	>AdvancedOptions<ChartPoint, ChartSeries>,
	@:optional
	var equalBarWidth : Dynamic;
	@:optional
	var adaptiveLayout : { @:optional
	var keepLabels : Bool; };
	@:optional
	var synchronizeMultiAxes : Bool;
	@:optional
	var useAggregation : Bool;
	@:optional
	var adjustOnZoom : Bool;
	@:optional
	var argumentAxis : ChartArgumentAxis;
	@:optional
	var argumentAxisClick : Dynamic;
	@:optional
	var commonAxisSettings : ChartCommonAxisSettings;
	@:optional
	var commonPaneSettings : CommonPane;
	@:optional
	var commonSeriesSettings : CommonSeriesSettings;
	@:optional
	var crosshair : { @:optional
	var color : String; @:optional
	var dashStyle : String; @:optional
	var enabled : Bool; @:optional
	var opacity : Float; @:optional
	var width : Float; @:optional
	var horizontalLine : CrosshaierWithLabel; @:optional
	var verticalLine : CrosshaierWithLabel; @:optional
	var label : { @:optional
	var backgroundColor : String; @:optional
	var visible : Bool; @:optional
	var font : viz.core.Font; }; };
	@:optional
	var defaultPane : String;
	@:optional
	var maxBubbleSize : Float;
	@:optional
	var minBubbleSize : Float;
	@:optional
	var panes : Array<Pane>;
	@:optional
	var rotated : Bool;
	@:optional
	var legend : Legend;
	@:optional
	var series : Array<SeriesConfig>;
	@:optional
	var legendClick : Dynamic;
	@:optional
	var seriesClick : Dynamic;
	@:optional
	var seriesHoverChanged : ChartSeries -> Void;
	@:optional
	var seriesSelectionChanged : ChartSeries -> Void;
	@:optional
	var seriesTemplate : SeriesTemplate;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var valueAxis : Array<ChartValueAxis>;
	@:optional
	var scrollingMode : String;
	@:optional
	var zoomingMode : String;
	@:optional
	var scrollBar : { @:optional
	var visible : Bool; @:optional
	var offset : Float; @:optional
	var color : String; @:optional
	var width : Float; @:optional
	var opacity : Float; @:optional
	var position : String; };
};
extern class DxChart extends BaseChart {
	@:overload(function(element:Element, ?options:DxChartOptions):Void { })
	function new(element:JQuery, ?options:DxChartOptions):Void;
	function getAllSeries():Array<ChartSeries>;
	function getSeriesByName(seriesName:String):ChartSeries;
	function getSeriesByPos(seriesIndex:Float):ChartSeries;
	function zoomArgument(startValue:Dynamic, endValue:Dynamic):Void;
}
typedef CrosshaierWithLabel = {
	>viz.core.DashedBorderWithOpacity,
	@:optional
	var label : { @:optional
	var backgroundColor : String; @:optional
	var visible : Bool; @:optional
	var font : viz.core.Font; };
};
typedef PolarChartTooltip = {
	>BaseChartTooltip,
	@:optional
	var shared : Bool;
};
typedef DxPolarChartOptions = {
	>AdvancedOptions<PolarPoint, PolarSeries>,
	@:optional
	var equalBarWidth : Bool;
	@:optional
	var adaptiveLayout : { @:optional
	var width : Float; @:optional
	var height : Float; @:optional
	var keepLabels : Bool; };
	@:optional
	var useSpiderWeb : Bool;
	@:optional
	var argumentAxis : PolarArgumentAxis;
	@:optional
	var commonAxisSettings : PolarCommonAxisSettings;
	@:optional
	var commonSeriesSettings : CommonPolarSeriesSettings;
	@:optional
	var legend : AdvancedLegend;
	@:optional
	var series : Array<PolarSeriesConfig>;
	@:optional
	var seriesTemplate : PolarSeriesTemplate;
	@:optional
	var tooltip : PolarChartTooltip;
	@:optional
	var valueAxis : PolarValueAxis;
};
extern class DxPolarChart extends BaseChart {
	@:overload(function(element:Element, ?options:DxPolarChartOptions):Void { })
	function new(element:JQuery, ?options:DxPolarChartOptions):Void;
	function getAllSeries():Array<PolarSeries>;
	function getSeriesByName(seriesName:String):PolarSeries;
	function getSeriesByPos(seriesIndex:Float):PolarSeries;
}
typedef PieLegend = {
	>core.BaseLegend,
	@:optional
	var hoverMode : String;
};
typedef DxPieChartOptions = {
	>BaseChartOptions<PiePoint>,
	@:optional
	var adaptiveLayout : { @:optional
	var keepLabels : Bool; };
	@:optional
	var legend : PieLegend;
	@:optional
	var series : Array<PieSeriesConfig>;
	@:optional
	var diameter : Float;
	@:optional
	var onLegendClick : Dynamic;
	@:optional
	var legendClick : Dynamic;
	@:optional
	var resolveLabelOverlapping : String;
};
extern class DxPieChart extends BaseChart {
	@:overload(function(element:Element, ?options:DxPieChartOptions):Void { })
	function new(element:JQuery, ?options:DxPieChartOptions):Void;
	function getSeries():PieSeries;
}
