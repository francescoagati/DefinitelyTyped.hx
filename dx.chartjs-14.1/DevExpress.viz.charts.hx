typedef Z_BaseLegendOptions = {
	@:optional
	var backgroundColor : String;
	@:optional
	var hoverMode : String;
	@:optional
	var customizeText : { var seriesName : String; var seriesNumber : Float; var seriesColor : String; } -> String;
	@:optional
	var verticalAlignment : String;
	@:optional
	var horizontalAlignment : String;
	@:optional
	var itemTextPosition : String;
	@:optional
	var equalColumnWidth : Bool;
	@:optional
	var font : viz.common.FontOptions;
	@:optional
	var visible : Bool;
	@:optional
	var margin : Dynamic;
	@:optional
	var markerSize : Float;
	@:optional
	var border : { @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var color : String; @:optional
	var cornerRadius : Float; @:optional
	var opacity : Float; @:optional
	var dashStyle : String; };
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
	@:optional
	var columnsCount : Float;
	@:optional
	var rowsCount : Float;
	@:optional
	var columnItemSpacing : Float;
	@:optional
	var rowItemSpacing : Float;
	@:optional
	var orientation : String;
};
typedef Z_BaseTooltipCustomizeArgument = {
	@:optional
	var value : Dynamic;
	var valueText : String;
	var originalValue : String;
	var argument : Dynamic;
	var argumentText : String;
	var originalArgument : Dynamic;
	@:optional
	var percent : Dynamic;
	@:optional
	var percentText : String;
	var seriesName : String;
};
typedef Z_BaseTooltipOptions = {
	>common.BaseTooltipOptions,
	@:optional
	var customizeText : Z_BaseTooltipCustomizeArgument -> String;
	@:optional
	var customizeTooltip : Z_BaseTooltipCustomizeArgument -> common.CustomizeTooltipResult;
	@:optional
	var format : String;
	@:optional
	var argumentFormat : String;
	@:optional
	var precision : Float;
	@:optional
	var argumentPrecision : Float;
	@:optional
	var percentPrecision : Float;
};
typedef Z_ChartTooltipCustomizeArgument = {
	>Z_BaseTooltipCustomizeArgument,
	@:optional
	var closeValueText : String;
	@:optional
	var highValueText : String;
	@:optional
	var lowValueText : String;
	@:optional
	var openValueText : String;
	@:optional
	var originalCloseValue : Dynamic;
	@:optional
	var originalHighValue : Dynamic;
	@:optional
	var originalLowValue : Dynamic;
	@:optional
	var originalOpenValue : Dynamic;
	@:optional
	var closeValue : Dynamic;
	@:optional
	var highValue : Dynamic;
	@:optional
	var lowValue : Dynamic;
	@:optional
	var openValue : Dynamic;
	@:optional
	var reductionValue : Dynamic;
	@:optional
	var reductionValueText : String;
	@:optional
	var originalMinValue : Dynamic;
	@:optional
	var rangeValue1 : Dynamic;
	@:optional
	var rangeValue1Text : String;
	@:optional
	var rangeValue2 : Dynamic;
	@:optional
	var rangeValue2Text : String;
	var point : series.Point;
};
typedef Z_ChartTooltipOptions = {
	>Z_BaseTooltipOptions,
	@:optional
	var customizeText : Z_ChartTooltipCustomizeArgument -> String;
	@:optional
	var customizeTooltip : Z_ChartTooltipCustomizeArgument -> common.CustomizeTooltipResult;
	@:optional
	var shared : Bool;
};
typedef Z_BaseChartOptions = {
	>ComponentOptions,
	@:optional
	var incidentOccured : Void -> Void;
	@:optional
	var done : Void -> Void;
	@:optional
	var tooltipShown : Void -> Void;
	@:optional
	var tooltipHidden : Void -> Void;
	@:optional
	var pointSelectionMode : String;
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var tooltip : Z_BaseTooltipOptions;
	@:optional
	var loadingIndicator : common.LoadingIndicatorOptions;
	@:optional
	var margin : { @:optional
	var left : Float; @:optional
	var top : Float; @:optional
	var right : Float; @:optional
	var bottom : Float; };
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var title : { @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; @:optional
	var font : viz.common.FontOptions; @:optional
	var text : String; @:optional
	var placeholderSize : Float; @:optional
	var margin : Dynamic; };
	@:optional
	var dataSource : Dynamic;
	@:optional
	var palette : Dynamic;
	@:optional
	var legend : Z_BaseLegendOptions;
	@:optional
	var theme : String;
	@:optional
	var animation : { @:optional
	var enabled : Bool; @:optional
	var duration : Float; @:optional
	var easing : String; @:optional
	var maxPointCountSupported : Float; @:optional
	var asyncSeriesRendering : Bool; @:optional
	var asyncTrackersRendering : Bool; @:optional
	var trackerRenderingDelay : Float; };
	@:optional
	var pathModified : Bool;
};
typedef CommonPaneSettings = {
	@:optional
	var backgroundColor : String;
	@:optional
	var border : { @:optional
	var color : String; @:optional
	var bottom : Bool; @:optional
	var left : Bool; @:optional
	var right : Bool; @:optional
	var top : Bool; @:optional
	var dashStyle : String; @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var opacity : Float; };
};
typedef PaneSettings = {
	>CommonPaneSettings,
	var name : String;
};
typedef ChartLegendOptions = {
	>Z_BaseLegendOptions,
	@:optional
	var hoverMode : String;
	@:optional
	var position : String;
};
typedef Z_CommonAxisLabelSettings = {
	@:optional
	var alignment : String;
	@:optional
	var font : viz.common.FontOptions;
	@:optional
	var indentFromAxis : Float;
	@:optional
	var overlappingBehavior : { @:optional
	var mode : String; @:optional
	var rotationAngle : Float; @:optional
	var staggeringSpacing : Float; };
	@:optional
	var rotationAngle : Float;
	@:optional
	var staggered : Bool;
	@:optional
	var staggeringSpacing : Float;
};
typedef Z_BaseConstantLineLabel = {
	@:optional
	var visible : Bool;
	@:optional
	var position : String;
	@:optional
	var font : viz.common.FontOptions;
};
typedef ConstantLineAxisLabel = {
	>Z_BaseConstantLineLabel,
	@:optional
	var horizontalAlignment : String;
	@:optional
	var verticalAlignment : String;
};
typedef ConstantLineLabel = {
	>ConstantLineAxisLabel,
	@:optional
	var text : String;
};
typedef CommonConstantLineStyle = {
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
	@:optional
	var width : Float;
	@:optional
	var dashStyle : String;
	@:optional
	var color : String;
	@:optional
	var label : Z_BaseConstantLineLabel;
};
typedef ConstantLineOptions = {
	>CommonConstantLineStyle,
	@:optional
	var value : Dynamic;
	@:optional
	var label : ConstantLineLabel;
};
typedef Z_AxisConstantLineStyle = {
	>CommonConstantLineStyle,
	@:optional
	var label : ConstantLineAxisLabel;
};
typedef Z_StripStyle = {
	@:optional
	var label : { @:optional
	var font : viz.common.FontOptions; @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; };
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
};
typedef CommonAxisSettings = {
	@:optional
	var color : String;
	@:optional
	var discreteAxisDivisionMode : String;
	@:optional
	var grid : { @:optional
	var color : String; @:optional
	var opacity : String; @:optional
	var visible : Bool; @:optional
	var width : Float; };
	@:optional
	var inverted : Bool;
	@:optional
	var label : Z_CommonAxisLabelSettings;
	@:optional
	var maxValueMargin : Float;
	@:optional
	var minValueMargin : Float;
	@:optional
	var opacity : Float;
	@:optional
	var placeholderSize : Float;
	@:optional
	var setTicksAtUnitBeginning : Bool;
	@:optional
	var stripStyle : Z_StripStyle;
	@:optional
	var constantLineStyle : CommonConstantLineStyle;
	@:optional
	var tick : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; };
	@:optional
	var title : { @:optional
	var font : viz.common.FontOptions; @:optional
	var margin : Float; @:optional
	var text : String; };
	@:optional
	var valueMarginsEnabled : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef StripOptions = {
	>Z_StripStyle,
	@:optional
	var color : String;
	var endValue : Dynamic;
	var startValue : Dynamic;
	@:optional
	var label : { @:optional
	var font : viz.common.FontOptions; @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; @:optional
	var text : String; };
};
typedef Z_AxisLabelSettings = {
	>Z_CommonAxisLabelSettings,
	var customizeText : { var value : Dynamic; var valueText : String; } -> String;
};
typedef ArgumentAxisOptions = {
	>CommonAxisSettings,
	@:optional
	var argumentType : String;
	@:optional
	var axisDivisionFactor : Float;
	@:optional
	var categories : Array<String>;
	@:optional
	var hoverMode : String;
	@:optional
	var label : Z_AxisLabelSettings;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var tickInterval : Dynamic;
	@:optional
	var position : String;
	@:optional
	var constantLineStyle : Z_AxisConstantLineStyle;
	@:optional
	var strips : Array<StripOptions>;
	@:optional
	var constantLines : Array<ConstantLineOptions>;
	@:optional
	var type : String;
};
typedef ValueAxisOptions = {
	>CommonAxisSettings,
	@:optional
	var valueType : String;
	@:optional
	var axisDivisionFactor : Float;
	@:optional
	var categories : Array<Dynamic>;
	@:optional
	var hoverMode : String;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var tickInterval : Dynamic;
	@:optional
	var position : String;
	@:optional
	var strips : Array<StripOptions>;
	@:optional
	var constantLines : Array<ConstantLineOptions>;
	@:optional
	var constantLineStyle : Z_AxisConstantLineStyle;
	@:optional
	var type : String;
	@:optional
	var name : String;
	@:optional
	var label : Z_AxisLabelSettings;
};
typedef Z_CrosshairLine = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var dashStyle : String;
	@:optional
	var opacity : Float;
};
typedef Z_CrosshairOptions = {
	>Z_CrosshairLine,
	@:optional
	var enabled : Bool;
	@:optional
	var verticalLine : Z_CrosshairLine;
	@:optional
	var horizontalLine : Z_CrosshairLine;
};
typedef ChartOptions = {
	>Z_BaseChartOptions,
	@:optional
	var needAggregate : Bool;
	@:optional
	var defaultPane : String;
	@:optional
	var adjustOnZoom : Bool;
	@:optional
	var rotated : Bool;
	@:optional
	var synchronizeMultiAxes : Bool;
	@:optional
	var equalBarWidth : { @:optional
	var spacing : Float; @:optional
	var width : Float; };
	@:optional
	var adaptiveLayout : { @:optional
	var width : Float; @:optional
	var height : Float; @:optional
	var keepLabels : Bool; };
	@:optional
	var customizePoint : { var index : Float; var argument : Dynamic; var seriesName : String; var tag : Dynamic; @:optional
	var value : Dynamic; @:optional
	var rangeValue1 : Dynamic; @:optional
	var rangeValue2 : Dynamic; } -> series.BasePointOptions;
	@:optional
	var customizeLabel : { var index : Float; var argument : Dynamic; var seriesName : String; var tag : Dynamic; @:optional
	var value : Dynamic; @:optional
	var ramgeValue1 : Dynamic; @:optional
	var rangeValue2 : Dynamic; } -> series.Z_BaseLabelOptions;
	@:optional
	var commonPaneSettings : CommonPaneSettings;
	@:optional
	var panes : Array<PaneSettings>;
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var seriesTemplate : { @:optional
	var nameField : String; @:optional
	var customizeSeries : String -> viz.charts.series.SeriesOptions; };
	@:optional
	var crosshair : Z_CrosshairOptions;
	@:optional
	var seriesSelectionMode : String;
	@:optional
	var tooltip : Z_ChartTooltipOptions;
	@:optional
	var dataPrepareSettings : { @:optional
	var checkTypeForAllData : Bool; @:optional
	var convertToAxisDataType : Bool; @:optional
	var sortingMethod : Dynamic; };
	@:optional
	var useAggregation : Bool;
	@:optional
	var argumentAxisClick : Dynamic -> Dynamic -> JQueryMouseEventObject -> Void;
	@:optional
	var legend : ChartLegendOptions;
	@:optional
	var argumentAxis : ArgumentAxisOptions;
	@:optional
	var valueAxis : Array<ValueAxisOptions>;
	@:optional
	var commonAxisSettings : CommonAxisSettings;
	@:optional
	var series : Array<viz.charts.series.SeriesOptions>;
	@:optional
	var commonSeriesSettings : viz.charts.series.CommonSeriesSettings;
	@:optional
	var seriesClick : viz.charts.series.Series -> JQueryMouseEventObject -> Void;
	@:optional
	var seriesHover : viz.charts.series.Series -> Void;
	@:optional
	var seriesSelected : viz.charts.series.Series -> Void;
	@:optional
	var seriesHoverChanged : viz.charts.series.Series -> Void;
	@:optional
	var pointClick : viz.charts.series.Point -> JQueryMouseEventObject -> Void;
	@:optional
	var legendClick : Dynamic -> JQueryMouseEventObject -> Void;
	@:optional
	var pointHover : viz.charts.series.Point -> Void;
	@:optional
	var pointSelected : viz.charts.series.Point -> Void;
	@:optional
	var seriesSelectionChanged : viz.charts.series.Series -> Void;
	@:optional
	var pointSelectionChanged : viz.charts.series.Point -> Void;
	@:optional
	var pointHoverChanged : viz.charts.series.Point -> Void;
	@:optional
	var drawn : viz.Chart -> Void;
	@:optional
	var minBubbleSize : Float;
	@:optional
	var maxBubbleSize : Float;
};
typedef PieOptions = {
	>Z_BaseChartOptions,
	@:optional
	var pointClick : viz.charts.series.PiePoint -> JQueryMouseEventObject -> Void;
	@:optional
	var legendClick : viz.charts.series.PiePoint -> JQueryMouseEventObject -> Void;
	@:optional
	var pointHover : viz.charts.series.PiePoint -> Void;
	@:optional
	var pointSelected : viz.charts.series.PiePoint -> Void;
	@:optional
	var pointSelectionChanged : viz.charts.series.PiePoint -> Void;
	@:optional
	var pointHoverChanged : viz.charts.series.PiePoint -> Void;
	@:optional
	var series : viz.charts.series.PieSeriesOptions;
	@:optional
	var drawn : viz.PieChart -> Void;
};
typedef RenderOptions = {
	@:optional
	var force : Bool;
	@:optional
	var animate : Bool;
	@:optional
	var asyncSeriesRendering : Bool;
};
