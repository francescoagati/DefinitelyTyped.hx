typedef HighchartsPosition = {
	@:optional
	var align : String;
	@:optional
	var verticalAlign : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsDateTimeFormats = {
	@:optional
	var second : String;
	@:optional
	var minute : String;
	@:optional
	var hour : String;
	@:optional
	var day : String;
	@:optional
	var week : String;
	@:optional
	var month : String;
	@:optional
	var year : String;
};
typedef HighchartsAxisEvent = {
	>Event,
	var min : Float;
	var max : Float;
};
typedef HighchartsAxisLabels = {
	@:optional
	var align : String;
	@:optional
	var enabled : Bool;
	@:optional
	var formatter : Void -> String;
	@:optional
	var overflow : String;
	@:optional
	var rotation : Float;
	@:optional
	var staggerLines : Float;
	@:optional
	var step : Float;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var useHTML : Bool;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsMousePlotEvents = {
	@:optional
	var click : ?Event -> Void;
	@:optional
	var mouseover : ?Event -> Void;
	@:optional
	var mouseout : ?Event -> Void;
	@:optional
	var mousemove : ?Event -> Void;
};
typedef HighchartsPlotLabel = {
	@:optional
	var align : String;
	@:optional
	var rotation : Float;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var text : String;
	@:optional
	var textAlign : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsPlotBands = {
	@:optional
	var color : String;
	@:optional
	var events : HighchartsMousePlotEvents;
	@:optional
	var from : Float;
	@:optional
	var id : String;
	@:optional
	var label : HighchartsPlotLabel;
	@:optional
	var to : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsPlotLines = {
	@:optional
	var color : String;
	@:optional
	var dashStyle : String;
	@:optional
	var events : HighchartsMousePlotEvents;
	@:optional
	var id : String;
	@:optional
	var label : HighchartsPlotLabel;
	@:optional
	var value : Float;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsAxisTitle = {
	@:optional
	var align : String;
	@:optional
	var margin : Float;
	@:optional
	var offset : Float;
	@:optional
	var rotation : Float;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var text : String;
};
typedef HighchartsAxisOptions = {
	@:optional
	var allowDecimals : Bool;
	@:optional
	var alternateGridColor : String;
	@:optional
	var categories : Array<String>;
	@:optional
	var dateTimeLabelFormats : HighchartsDateTimeFormats;
	@:optional
	var endOnTick : Bool;
	@:optional
	var events : { @:optional
	var afterSetExtremes : HighchartsAxisEvent -> Void; @:optional
	var setExtremes : HighchartsAxisEvent -> Void; };
	@:optional
	var gridLineColor : String;
	@:optional
	var gridLineDashStyle : String;
	@:optional
	var gridLineWidth : Float;
	@:optional
	var id : String;
	@:optional
	var labels : HighchartsAxisLabels;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var linkedTo : Float;
	@:optional
	var max : Float;
	@:optional
	var maxPadding : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var min : Float;
	@:optional
	var minPadding : Float;
	@:optional
	var minRange : Float;
	@:optional
	var minTickInterval : Float;
	@:optional
	var minorTickColor : String;
	@:optional
	var minorTickInterval : Float;
	@:optional
	var minorTickLength : Float;
	@:optional
	var minorTickPosition : String;
	@:optional
	var minorTickWidth : Float;
	@:optional
	var offset : Float;
	@:optional
	var opposite : Bool;
	@:optional
	var plotBands : HighchartsPlotBands;
	@:optional
	var plotLines : HighchartsPlotLines;
	@:optional
	var reversed : Bool;
	@:optional
	var showEmpty : Bool;
	@:optional
	var showFirstLabel : Bool;
	@:optional
	var showLastLabel : Bool;
	@:optional
	var startOfWeek : Float;
	@:optional
	var startOnTick : Bool;
	@:optional
	var tickColor : String;
	@:optional
	var tickInterval : Float;
	@:optional
	var tickLength : Float;
	@:optional
	var tickPixelInterval : Float;
	@:optional
	var tickPosition : String;
	@:optional
	var tickWidth : Float;
	@:optional
	var tickmarkPlacement : String;
	@:optional
	var title : HighchartsAxisTitle;
	@:optional
	var type : String;
};
typedef HighchartsExtremes = {
	var dataMax : Float;
	var dataMin : Float;
	var max : Float;
	var min : Float;
};
typedef HighchartsAnimation = {
	@:optional
	var duration : Float;
	@:optional
	var easing : String;
};
typedef HighchartsSelectionEvent = {
	>Event,
	var xAxis : Array<HighchartsAxisOptions>;
	var yAxis : Array<HighchartsAxisOptions>;
};
typedef HighchartsChartEvents = {
	@:optional
	var addSeries : ?Event -> Bool;
	@:optional
	var click : ?Event -> Void;
	@:optional
	var load : ?Event -> Void;
	@:optional
	var redraw : Event -> Void;
	@:optional
	var selection : HighchartsSelectionEvent -> Void;
};
typedef HighchartsGradient = {
	@:optional
	var linearGradient : { var x0 : Float; var y0 : Float; var x1 : Float; var y1 : Float; };
	@:optional
	var radialGradient : { var cx : Float; var cy : Float; var r : Float; };
	@:optional
	var stops : Array<Array<Dynamic>>;
	@:optional
	function brighten(amount:Float):haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	function get(type:String):String;
};
typedef HighchartsShadow = {
	@:optional
	var color : String;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef HighchartsChartResetZoomButton = {
	var position : HighchartsPosition;
	@:optional
	var relativeTo : String;
	@:optional
	var theme : HighchartsChartResetZoomButtonTheme;
};
typedef HighchartsChartResetZoomButtonTheme = {
	@:optional
	var fill : String;
	@:optional
	var stroke : String;
	@:optional
	var r : Float;
	@:optional
	var states : Dynamic;
	@:optional
	var display : String;
};
typedef HighchartsChartOptions = {
	@:optional
	var alignTicks : Bool;
	@:optional
	var animation : haxe.extern.EitherType<Bool, HighchartsAnimation>;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var className : String;
	@:optional
	var defaultSeriesType : String;
	@:optional
	var events : HighchartsChartEvents;
	@:optional
	var height : Float;
	@:optional
	var ignoreHiddenSeries : Bool;
	@:optional
	var inverted : Bool;
	@:optional
	var margin : Array<Float>;
	@:optional
	var marginBottom : Float;
	@:optional
	var marginLeft : Float;
	@:optional
	var marginRight : Float;
	@:optional
	var marginTop : Float;
	@:optional
	var plotBackGroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var plotBackGroundImage : String;
	@:optional
	var plotBorderColor : String;
	@:optional
	var plotBorderWidth : Float;
	@:optional
	var plotShadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var polar : Bool;
	@:optional
	var reflow : Bool;
	@:optional
	var renderTo : Dynamic;
	@:optional
	var resetZoomButton : HighchartsChartResetZoomButton;
	@:optional
	var selectionMarkerFill : String;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showAxes : Bool;
	@:optional
	var spacingBottom : Float;
	@:optional
	var spacingLeft : Float;
	@:optional
	var spacingRight : Float;
	@:optional
	var spacingTop : Float;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var zoomType : String;
};
typedef HighchartsCSSObject = {
	@:optional
	var background : String;
	@:optional
	var border : String;
	@:optional
	var color : String;
	@:optional
	var cursor : String;
	@:optional
	var font : String;
	@:optional
	var fontSize : String;
	@:optional
	var fontWeight : String;
	@:optional
	var left : String;
	@:optional
	var opacity : Float;
	@:optional
	var padding : String;
	@:optional
	var position : String;
	@:optional
	var top : String;
};
typedef HighchartsCreditsOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var href : String;
	@:optional
	var position : HighchartsPosition;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var text : String;
};
typedef HighchartsMenuItem = {
	var text : String;
	var onclick : Void -> Void;
};
typedef HighchartsButton = {
	@:optional
	var align : String;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var verticalAlign : String;
	@:optional
	var enabled : Bool;
	@:optional
	var height : Float;
	@:optional
	var hoverBorderColor : String;
	@:optional
	var hoverSymbolFill : String;
	@:optional
	var hoverSimbolStroke : String;
	@:optional
	var menuItems : Array<HighchartsMenuItem>;
	@:optional
	var onclick : Void -> Void;
	@:optional
	var symbol : String;
	@:optional
	var simbolFill : String;
	@:optional
	var simbolSize : Float;
	@:optional
	var symbolStroke : String;
	@:optional
	var symbolStrokeWidth : Float;
	@:optional
	var symbolX : Float;
	@:optional
	var symbolY : Float;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsExportingOptions = {
	@:optional
	var buttons : { @:optional
	var exportButton : HighchartsButton; @:optional
	var printButton : HighchartsButton; };
	@:optional
	var enableImages : Bool;
	@:optional
	var enabled : Bool;
	@:optional
	var filename : String;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef HighchartsGlobalObject = {
	@:optional
	var Date : Dynamic;
	@:optional
	var VMLRadialGradientURL : String;
	@:optional
	var canvasToolsURL : String;
	@:optional
	var timezoneOffset : Float;
	@:optional
	var useUTC : Bool;
};
typedef HighchartsLabelItem = {
	var html : String;
	var style : HighchartsCSSObject;
};
typedef HighchartsLabelsOptions = {
	@:optional
	var items : Array<HighchartsLabelItem>;
	@:optional
	var style : HighchartsCSSObject;
};
typedef HighchartsLangObject = {
	@:optional
	var contextButtonTitle : String;
	@:optional
	var decimalPoint : String;
	@:optional
	var downloadJPEG : String;
	@:optional
	var downloadPDF : String;
	@:optional
	var downloadPNG : String;
	@:optional
	var downloadSVG : String;
	@:optional
	var drillUpText : String;
	@:optional
	var loading : String;
	@:optional
	var months : Array<String>;
	@:optional
	var noData : String;
	@:optional
	var numericSymbols : Array<String>;
	@:optional
	var printChart : String;
	@:optional
	var resetZoom : String;
	@:optional
	var resetZoomTitle : String;
	@:optional
	var shortMonths : Array<String>;
	@:optional
	var thousandsSep : String;
	@:optional
	var weekdays : Array<String>;
};
typedef HighchartsLegendNavigationOptions = {
	@:optional
	var activeColor : String;
	@:optional
	var animation : haxe.extern.EitherType<Bool, HighchartsAnimation>;
	@:optional
	var arrowSize : Float;
	@:optional
	var inactiveColor : String;
	@:optional
	var style : HighchartsCSSObject;
};
typedef HighchartsLegendOptions = {
	@:optional
	var align : String;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var enabled : Bool;
	@:optional
	var floating : Bool;
	@:optional
	var itemHiddenStyle : HighchartsCSSObject;
	@:optional
	var itemHoverStyle : HighchartsCSSObject;
	@:optional
	var itemMarginBottom : Float;
	@:optional
	var itemMarginTop : Float;
	@:optional
	var itemStyle : HighchartsCSSObject;
	@:optional
	var itemWidth : Float;
	@:optional
	var labelFormatter : Void -> String;
	@:optional
	var layout : String;
	@:optional
	var lineHeight : String;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var navigation : HighchartsLegendNavigationOptions;
	@:optional
	var padding : Float;
	@:optional
	var reversed : Bool;
	@:optional
	var rtl : Bool;
	@:optional
	var verticalAlign : String;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var symbolPadding : Float;
	@:optional
	var symbolWidth : Float;
	@:optional
	var useHTML : Bool;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsLoadingOptions = {
	@:optional
	var hideDuration : Float;
	@:optional
	var labelStyle : HighchartsCSSObject;
	@:optional
	var showDuration : Float;
	@:optional
	var style : HighchartsCSSObject;
};
typedef HighchartsNavigationOptions = {
	@:optional
	var buttonOptions : HighchartsButton;
	@:optional
	var menuItemHoverStyle : HighchartsCSSObject;
	@:optional
	var menuItemStyle : HighchartsCSSObject;
	@:optional
	var menuStyle : HighchartsCSSObject;
};
typedef HighchartsPaneBackground = {
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderWidth : Float;
	@:optional
	var innerRadius : String;
	@:optional
	var outerRadius : String;
};
typedef HighchartsPaneOptions = {
	@:optional
	var background : Array<HighchartsPaneBackground>;
	@:optional
	var center : Array<Dynamic>;
	@:optional
	var endAngle : Float;
	@:optional
	var size : haxe.extern.EitherType<Float, String>;
	@:optional
	var startAngle : Float;
};
typedef HighchartsDataLabels = {
	@:optional
	var align : String;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var color : String;
	@:optional
	var crop : Bool;
	@:optional
	var enabled : Bool;
	@:optional
	var formatter : Void -> Dynamic;
	@:optional
	var overflow : String;
	@:optional
	var padding : Float;
	@:optional
	var rotation : Float;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var staggerLines : Dynamic;
	@:optional
	var step : Dynamic;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var useHTML : Bool;
	@:optional
	var verticalAlign : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsAreaCheckboxEvent = {
	>Event,
	var checked : Bool;
};
typedef HighchartsAreaClickEvent = {
	>Event,
	var point : HighchartsPointObject;
};
typedef HighchartsPlotEvents = {
	@:optional
	var checkboxClick : HighchartsAreaCheckboxEvent -> Bool;
	@:optional
	var click : HighchartsAreaClickEvent -> Void;
	@:optional
	var hide : Void -> Void;
	@:optional
	var legendItemClick : Event -> Bool;
	@:optional
	var mouseOut : Event -> Void;
	@:optional
	var mouseOver : Event -> Void;
	@:optional
	var show : Void -> Void;
};
typedef HighchartsMarkerState = {
	@:optional
	var enabled : Bool;
	@:optional
	var fillColor : String;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var radius : Float;
};
typedef HighchartsMarker = {
	>HighchartsMarkerState,
	@:optional
	var states : { @:optional
	var hover : HighchartsMarkerState; @:optional
	var select : HighchartsMarkerState; };
	@:optional
	var symbol : String;
};
typedef HighchartsPointEvents = {
	@:optional
	var click : Event -> Bool;
	@:optional
	var mouseOut : Event -> Void;
	@:optional
	var mouseOver : Event -> Void;
	@:optional
	var remove : Event -> Bool;
	@:optional
	var select : Event -> Bool;
	@:optional
	var unselect : Event -> Bool;
	@:optional
	var update : Event -> Bool;
};
typedef HighchartsAreaStates = {
	@:optional
	var enabled : Bool;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
};
typedef HighchartsBarStates = {
	>HighchartsAreaStates,
	@:optional
	var brightness : Float;
};
typedef HighchartsRangeDataLabels = {
	@:optional
	var align : String;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var color : String;
	@:optional
	var crop : Bool;
	@:optional
	var defer : Bool;
	@:optional
	var enabled : Bool;
	@:optional
	var format : String;
	@:optional
	var formatter : Void -> Dynamic;
	@:optional
	var inside : Bool;
	@:optional
	var overflow : String;
	@:optional
	var padding : Float;
	@:optional
	var rotation : Float;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var useHTML : Bool;
	@:optional
	var verticalAlign : String;
	@:optional
	var xHigh : Float;
	@:optional
	var xLow : Float;
	@:optional
	var yHigh : Float;
	@:optional
	var yLow : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsDial = {
	@:optional
	var backgroundColor : String;
	@:optional
	var baseLength : String;
	@:optional
	var baseWidth : Float;
	@:optional
	var borderColor : String;
	@:optional
	var borderWidth : Float;
	@:optional
	var radius : String;
	@:optional
	var rearLength : String;
	@:optional
	var topWidth : Float;
};
typedef HighchartsPivot = {
	@:optional
	var backgroundColor : String;
	@:optional
	var borderColor : String;
	@:optional
	var borderWidth : Float;
	@:optional
	var radius : Float;
};
typedef HighchartsAreaChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var connectEnds : Bool;
	@:optional
	var connectNulls : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var fillColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var fillOpacity : Float;
	@:optional
	var linkedTo : String;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var negativeColor : String;
	@:optional
	var negativeFillColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPlacement : haxe.extern.EitherType<String, Float>;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var step : String;
	@:optional
	var stickyTracking : Bool;
	@:optional
	var threshold : Float;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var trackByArea : Bool;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
typedef HighchartsAreaRangeChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var connectNulls : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsRangeDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var fillColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var fillOpacity : Float;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var linkedTo : String;
	@:optional
	var negativeColor : String;
	@:optional
	var negativeFillColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPlacement : haxe.extern.EitherType<String, Float>;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var step : String;
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var threshold : Float;
	@:optional
	var trackByArea : Bool;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
};
typedef HighchartsAreaSplineChart = {
	>HighchartsAreaChart,
	@:optional
	var connectEnds : Bool;
};
typedef HighchartsAreaSplineRangeChart = {
	>HighchartsAreaRangeChart,
};
typedef HighchartsBarChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var color : String;
	@:optional
	var colorByPoint : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var colors : Array<String>;
	@:optional
	var cursor : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var depth : Float;
	@:optional
	var edgeColor : String;
	@:optional
	var edgeWidth : Float;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var groupPadding : Float;
	@:optional
	var groupZPadding : Float;
	@:optional
	var grouping : Bool;
	@:optional
	var linkedTo : String;
	@:optional
	var minPointLength : Float;
	@:optional
	var negativeColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPadding : Float;
	@:optional
	var pointPlacement : String;
	@:optional
	var pointRange : Float;
	@:optional
	var pointStart : Float;
	@:optional
	var pointWidth : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsBarStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var threshold : Float;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
};
typedef HighchartsBoxPlotChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var color : String;
	@:optional
	var colorByPoint : Bool;
	@:optional
	var colors : Array<String>;
	@:optional
	var cursor : String;
	@:optional
	var depth : Float;
	@:optional
	var edgecolor : String;
	@:optional
	var edgewidth : Float;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var fillColor : String;
	@:optional
	var groupPadding : Float;
	@:optional
	var groupZPadding : Float;
	@:optional
	var grouping : Bool;
	@:optional
	var lineWidth : Float;
	@:optional
	var linkedTo : String;
	@:optional
	var medianColor : String;
	@:optional
	var negativeColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPadding : Float;
	@:optional
	var pointPlacement : haxe.extern.EitherType<String, Float>;
	@:optional
	var pointRange : Float;
	@:optional
	var pointStart : Float;
	@:optional
	var pointWidth : Float;
	@:optional
	var selected : Bool;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var states : { var hover : HighchartsBarStates; };
	@:optional
	var stemColor : String;
	@:optional
	var stemDashStyle : String;
	@:optional
	var stemWidth : Float;
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
	@:optional
	var whiskerColor : String;
	@:optional
	var whiskerLength : haxe.extern.EitherType<Float, String>;
	@:optional
	var whiskerWidth : Float;
};
typedef HighchartsBubbleChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsRangeDataLabels;
	@:optional
	var displayNegative : Bool;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var lineWidth : Float;
	@:optional
	var linkedTo : String;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var maxSize : String;
	@:optional
	var minSize : String;
	@:optional
	var negativeColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var sizeBy : String;
	@:optional
	var states : { var hover : HighchartsBarStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zMax : Float;
	@:optional
	var zMin : Float;
	@:optional
	var zThreshold : Float;
};
typedef HighchartsColumnChart = {
	>HighchartsBarChart,
};
typedef HighchartsColumnRangeChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var color : String;
	@:optional
	var colorByPoint : Bool;
	@:optional
	var colors : Array<String>;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dataLabels : HighchartsRangeDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var groupPadding : Float;
	@:optional
	var grouping : Bool;
	@:optional
	var linkedTo : String;
	@:optional
	var minPointLength : Float;
	@:optional
	var negativeColor : String;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPadding : Float;
	@:optional
	var pointPlacement : haxe.extern.EitherType<String, Float>;
	@:optional
	var pointRange : Float;
	@:optional
	var pointStart : Float;
	@:optional
	var pointWidth : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsBarStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Bool;
};
typedef HighchartsErrorBarChart = { };
typedef HighchartsFunnelChart = { };
typedef HighchartsGaugeChart = {
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var cursor : String;
	@:optional
	var datalabels : HighchartsDataLabels;
	@:optional
	var dial : HighchartsDial;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var id : String;
	@:optional
	var pivot : HighchartsPivot;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var selected : Bool;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
typedef HighchartsHeatMapChart = { };
typedef HighchartsLineChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var connectEnds : Bool;
	@:optional
	var connectNulls : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var id : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPlacement : String;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var step : Bool;
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsPieChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var borderColor : String;
	@:optional
	var borderWidth : Float;
	@:optional
	var center : Array<String>;
	@:optional
	var color : String;
	@:optional
	var cursor : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var id : String;
	@:optional
	var ignoreHiddenPoint : Bool;
	@:optional
	var innerSize : haxe.extern.EitherType<Float, String>;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointPlacement : String;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showInLegend : Bool;
	@:optional
	var size : haxe.extern.EitherType<Float, String>;
	@:optional
	var slicedOffset : Float;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var visible : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsPolygonChart = { };
typedef HighchartsPyramidChart = { };
typedef HighchartsScatterChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var connectNulls : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var id : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPlacement : String;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsSolidGaugeChart = { };
typedef HighchartsSplineChart = {
	>HighchartsSeriesChart,
};
typedef HighchartsTreeMapChart = { };
typedef HighchartsWaterFallChart = { };
typedef HighchartsSeriesChart = {
	@:optional
	var allowPointSelect : Bool;
	@:optional
	var animation : Bool;
	@:optional
	var color : String;
	@:optional
	var connectEnds : Bool;
	@:optional
	var connectNulls : Bool;
	@:optional
	var cropThreshold : Float;
	@:optional
	var cursor : String;
	@:optional
	var dashStyle : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var enableMouseTracking : Bool;
	@:optional
	var events : HighchartsPlotEvents;
	@:optional
	var id : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var point : { var events : HighchartsPointEvents; };
	@:optional
	var pointInterval : Float;
	@:optional
	var pointPlacement : String;
	@:optional
	var pointStart : Float;
	@:optional
	var selected : Bool;
	@:optional
	var shadow : haxe.extern.EitherType<Bool, HighchartsShadow>;
	@:optional
	var showCheckbox : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var stacking : String;
	@:optional
	var states : { var hover : HighchartsAreaStates; };
	@:optional
	var stickyTracking : Bool;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var turboThreshold : Float;
	@:optional
	var visible : Float;
	@:optional
	var zIndex : Float;
};
typedef HighchartsPlotOptions = {
	@:optional
	var area : HighchartsAreaChart;
	@:optional
	var arearange : HighchartsAreaRangeChart;
	@:optional
	var areaspline : HighchartsAreaSplineChart;
	@:optional
	var areasplinerange : HighchartsAreaSplineRangeChart;
	@:optional
	var bar : HighchartsBarChart;
	@:optional
	var boxplot : HighchartsBoxPlotChart;
	@:optional
	var bubble : HighchartsBubbleChart;
	@:optional
	var column : HighchartsColumnChart;
	@:optional
	var columnrange : HighchartsColumnRangeChart;
	@:optional
	var errorbar : HighchartsErrorBarChart;
	@:optional
	var funnel : HighchartsFunnelChart;
	@:optional
	var gauge : HighchartsGaugeChart;
	@:optional
	var heatmap : HighchartsHeatMapChart;
	@:optional
	var line : HighchartsLineChart;
	@:optional
	var pie : HighchartsPieChart;
	@:optional
	var polygon : HighchartsPolygonChart;
	@:optional
	var pyramid : HighchartsPyramidChart;
	@:optional
	var scatter : HighchartsScatterChart;
	@:optional
	var series : HighchartsSeriesChart;
	@:optional
	var solidgauge : HighchartsSolidGaugeChart;
	@:optional
	var spline : HighchartsSplineChart;
	@:optional
	var treemap : HighchartsTreeMapChart;
	@:optional
	var waterfall : HighchartsWaterFallChart;
};
typedef HighchartsIndividualSeriesOptions = {
	@:optional
	var data : haxe.extern.EitherType<Array<Float>, haxe.extern.EitherType<Array<Array<Dynamic>>, Array<HighchartsDataPoint>>>;
	@:optional
	var index : Float;
	@:optional
	var legendIndex : Float;
	@:optional
	var name : String;
	@:optional
	var stack : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xAxis : Float;
	@:optional
	var yAxis : Float;
};
typedef HighchartsSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsSeriesChart,
};
typedef HighchartsAreaChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsAreaChart,
};
typedef HighchartsAreaRangeChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsAreaRangeChart,
};
typedef HighchartsAreaSplineChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsAreaSplineChart,
};
typedef HighchartsAreaSplineRangeChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsAreaSplineRangeChart,
};
typedef HighchartsBarChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsBarChart,
};
typedef HighchartsBoxPlotChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsBoxPlotChart,
};
typedef HighchartsBubbleChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsBubbleChart,
};
typedef HighchartsColumnChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsColumnChart,
};
typedef HighchartsColumnRangeChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsColumnRangeChart,
};
typedef HighchartsErrorBarChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsErrorBarChart,
};
typedef HighchartsFunnelChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsFunnelChart,
};
typedef HighchartsGaugeChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsGaugeChart,
};
typedef HighchartsHeatMapSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsHeatMapChart,
};
typedef HighchartsLineChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsLineChart,
};
typedef HighchartsPieChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsPieChart,
};
typedef HighchartsPolygonChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsPolygonChart,
};
typedef HighchartsPyramidChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsPyramidChart,
};
typedef HighchartsScatterChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsScatterChart,
};
typedef HighchartsSolidGaugeChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsSolidGaugeChart,
};
typedef HighchartsSplineChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsSplineChart,
};
typedef HighchartsTreeMapChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsTreeMapChart,
};
typedef HighchartsWaterFallChartSeriesOptions = {
	>HighchartsIndividualSeriesOptions,
	>HighchartsWaterFallChart,
};
typedef HighchartsDataPoint = {
	@:optional
	var color : String;
	@:optional
	var dataLabels : HighchartsDataLabels;
	@:optional
	var events : HighchartsPointEvents;
	@:optional
	var id : String;
	@:optional
	var legendIndex : Float;
	@:optional
	var marker : HighchartsMarker;
	@:optional
	var name : String;
	@:optional
	var sliced : Bool;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsSeriesOptions = {
	>HighchartsSeriesChart,
	@:optional
	var type : String;
	@:optional
	var data : haxe.extern.EitherType<Array<Float>, haxe.extern.EitherType<Array<Array<Float>>, Array<HighchartsDataPoint>>>;
	@:optional
	var index : Float;
	@:optional
	var legendIndex : Float;
	@:optional
	var name : String;
	@:optional
	var stack : haxe.extern.EitherType<String, Float>;
	@:optional
	var xAxis : Float;
	@:optional
	var yAxis : Float;
};
typedef HighchartsSubtitleOptions = {
	@:optional
	var align : String;
	@:optional
	var verticalAlign : String;
	@:optional
	var floating : Bool;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var text : String;
	@:optional
	var useHTML : Bool;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef HighchartsTitleOptions = {
	>HighchartsSubtitleOptions,
	@:optional
	var margin : Float;
};
typedef HighchartsCrosshairObject = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var dashStyle : String;
	@:optional
	var zIndex : Float;
};
typedef HighchartsPlotPoint = {
	var plotX : Float;
	var plotY : Float;
};
typedef HighchartsTooltipOptions = {
	@:optional
	var animation : Bool;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, HighchartsGradient>;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var crosshairs : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<HighchartsCrosshairObject, Array<Dynamic>>>>;
	@:optional
	var enabled : Bool;
	@:optional
	var footerFormat : String;
	@:optional
	var formatter : Void -> Dynamic;
	@:optional
	var pointFormat : String;
	@:optional
	var positioner : Float -> Float -> HighchartsPlotPoint -> { var x : Float; var y : Float; };
	@:optional
	var shadow : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var snap : Float;
	@:optional
	var style : HighchartsCSSObject;
	@:optional
	var useHTML : Bool;
	@:optional
	var valueDecimals : Float;
	@:optional
	var valuePrefix : String;
	@:optional
	var valueSuffix : String;
	@:optional
	var xDateFormat : String;
};
typedef HighchartsOptions = {
	@:optional
	var chart : HighchartsChartOptions;
	@:optional
	var colors : Array<String>;
	@:optional
	var credits : HighchartsCreditsOptions;
	@:optional
	var data : Dynamic;
	@:optional
	var drilldown : Dynamic;
	@:optional
	var exporting : HighchartsExportingOptions;
	@:optional
	var labels : HighchartsLabelsOptions;
	@:optional
	var legend : HighchartsLegendOptions;
	@:optional
	var loading : HighchartsLoadingOptions;
	@:optional
	var navigation : HighchartsNavigationOptions;
	@:optional
	var noData : Dynamic;
	@:optional
	var pane : HighchartsPaneOptions;
	@:optional
	var plotOptions : HighchartsPlotOptions;
	@:optional
	var series : Array<HighchartsIndividualSeriesOptions>;
	@:optional
	var subtitle : HighchartsSubtitleOptions;
	@:optional
	var title : HighchartsTitleOptions;
	@:optional
	var tooltip : HighchartsTooltipOptions;
	@:optional
	var xAxis : HighchartsAxisOptions;
	@:optional
	var yAxis : HighchartsAxisOptions;
};
typedef HighchartsGlobalOptions = {
	>HighchartsOptions,
	@:optional
	var global : HighchartsGlobalObject;
	@:optional
	var lang : HighchartsLangObject;
};
typedef HighchartsAxisObject = {
	function addPlotBand(options:HighchartsPlotBands):Void;
	function addPlotLine(options:HighchartsPlotLines):Void;
	function getExtremes():HighchartsExtremes;
	function removePlotBand(id:String):Void;
	function removePlotLine(id:String):Void;
	@:overload(function(categories:Array<String>, redraw:Bool):Void { })
	function setCategories(categories:Array<String>):Void;
	@:overload(function(min:Float, max:Float, redraw:Bool):Void { })
	@:overload(function(min:Float, max:Float, redraw:Bool, animation:haxe.extern.EitherType<Bool, HighchartsAnimation>):Void { })
	function setExtremes(min:Float, max:Float):Void;
	@:overload(function(title:HighchartsAxisTitle, redraw:Bool):Void { })
	function setTitle(title:HighchartsAxisTitle):Void;
};
typedef HighchartsChartObject = {
	function addAxis(options:HighchartsAxisOptions, ?isX:Bool, ?redraw:Bool, ?animation:haxe.extern.EitherType<Bool, HighchartsAnimation>):HighchartsAxisObject;
	function addSeries<T:(HighchartsIndividualSeriesOptions)>(options:T, ?redraw:Bool, ?animation:haxe.extern.EitherType<Bool, HighchartsAnimation>):T;
	function addSeriesAsDrilldown(point:HighchartsPointObject, seriesOptions:HighchartsSeriesOptions):Void;
	var container : HTMLElement;
	function destroy():Void;
	function drillUp():Void;
	@:overload(function(options:HighchartsExportingOptions):Void { })
	@:overload(function(options:HighchartsExportingOptions, chartOptions:HighchartsChartOptions):Void { })
	function exportChart():Void;
	function get(id:String):haxe.extern.EitherType<HighchartsAxisObject, haxe.extern.EitherType<HighchartsSeriesObject, HighchartsPointObject>>;
	@:overload(function(additionalOptions:HighchartsChartOptions):String { })
	function getSVG():String;
	function getSelectedPoints():Array<HighchartsPointObject>;
	function getSelectedSeries():Array<HighchartsSeriesObject>;
	function hideLoading():Void;
	var options : HighchartsChartOptions;
	function print():Void;
	function redraw():Void;
	function reflow():Void;
	var series : Array<HighchartsSeriesObject>;
	@:overload(function(width:Float, height:Float, animation:Bool):Void { })
	@:overload(function(width:Float, height:Float, animation:HighchartsAnimation):Void { })
	function setSize(width:Float, height:Float):Void;
	@:overload(function(title:HighchartsTitleOptions, subtitle:HighchartsSubtitleOptions):Void { })
	@:overload(function(title:HighchartsTitleOptions, subtitle:HighchartsSubtitleOptions, redraw:Bool):Void { })
	function setTitle(title:HighchartsTitleOptions):Void;
	@:overload(function(str:String):Void { })
	function showLoading():Void;
	var xAxis : Array<HighchartsAxisObject>;
	var yAxis : Array<HighchartsAxisObject>;
	var renderer : HighchartsRendererObject;
};
typedef HighchartsChart = {
	@:overload(function(options:HighchartsOptions, callback:HighchartsChartObject -> Void):HighchartsChartObject { })
	function new(options:HighchartsOptions):HighchartsChartObject;
};
typedef HighchartsElementObject = {
	@:overload(function(parent:HighchartsElementObject):HighchartsElementObject { })
	function add():HighchartsElementObject;
	function animate(attributes:Dynamic, ?animation:Dynamic):HighchartsElementObject;
	function attr(hash:Dynamic):HighchartsElementObject;
	function css(hash:HighchartsCSSObject):HighchartsElementObject;
	function destroy():Void;
	function getBBox():{ var x : Float; var y : Float; var height : Float; var width : Float; };
	function on(eventType:String, handler:Void -> Void):HighchartsElementObject;
	function toFront():HighchartsElementObject;
};
typedef HighchartsRendererObject = {
	function arc(centerX:Float, centerY:Float, outerRadius:Float, innerRadius:Float, start:Float, end:Float):HighchartsElementObject;
	function circle(centerX:Float, centerY:Float, radius:Float):HighchartsElementObject;
	function g(name:String):HighchartsElementObject;
	function image(source:String, x:Float, y:Float, width:Float, height:Float):HighchartsElementObject;
	function path(path:Array<Dynamic>):HighchartsElementObject;
	function rect(x:Float, y:Float, width:Float, height:Float, cornerRadius:Float):HighchartsElementObject;
	function text(str:String, x:Float, y:Float):HighchartsElementObject;
};
typedef HighchartsRenderer = {
	function new(parentNode:HTMLElement, width:Float, height:Float):HighchartsRendererObject;
};
typedef HighchartsStatic = {
	var Chart : HighchartsChart;
	var Renderer : HighchartsRenderer;
	function Color(color:haxe.extern.EitherType<String, HighchartsGradient>):haxe.extern.EitherType<String, HighchartsGradient>;
	function dateFormat(format:String, ?time:Float, ?capitalize:Bool):String;
	function numberFormat(value:Float, ?decimals:Float, ?decimalPoint:String, ?thousandsSep:String):String;
	function setOptions(options:HighchartsGlobalOptions):HighchartsOptions;
	function getOptions():HighchartsOptions;
	function map(array:Array<Dynamic>, fn:haxe.Constraints.Function):Array<Dynamic>;
};
typedef HighchartsPointObject = {
	var category : haxe.extern.EitherType<String, Float>;
	var percentage : Float;
	@:overload(function(redraw:Bool):Void { })
	@:overload(function(redraw:Bool, animation:Bool):Void { })
	@:overload(function(redraw:Bool, animation:HighchartsAnimation):Void { })
	function remove():Void;
	@:overload(function(select:Bool):Void { })
	@:overload(function(select:Bool, accumulate:Bool):Void { })
	function select():Void;
	var selected : Bool;
	var series : HighchartsSeriesObject;
	@:overload(function(sliced:Bool):Void { })
	@:overload(function(sliced:Bool, redraw:Bool):Void { })
	@:overload(function(sliced:Bool, redraw:Bool, animation:Bool):Void { })
	@:overload(function(sliced:Bool, redraw:Bool, animation:HighchartsAnimation):Void { })
	function slice():Void;
	var total : Float;
	@:overload(function(options:Dynamic, redraw:Bool):Void { })
	@:overload(function(options:Dynamic, redraw:Bool, animation:Bool):Void { })
	@:overload(function(options:Dynamic, redraw:Bool, animation:HighchartsAnimation):Void { })
	function update(options:Dynamic):Void;
	var x : Float;
	var y : Float;
};
typedef HighchartsSeriesObject = {
	@:overload(function(options:haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<Dynamic>, HighchartsDataPoint>>, redraw:Bool, shift:Bool):Void { })
	@:overload(function(options:haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<Dynamic>, HighchartsDataPoint>>, redraw:Bool, shift:Bool, animation:Bool):Void { })
	@:overload(function(options:haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<Dynamic>, HighchartsDataPoint>>, redraw:Bool, shift:Bool, animation:HighchartsAnimation):Void { })
	function addPoint(options:haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<Dynamic>, HighchartsDataPoint>>):Void;
	var chart : HighchartsChartObject;
	var data : Array<HighchartsDataPoint>;
	function hide():Void;
	var name : String;
	var options : HighchartsSeriesOptions;
	@:overload(function(redraw:Bool):Void { })
	function remove():Void;
	@:overload(function(selected:Bool):Void { })
	function select():Void;
	var selected : Bool;
	@:overload(function(data:Array<Float>, redraw:Bool):Void { })
	@:overload(function(data:Array<Array<Float>>):Void { })
	@:overload(function(data:Array<Array<Float>>, redraw:Bool):Void { })
	@:overload(function(data:Array<HighchartsDataPoint>):Void { })
	@:overload(function(data:Array<HighchartsDataPoint>, redraw:Bool):Void { })
	function setData(data:Array<Float>):Void;
	@:overload(function(visible:Bool, redraw:Bool):Void { })
	function setVisible(visible:Bool):Void;
	function show():Void;
	var type : String;
	function update(options:HighchartsSeriesOptions, ?redraw:Bool):Void;
	var visible : Bool;
	var xAxis : HighchartsAxisObject;
	var yAxis : HighchartsAxisObject;
};
typedef JQuery = {
	@:overload(function(options:HighchartsOptions):JQuery { })
	@:overload(function(options:HighchartsOptions, callback:HighchartsChartObject -> Void):JQuery { })
	function highcharts():HighchartsChartObject;
};
extern class HighchartsTopLevel {
	static var Highcharts : HighchartsStatic;
}
