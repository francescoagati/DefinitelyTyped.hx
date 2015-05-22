extern class Chart {
	var options : ChartOptions;
	function new(containerId:String, ?options:ChartOptions):Void;
	function render(?options:ChartOptions):Void;
}
typedef CultureInfo = {
	@:optional
	var decimalSeparator : String;
	@:optional
	var digitGroupSeparator : String;
	@:optional
	var zoomText : String;
	@:optional
	var panText : String;
	@:optional
	var resetText : String;
	@:optional
	var savePNGText : String;
	@:optional
	var saveJPGText : String;
	@:optional
	var menuText : String;
	@:optional
	var days : Array<String>;
	@:optional
	var shortDays : Array<String>;
	@:optional
	var months : Array<String>;
	@:optional
	var shortMonths : Array<String>;
};
typedef ChartOptions = {
	@:optional
	var interactivityEnabled : Bool;
	@:optional
	var animationEnabled : Bool;
	@:optional
	var exportFileName : String;
	@:optional
	var exportEnabled : Bool;
	@:optional
	var zoomEnabled : Bool;
	@:optional
	var theme : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var colorSet : String;
	@:optional
	var culture : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	var title : ChartTitleOptions;
	@:optional
	var legend : ChartLegendOptions;
	@:optional
	var axisX : ChartAxisXOptions;
	@:optional
	var axisY : ChartAxisYOptions;
	@:optional
	var toolTip : ChartToolTipOptions;
	var data : Array<ChartDataOptions>;
};
typedef ChartTitleOptions = {
	@:optional
	var text : String;
	@:optional
	var verticalAlign : String;
	@:optional
	var horizontalAlign : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontFamily : String;
	@:optional
	var fontWeight : String;
	@:optional
	var fontColor : String;
	@:optional
	var fontStyle : String;
	@:optional
	var borderThickness : Float;
	@:optional
	var cornerRadius : Float;
	@:optional
	var borderColor : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var margin : Float;
	@:optional
	var padding : Float;
};
typedef ChartLegendOptions = {
	@:optional
	var fontSize : Float;
	@:optional
	var fontFamily : String;
	@:optional
	var fontColor : String;
	@:optional
	var fontWeight : String;
	@:optional
	var fontStyle : String;
	@:optional
	var verticalAlign : String;
	@:optional
	var horizontalAlign : String;
	@:optional
	var itemmouseover : ChartEvent -> Void;
	@:optional
	var itemmousemove : ChartEvent -> Void;
	@:optional
	var itemmouseout : ChartEvent -> Void;
	@:optional
	var itemclick : ChartEvent -> Void;
};
typedef ChartEvent = {
	var x : Dynamic;
	var y : Float;
	var chart : Chart;
	var dataPoint : ChartDataPoint;
	var dataSeries : ChartDataOptions;
	var dataPointIndex : Float;
	var dataSeriesIndex : Float;
};
typedef ChartAxisXOptions = {
	@:optional
	var title : String;
	@:optional
	var titleFontColor : String;
	@:optional
	var titleFontSize : Float;
	@:optional
	var titleFontFamily : String;
	@:optional
	var titleFontWeight : String;
	@:optional
	var titleFontStyle : String;
	@:optional
	var margin : Float;
	@:optional
	var labelAngle : Float;
	@:optional
	var labelFontColor : String;
	@:optional
	var labelFontSize : Float;
	@:optional
	var labelFontFamily : String;
	@:optional
	var labelFontWeight : String;
	@:optional
	var labelFontStyle : String;
	@:optional
	var prefix : String;
	@:optional
	var suffix : String;
	@:optional
	var valueFormatString : String;
	@:optional
	var minimum : Float;
	@:optional
	var maximum : Float;
	@:optional
	var interval : Float;
	@:optional
	var intervalType : String;
	@:optional
	var tickLength : Float;
	@:optional
	var tickColor : String;
	@:optional
	var tickThickness : Float;
	@:optional
	var lineColor : String;
	@:optional
	var lineThickness : String;
	@:optional
	var interlaceColor : String;
	@:optional
	var gridThickness : Float;
	@:optional
	var gridColor : String;
	@:optional
	var stripLines : ChartStripLines;
};
typedef ChartStripLines = {
	@:optional
	var value : Float;
	@:optional
	var startValue : Float;
	@:optional
	var endValue : Float;
	@:optional
	var thickness : Float;
	@:optional
	var color : String;
	@:optional
	var label : String;
	@:optional
	var labelBackgroundColor : String;
	@:optional
	var labelFontFamily : String;
	@:optional
	var labelFontColor : String;
	@:optional
	var labelFontSize : Float;
	@:optional
	var labelFontWeight : String;
	@:optional
	var labelFontStyle : String;
};
typedef ChartAxisYOptions = {
	>ChartAxisXOptions,
	@:optional
	var includeZero : Bool;
};
typedef ChartToolTipOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var content : String;
	@:optional
	var animationEnabled : Bool;
	@:optional
	var borderColor : String;
};
typedef ChartDataCommon = {
	@:optional
	var name : String;
	@:optional
	var color : String;
	@:optional
	var indexLabel : String;
	@:optional
	var indexLabelPlacement : String;
	@:optional
	var indexLabelOrientation : String;
	@:optional
	var indexLabelBackgroundColor : String;
	@:optional
	var indexLabelFontStyle : String;
	@:optional
	var indexLabelFontColor : String;
	@:optional
	var indexLabelFontSize : Float;
	@:optional
	var indexLabelFontFamily : String;
	@:optional
	var indexLabelFontWeight : String;
	@:optional
	var indexLabelLineColor : String;
	@:optional
	var indexLabelLineThickness : String;
	@:optional
	var toolTipContent : String;
	@:optional
	var markerType : String;
	@:optional
	var markerColor : String;
	@:optional
	var markerSize : Float;
	@:optional
	var markerBorderColor : String;
	@:optional
	var markerBorderThickness : Float;
	@:optional
	var legendText : String;
	@:optional
	var legendMarkerType : String;
	@:optional
	var click : ChartEvent -> Void;
	@:optional
	var legendMarkerColor : String;
	@:optional
	var mouseover : ChartEvent -> Void;
	@:optional
	var mousemove : ChartEvent -> Void;
	@:optional
	var mouseout : ChartEvent -> Void;
};
typedef ChartDataOptions = {
	>ChartDataCommon,
	@:optional
	var visible : Bool;
	@:optional
	var type : String;
	@:optional
	var axisYType : String;
	@:optional
	var xValueType : String;
	@:optional
	var yValueFormatString : String;
	@:optional
	var xValueFormatString : String;
	@:optional
	var zValueFormatString : String;
	@:optional
	var bevelEnabled : Bool;
	@:optional
	var fillOpacity : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var lineThickness : Float;
	@:optional
	var showInLegend : Bool;
	@:optional
	var risingColor : String;
	var dataPoints : Array<ChartDataPoint>;
};
typedef ChartDataPoint = {
	>ChartDataCommon,
	@:optional
	var x : Dynamic;
	@:optional
	var y : Float;
	@:optional
	var z : Float;
	@:optional
	var label : String;
	@:optional
	var exploded : Bool;
	@:optional
	var legendMarkerColor : String;
};
extern class CanvasJSTopLevel {
	static function addColorSet(colorSetName:String, colorSetArray:Array<String>):Void;
	static function addCultureInfo(culture:String, info:CultureInfo):Void;
}
