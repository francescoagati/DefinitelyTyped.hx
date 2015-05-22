typedef ChartDataSet = {
	var label : String;
	var fillColor : String;
	var strokeColor : String;
	@:optional
	var pointColor : String;
	@:optional
	var pointStrokeColor : String;
	@:optional
	var pointHighlightFill : String;
	@:optional
	var pointHighlightStroke : String;
	@:optional
	var highlightFill : String;
	@:optional
	var highlightStroke : String;
	var data : Array<Float>;
};
typedef LinearChartData = {
	var labels : Array<String>;
	var datasets : Array<ChartDataSet>;
};
typedef CircularChartData = {
	var value : Float;
	var color : String;
	@:optional
	var highlight : String;
	@:optional
	var label : String;
};
typedef ChartSettings = {
	var animation : Bool;
	var animationSteps : Float;
	var animationEasing : String;
	var showScale : Bool;
	var scaleOverride : Bool;
	var scaleSteps : Float;
	var scaleStepWidth : Float;
	var scaleStartValue : Float;
	var scaleLineColor : String;
	var scaleLineWidth : Float;
	var scaleShowLabels : Bool;
	var scaleLabel : String;
	var scaleIntegersOnly : Bool;
	var scaleBeginAtZero : Bool;
	var scaleFontFamily : String;
	var scaleFontSize : Float;
	var scaleFontStyle : String;
	var scaleFontColor : String;
	var responsive : Bool;
	var maintainAspectRatio : Bool;
	var showTooltips : Bool;
	var tooltipEvents : Array<String>;
	var tooltipFillColor : String;
	var tooltipFontFamily : String;
	var tooltipFontSize : Float;
	var tooltipFontStyle : String;
	var tooltipFontColor : String;
	var tooltipTitleFontFamily : String;
	var tooltipTitleFontSize : Float;
	var tooltipTitleFontStyle : String;
	var tooltipTitleFontColor : String;
	var tooltipYPadding : Float;
	var tooltipXPadding : Float;
	var tooltipCaretSize : Float;
	var tooltipCornerRadius : Float;
	var tooltipXOffset : Float;
	var tooltipTemplate : String;
	var multiTooltipTemplate : String;
	var onAnimationProgress : Void -> Dynamic;
	var onAnimationComplete : Void -> Dynamic;
};
typedef ChartOptions = {
	@:optional
	var scaleShowGridLines : Bool;
	@:optional
	var scaleGridLineColor : String;
	@:optional
	var scaleGridLineWidth : Float;
	@:optional
	var legendTemplate : String;
};
typedef PointsAtEvent = {
	var value : Float;
	var label : String;
	var datasetLabel : String;
	var strokeColor : String;
	var fillColor : String;
	var highlightFill : String;
	var highlightStroke : String;
	var x : Float;
	var y : Float;
};
typedef ChartInstance = {
	var clear : Void -> Void;
	var stop : Void -> Void;
	var resize : Void -> Void;
	var destroy : Void -> Void;
	var toBase64Image : Void -> String;
	var generateLegend : Void -> String;
};
typedef LinearInstance = {
	>ChartInstance,
	var getPointsAtEvent : Event -> Array<PointsAtEvent>;
	var update : Void -> Void;
	var addData : Array<Float> -> String -> Void;
	var removeData : Void -> Void;
};
typedef CircularInstance = {
	>ChartInstance,
	var getSegmentsAtEvent : Event -> Array<{ }>;
	var update : Void -> Void;
	var addData : CircularChartData -> ?Float -> Void;
	var removeData : Float -> Void;
	var segments : Array<CircularChartData>;
};
typedef LineChartOptions = {
	>ChartOptions,
	@:optional
	var bezierCurve : Bool;
	@:optional
	var bezierCurveTension : Float;
	@:optional
	var pointDot : Bool;
	@:optional
	var pointDotRadius : Float;
	@:optional
	var pointDotStrokeWidth : Float;
	@:optional
	var pointHitDetectionRadius : Float;
	@:optional
	var datasetStroke : Bool;
	@:optional
	var datasetStrokeWidth : Float;
	@:optional
	var datasetFill : Bool;
};
typedef BarChartOptions = {
	>ChartOptions,
	@:optional
	var scaleBeginAtZero : Bool;
	@:optional
	var barShowStroke : Bool;
	@:optional
	var barStrokeWidth : Float;
	@:optional
	var barValueSpacing : Float;
	@:optional
	var barDatasetSpacing : Float;
};
typedef RadarChartOptions = {
	@:optional
	var scaleShowLine : Bool;
	@:optional
	var angleShowLineOut : Bool;
	@:optional
	var scaleShowLabels : Bool;
	@:optional
	var scaleBeginAtZero : Bool;
	@:optional
	var angleLineColor : String;
	@:optional
	var angleLineWidth : Float;
	@:optional
	var pointLabelFontFamily : String;
	@:optional
	var pointLabelFontStyle : String;
	@:optional
	var pointLabelFontSize : Float;
	@:optional
	var pointLabelFontColor : String;
	@:optional
	var pointDot : Bool;
	@:optional
	var pointDotRadius : Float;
	@:optional
	var pointDotStrokeWidth : Float;
	@:optional
	var pointHitDetectionRadius : Float;
	@:optional
	var datasetStroke : Bool;
	@:optional
	var datasetStrokeWidth : Float;
	@:optional
	var datasetFill : Bool;
	@:optional
	var legendTemplate : String;
};
typedef PolarAreaChartOptions = {
	@:optional
	var scaleShowLabelBackdrop : Bool;
	@:optional
	var scaleBackdropColor : String;
	@:optional
	var scaleBeginAtZero : Bool;
	@:optional
	var scaleBackdropPaddingY : Float;
	@:optional
	var scaleBackdropPaddingX : Float;
	@:optional
	var scaleShowLine : Bool;
	@:optional
	var segmentShowStroke : Bool;
	@:optional
	var segmentStrokeColor : String;
	@:optional
	var segmentStrokeWidth : Float;
	@:optional
	var animationSteps : Float;
	@:optional
	var animationEasing : String;
	@:optional
	var animateRotate : Bool;
	@:optional
	var animateScale : Bool;
	@:optional
	var legendTemplate : String;
};
typedef PieChartOptions = {
	@:optional
	var segmentShowStroke : Bool;
	@:optional
	var segmentStrokeColor : String;
	@:optional
	var segmentStrokeWidth : Float;
	@:optional
	var percentageInnerCutout : Float;
	@:optional
	var animationSteps : Float;
	@:optional
	var animationEasing : String;
	@:optional
	var animateRotate : Bool;
	@:optional
	var animateScale : Bool;
	@:optional
	var legendTemplate : String;
};
typedef Chart = {
	function Line(data:LinearChartData, ?options:LineChartOptions):LinearInstance;
	function Bar(data:LinearChartData, ?options:BarChartOptions):LinearInstance;
	function Radar(data:LinearChartData, ?options:RadarChartOptions):LinearInstance;
	function PolarArea(data:Array<CircularChartData>, ?options:PolarAreaChartOptions):CircularInstance;
	function Pie(data:Array<CircularChartData>, ?options:PieChartOptions):CircularInstance;
	function Doughnut(data:Array<CircularChartData>, ?options:PieChartOptions):CircularInstance;
};
extern class ChartTopLevel {
	static var Chart : { function new(context:CanvasRenderingContext2D):Chart; var defaults : { var global : ChartSettings; }; };
}
