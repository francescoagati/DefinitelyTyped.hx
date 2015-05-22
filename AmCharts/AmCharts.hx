extern class AmPieChart {
	var alphaField : String;
	var angle : Float;
	var balloonText : String;
	var chartData : Array<Dynamic>;
	var colorField : String;
	var colors : Array<Dynamic>;
	var depth3D : Float;
	var descriptionField : String;
	var gradientRatio : Array<Float>;
	var groupedAlpha : Float;
	var groupedColor : String;
	var groupedDescription : String;
	var groupedPulled : Bool;
	var groupedTitle : String;
	var groupPercent : Float;
	var hideLabelsPercent : Float;
	var hoverAlpha : Float;
	var innerRadius : Dynamic;
	var labelRadius : Float;
	var labelRadiusField : String;
	var labelsEnabled : Bool;
	var labelText : String;
	var labelTickAlpha : Float;
	var labelTickColor : String;
	var marginBottom : Float;
	var marginLeft : Float;
	var marginRight : Float;
	var marginTop : Float;
	var minRadius : Float;
	var outlineAlpha : Float;
	var outlineColor : String;
	var outlineThickness : Float;
	var pieAlpha : Float;
	var pieBaseColor : String;
	var pieBrightnessStep : Float;
	var pieX : Dynamic;
	var pieY : Dynamic;
	var pulledField : String;
	var pullOutDuration : Float;
	var pullOutEffect : String;
	var pullOutOnlyOne : Bool;
	var pullOutRadius : Dynamic;
	var radius : Dynamic;
	var sequencedAnimation : Bool;
	var startAlpha : Float;
	var startAngle : Float;
	var startDuration : Float;
	var startEffect : String;
	var startRadius : Dynamic;
	var titleField : String;
	var urlField : String;
	var urlTarget : String;
	var valueField : String;
	var visibleInLegendField : String;
	function animateAgain():Dynamic;
	function clickSlice(index:Dynamic):Dynamic;
	function hideSlice(index:Dynamic):Dynamic;
	function rollOutSlice(index:Dynamic):Dynamic;
	function rollOverSlice(index:Dynamic):Dynamic;
	function showSlice(index:Dynamic):Dynamic;
	function addListener(type:String, handler:{ var type : String; var dataItem : Slice; } -> Void):Dynamic;
}
extern class AmRadarChart extends AmCoordinateChart {
	var marginBottom : Float;
	var marginLeft : Float;
	var marginRight : Float;
	var marginTop : Float;
	var radius : Dynamic;
}
extern class AmXYChart extends AmRectangularChart {
	var hideXScrollbar : Bool;
	var hideYScrollbar : Bool;
	var maxZoomFactor : Float;
	function zoomOut():Dynamic;
}
extern class Guide {
	var angle : Float;
	var balloonColor : String;
	var balloonText : String;
	var category : String;
	var dashLength : Float;
	var date : Date;
	var fillAlpha : Float;
	var fillColor : String;
	var inside : Bool;
	var label : String;
	var labelRotation : Float;
	var lineAlpha : Float;
	var lineColor : String;
	var lineThickness : Float;
	var tickLength : Float;
	var toAngle : Float;
	var toCategory : String;
	var toDate : Date;
	var toValue : Float;
	var value : Float;
}
extern class ImagesSettings {
	var alpha : Float;
	var balloonText : String;
	var centered : Bool;
	var color : String;
	var descriptionWindowHeight : Float;
	var descriptionWindowWidth : Float;
	var descriptionWindowX : Float;
	var descriptionWindowY : Float;
	var labelColor : String;
	var labelFontSize : Float;
	var labelPosition : String;
	var labelRollOverColor : String;
	var outlineAlpha : Float;
	var outlineColor : String;
	var outlineThickness : Float;
	var rollOverColor : String;
	var rollOverScale : Float;
	var selectedScale : Float;
}
extern class AreasSettings {
	var alpha : Float;
	var autoZoom : Bool;
	var balloonText : String;
	var color : String;
	var colorSolid : String;
	var descriptionWindowHeight : Float;
	var descriptionWindowWidth : Float;
	var descriptionWindowX : Float;
	var descriptionWindowY : Float;
	var outlineAlpha : Float;
	var outlineColor : String;
	var outlineThickness : Float;
	var rollOverColor : String;
	var rollOverOutlineColor : String;
	var selectedColor : String;
	var unlistedAreasAlpha : Float;
	var unlistedAreasColor : String;
	var unlistedAreasOutlineAlpha : Float;
	var unlistedAreasOutlineColor : String;
}
extern class Slice {
	var alpha : Float;
	var color : String;
	var dataContext : Dynamic;
	var description : String;
	var hidden : Bool;
	var percents : Float;
	var pulled : Bool;
	var title : String;
	var url : String;
	var value : Float;
	var visibleInLegend : Bool;
}
extern class AmStockChart {
	var animationPlayed : Bool;
	var balloon : AmBalloon;
	var categoryAxesSettings : CategoryAxesSettings;
	var chartCreated : Bool;
	var chartCursorSettings : ChartCursorSettings;
	var chartScrollbarSettings : ChartScrollbarSettings;
	var colors : Array<Dynamic>;
	var comparedDataSets : Array<Dynamic>;
	var dataSets : Array<Dynamic>;
	var dataSetSelector : DataSetSelector;
	var endDate : Date;
	var firstDayOfWeek : Float;
	var glueToTheEnd : Bool;
	var legendSettings : LegendSettings;
	var mainDataSet : DataSet;
	var panels : Array<Dynamic>;
	var panelsSettings : PanelsSettings;
	var periodSelector : PeriodSelector;
	var scrollbarChart : AmSerialChart;
	var startDate : Date;
	var stockEventsSettings : Dynamic;
	var valueAxesSettings : ValueAxesSettings;
	var version : String;
	var zoomOutOnDataSetChange : Bool;
	function addPanel(panel:StockPanel):Dynamic;
	function addPanelAt(panel:StockPanel, index:Float):Dynamic;
	function clear():Dynamic;
	function hideStockEvents():Dynamic;
	@:overload(function(chart:AmChart, type:String, handler:Dynamic):Dynamic { })
	function removeListener(obj:Dynamic, type:Dynamic, handler:Dynamic):Dynamic;
	function removePanel(panel:StockPanel):Dynamic;
	function showStockEvents():Dynamic;
	function validateData():Dynamic;
	function validateNow():Dynamic;
	function zoom(startDate:Dynamic, endDate:Dynamic):Dynamic;
	function zoomOut():Dynamic;
	@:overload(function(type:String, handler:{ var type : String; var eventObject : Dynamic; var graph : AmGraph; var date : Date; var chart : AmStockChart; } -> Void):Dynamic { })
	@:overload(function(type:String, handler:{ var type : String; var startDate : Date; var endDate : Date; var period : String; var chart : AmStockChart; } -> Void):Dynamic { })
	@:overload(function(type:String, handler:{ var type : String; var panel : StockPanel; var chart : AmStockChart; } -> Void):Dynamic { })
	function addListener(type:String, handler:{ var type : String; var chart : AmStockChart; } -> Void):Dynamic;
}
extern class ValueAxesSettings {
	var autoGridCount : Bool;
	var axisAlpha : Float;
	var axisColor : String;
	var axisThickness : Float;
	var color : String;
	var dashLength : Float;
	var fillAlpha : Float;
	var fillColor : String;
	var gridAlpha : Float;
	var gridColor : String;
	var gridCount : Float;
	var gridThickness : Float;
	var includeGuidesInMinMax : Bool;
	var includeHidden : Bool;
	var inside : Bool;
	var integersOnly : Bool;
	var labelFrequency : Float;
	var labelsEnabled : Bool;
	var logarithmic : Bool;
	var offset : Float;
	var position : String;
	var reversed : Bool;
	var showFirstLabel : Bool;
	var showLastLabel : Bool;
	var stackType : String;
	var tickLength : Float;
	var unit : String;
	var unitPosition : String;
}
extern class AmLegend {
	var align : String;
	var autoMargins : Bool;
	var backgroundAlpha : Float;
	var backgroundColor : String;
	var borderAlpha : Float;
	var borderColor : String;
	var bottom : Float;
	var color : String;
	var data : Array<Dynamic>;
	var equalWidths : Bool;
	var fontSize : Float;
	var horizontalGap : Float;
	var labelText : String;
	var left : Float;
	var marginBottom : Float;
	var marginLeft : Float;
	var marginRight : Float;
	var marginTop : Float;
	var markerBorderAlpha : Float;
	var markerBorderColor : String;
	var markerBorderThickness : Float;
	var markerDisabledColor : String;
	var markerLabelGap : Float;
	var markerSize : Float;
	var markerType : String;
	var maxColumns : Float;
	var position : String;
	var reversedOrder : Bool;
	var right : Float;
	var rollOverColor : String;
	var rollOverGraphAlpha : Float;
	var showEntries : Bool;
	var spacing : Float;
	var switchable : Bool;
	var switchColor : String;
	var switchType : String;
	var textClickEnabled : Bool;
	var top : Float;
	var useMarkerColorForLabels : Bool;
	var valueAlign : String;
	var valueText : String;
	var valueWidth : Float;
	var verticalGap : Float;
	function addListener(type:String, handler:{ var type : String; var dataItem : Dynamic; var chart : AmChart; } -> Void):Dynamic;
	function removeListener(chart:AmChart, type:String, handler:Dynamic):Dynamic;
}
extern class StockLegend extends AmLegend {
	var valueTextComparing : String;
	var valueTextRegular : String;
}
extern class StockPanel extends AmSerialChart {
	var allowTurningOff : Bool;
	var drawingIconsEnabled : Bool;
	var drawOnAxis : ValueAxis;
	var eraseAll : Bool;
	var iconSize : Float;
	var percentHeight : Float;
	var recalculateToPercents : String;
	var showCategoryAxis : Bool;
	var stockGraphs : Array<StockGraph>;
	var stockLegend : StockLegend;
	var title : String;
	var trendLineAlpha : Float;
	var trendLineColor : String;
	var trendLineDashLength : Float;
	var trendLineThickness : Float;
	function addStockGraph(graph:StockGraph):Dynamic;
	function removeStockGraph(graph:StockGraph):Dynamic;
}
extern class AmChart {
	function new(theme:Dynamic):Void;
	var backgroundColor : String;
	var balloon : AmBalloon;
	var borderAlpha : Float;
	var borderColor : String;
	var color : String;
	var dataProvider : Array<Dynamic>;
	var fontFamily : String;
	var fontSize : Float;
	var height : Dynamic;
	var legendDiv : HTMLElement;
	var numberFormatter : Dynamic;
	var panEventsEnabled : Bool;
	var percentFormatter : Dynamic;
	var prefixesOfBigNumbers : Array<Dynamic>;
	var prefixesOfSmallNumbers : Array<Dynamic>;
	var usePrefixes : Bool;
	var version : String;
	function addLabel(x:Float, y:Float, text:String, align:String, size:Dynamic, color:String, rotation:Dynamic, alpha:Float, bold:Bool, url:String):Dynamic;
	@:overload(function(legend:AmLegend, legendDiv:HTMLElement):Dynamic { })
	function addLegend(legend:AmLegend, ?legendDivId:String):Dynamic;
	function addTitle(text:Dynamic, size:Dynamic, color:Dynamic, alpha:Dynamic, bold:Dynamic):Dynamic;
	function clear():Dynamic;
	function clearLabels():Dynamic;
	function invalidateSize():Dynamic;
	function removeLegend():Dynamic;
	function validateData():Dynamic;
	function validateNow():Dynamic;
	@:overload(function(container:String):Void { })
	function write(container:HTMLElement):Void;
	function addListener(type:String, handler:{ var type : String; var chart : AmChart; } -> Void):Dynamic;
	function removeListener(chart:AmChart, type:String, handler:Dynamic):Dynamic;
}
extern class AmCoordinateChart extends AmChart {
	var colors : Array<Dynamic>;
	var graphs : Array<Dynamic>;
	var plotAreaBorderAlpha : Float;
	var plotAreaBorderColor : String;
	var plotAreaFillAlphas : Float;
	var plotAreaFillColors : Dynamic;
	var sequencedAnimation : Bool;
	var startAlpha : Float;
	var startDuration : Float;
	var startEffect : String;
	var urlTarget : Dynamic;
	var valueAxes : Array<Dynamic>;
	function addGraph(graph:AmGraph):Dynamic;
	function addValueAxis(axis:ValueAxis):Dynamic;
	function animateAgain():Dynamic;
	function getGraphById(graphId:String):AmGraph;
	function getValueAxisById(axisId:String):ValueAxis;
	function hideGraph(graph:AmGraph):Dynamic;
	function hideGraphsBalloon(graph:AmGraph):Dynamic;
	function highlightGraph(graph:AmGraph):Dynamic;
	function removeGraph(graph:AmGraph):Dynamic;
	function removeValueAxis(axis:ValueAxis):Dynamic;
	function showGraph(graph:AmGraph):Dynamic;
	function showGraphsBalloon(graph:AmGraph):Dynamic;
	function unhighlightGraph(graph:AmGraph):Dynamic;
	function addListener(type:String, handler:{ var type : String; var graph : AmGraph; var item : GraphDataItem; var index : Float; var chart : AmChart; } -> Void):Dynamic;
}
extern class GraphDataItem {
	var alpha : Float;
	var bullet : String;
	var bulletSize : Float;
	var category : String;
	var color : String;
	var customBullet : String;
	var dataContext : Dynamic;
	var description : String;
	var fillColors : Array<Dynamic>;
	var percents : Dynamic;
	var serialDataItem : SerialDataItem;
	var url : String;
	var values : Dynamic;
	var x : Float;
	var y : Float;
}
extern class SerialDataItem {
	var axes : Dynamic;
	var category : Dynamic;
	var time : Float;
	var x : Float;
}
extern class CategoryAxis extends AxisBase {
	var boldPeriodBeginning : Bool;
	var dateFormats : Array<Dynamic>;
	var equalSpacing : Bool;
	var forceShowField : String;
	var gridPosition : String;
	var minPeriod : String;
	var parseDates : Bool;
	var startOnAxis : Bool;
	function categoryToCoordinate(category:Dynamic):Dynamic;
	function coordinateToDate(coordinate:Dynamic):Dynamic;
	function dateToCoordinate(date:Dynamic):Dynamic;
	function xToIndex(x:Dynamic):Dynamic;
}
extern class ChartScrollbar {
	var autoGridCount : Bool;
	var backgroundAlpha : Float;
	var backgroundColor : String;
	var categoryAxis : CategoryAxis;
	var color : String;
	var graph : AmGraph;
	var graphFillAlpha : Float;
	var graphFillColor : String;
	var graphLineAlpha : Float;
	var graphLineColor : String;
	var graphType : String;
	var gridAlpha : Float;
	var gridColor : String;
	var gridCount : Float;
	var hideResizeGrips : Bool;
	var resizeEnabled : Bool;
	var scrollbarHeight : Float;
	var scrollDuration : Float;
	var selectedBackgroundAlpha : Float;
	var selectedBackgroundColor : String;
	var selectedGraphFillAlpha : Float;
	var selectedGraphFillColor : String;
	var selectedGraphLineAlpha : Float;
	var selectedGraphLineColor : String;
	var updateOnReleaseOnly : Bool;
}
extern class AmRectangularChart extends AmCoordinateChart {
	var angle : Float;
	var autoMarginOffset : Float;
	var autoMargins : Bool;
	var chartCursor : ChartCursor;
	var chartScrollbar : ChartScrollbar;
	var depth3D : Float;
	var marginBottom : Float;
	var marginLeft : Float;
	var marginRight : Float;
	var marginsUpdated : Bool;
	var marginTop : Float;
	var trendLines : Array<Dynamic>;
	var zoomOutButton : Dynamic;
	var zoomOutText : String;
	function addTrendLine(trendLine:TrendLine):Dynamic;
	function removeChartCursor():Dynamic;
	function removeChartScrollbar():Dynamic;
	var removeTrendLine : Dynamic;
}
extern class TrendLine {

}
extern class ChartCursor {
	var bulletsEnabled : Bool;
	var bulletSize : Float;
	var categoryBalloonAlpha : Float;
	var categoryBalloonColor : String;
	var categoryBalloonDateFormat : String;
	var categoryBalloonEnabled : Bool;
	var color : String;
	var cursorAlpha : Float;
	var cursorColor : String;
	var cursorPosition : String;
	var enabled : Bool;
	var oneBalloonOnly : Bool;
	var pan : Bool;
	var selectionAlpha : Float;
	var selectWithoutZooming : Bool;
	var valueBalloonsEnabled : Bool;
	var zoomable : Bool;
	var zooming : Bool;
	function hideCursor():Dynamic;
	function showCursorAt(category:Dynamic):Dynamic;
	@:overload(function(type:String, handler:{ var type : String; var chart : AmChart; } -> Void):Dynamic { })
	@:overload(function(type:String, handler:{ var type : String; var index : Float; var zooming : Bool; var chart : AmChart; } -> Void):Dynamic { })
	function addListener(type:String, handler:{ var type : String; var index : Float; var zooming : Bool; var mostCloseGraph : AmGraph; var chart : AmChart; } -> Void):Dynamic;
	function removeListener(chart:AmChart, type:String, handler:Dynamic):Dynamic;
}
extern class AmSerialChart extends AmRectangularChart {
	var categoryAxis : CategoryAxis;
	var categoryField : String;
	var chartData : Array<Dynamic>;
	var columnSpacing : Float;
	var columnWidth : Float;
	var dataProvider : Array<Dynamic>;
	var endDate : Date;
	var endIndex : Float;
	var maxSelectedSeries : Float;
	var maxSelectedTime : Float;
	var minSelectedTime : Float;
	var rotate : Bool;
	var startDate : Date;
	var startIndex : Float;
	var zoomOutOnDataUpdate : Bool;
	function getCategoryIndexByValue(value:Dynamic):Dynamic;
	function zoomOut():Dynamic;
	function zoomToCategoryValues(start:Dynamic, end:Dynamic):Dynamic;
	function zoomToDates(start:Dynamic, end:Dynamic):Dynamic;
	function zoomToIndexes(start:Dynamic, end:Dynamic):Dynamic;
}
extern class PeriodSelector {
	var dateFormat : String;
	var fromText : String;
	var hideOutOfScopePeriods : Bool;
	var inputFieldsEnabled : Bool;
	var inputFieldWidth : Float;
	var periods : Array<Dynamic>;
	var periodsText : String;
	var position : String;
	var selectFromStart : Bool;
	var toText : String;
	var width : Float;
	function addListener(type:Dynamic, handler:{ var type : String; var startDate : Date; var endDate : Date; var predefinedPeriod : String; var count : Float; } -> Void):Dynamic;
	function removeListener(chart:AmChart, type:String, handler:Dynamic):Dynamic;
}
extern class PanelsSettings {
	var angle : Float;
	var backgroundAlpha : Float;
	var backgroundColor : String;
	var columnSpacing : Float;
	var columnWidth : Float;
	var depth3D : Float;
	var fontFamily : String;
	var fontSize : String;
	var marginBottom : Float;
	var marginLeft : Float;
	var marginRight : Float;
	var marginTop : Float;
	var panelSpacing : Float;
	var panEventsEnabled : Bool;
	var plotAreaBorderAlpha : Float;
	var plotAreaBorderColor : String;
	var plotAreaFillAlphas : Float;
	var plotAreaFillColors : Dynamic;
	var prefixesOfBigNumbers : Array<Dynamic>;
	var prefixesOfSmallNumbers : Array<Dynamic>;
	var sequencedAnimation : Bool;
	var startAlpha : Float;
	var startDuration : Float;
	var startEffect : String;
	var usePrefixes : Bool;
}
extern class DataSet {
	var categoryField : String;
	var color : String;
	var compared : Bool;
	var dataProvider : Array<Dynamic>;
	var fieldMappings : Array<Dynamic>;
	var showInCompare : Bool;
	var showInSelect : Bool;
	var stockEvents : Array<StockEvent>;
	var title : String;
}
extern class StockGraph extends AmGraph {
	var comparable : Bool;
	var compareField : String;
	var compareGraphBalloonColor : String;
	var compareGraphBalloonText : String;
	var compareGraphBullet : String;
	var compareGraphBulletSize : Float;
	var compareGraphCornerRadiusTop : Float;
	var compareGraphDashLength : Float;
	var compareGraphFillAlphas : Float;
	var compareGraphFillColors : String;
	var compareGraphLineAlpha : Float;
	var compareGraphLineThickness : Float;
	var compareGraphType : String;
	var compareGraphVisibleInLegend : Bool;
	var periodValue : String;
	var useDataSetColors : Bool;
}
extern class StockEvent {
	var backgroundAlpha : Float;
	var backgroundColor : String;
	var borderAlpha : Float;
	var borderColor : String;
	var color : String;
	var date : Date;
	var graph : StockGraph;
	var rollOverColor : String;
	var showOnAxis : Bool;
	var text : String;
	var type : String;
	var url : String;
	var urlTarget : String;
}
extern class LegendSettings {
	var align : String;
	var equalWidths : Bool;
	var horizontalGap : Float;
	var labelText : String;
	var marginBottom : Float;
	var marginTop : Float;
	var markerBorderAlpha : Float;
	var markerBorderColor : String;
	var markerBorderThickness : Float;
	var markerDisabledColor : String;
	var markerLabelGap : Float;
	var markerSize : Float;
	var markerType : String;
	var reversedOrder : Bool;
	var rollOverColor : String;
	var rollOverGraphAlpha : Float;
	var switchable : Bool;
	var switchColor : String;
	var switchType : String;
	var textClickEnabled : Bool;
	var useMarkerColorForLabels : Bool;
	var valueTextComparing : String;
	var valueTextRegular : String;
	var valueWidth : Float;
	var verticalGap : Float;
}
extern class DataSetSelector {
	var comboBoxSelectText : String;
	var compareText : String;
	var listHeight : Float;
	var position : String;
	var selectText : String;
	var width : Float;
}
extern class AmBalloon {
	var adjustBorderColor : Bool;
	var borderAlpha : Float;
	var borderColor : String;
	var borderThickness : Float;
	var color : String;
	var cornerRadius : Float;
	var fillAlpha : Float;
	var fillColor : String;
	var fontSize : Float;
	var horizontalPadding : Float;
	var pointerWidth : Float;
	var showBullet : Bool;
	var textAlign : String;
	var textShadowColor : String;
	var verticalPadding : Float;
	function hide():Dynamic;
	function setBounds(left:Float, top:Float, right:Float, bottom:Float):Dynamic;
	function setPosition(x:Float, y:Float):Dynamic;
	function show(value:String):Dynamic;
}
extern class CategoryAxesSettings {
	var autoGridCount : Bool;
	var axisAlpha : Float;
	var axisColor : String;
	var axisHeight : Float;
	var axisThickness : Float;
	var color : String;
	var dashLength : Float;
	var dateFormats : Array<Dynamic>;
	var equalSpacing : Bool;
	var fillAlpha : Float;
	var fillColor : String;
	var fontSize : Float;
	var gridAlpha : Float;
	var gridColor : String;
	var gridCount : Float;
	var gridThickness : Float;
	var groupToPeriods : Array<Dynamic>;
	var inside : Bool;
	var labelRotation : Float;
	var maxSeries : Float;
	var minPeriod : String;
	var position : String;
	var startOnAxis : Bool;
	var tickLength : Float;
}
extern class ChartCursorSettings {
	var bulletsEnabled : Bool;
	var bulletSize : Float;
	var categoryBalloonAlpha : Float;
	var categoryBalloonColor : String;
	var categoryBalloonDateFormats : Array<Dynamic>;
	var categoryBalloonEnabled : Bool;
	var cursorAlpha : Float;
	var cursorColor : String;
	var cursorPosition : String;
	var enabled : Bool;
	var pan : Bool;
	var valueBalloonsEnabled : Bool;
	var zoomable : Bool;
}
extern class ChartScrollbarSettings {
	var autoGridCount : Bool;
	var backgroundAlpha : Float;
	var backgroundColor : String;
	var color : String;
	var enabled : Bool;
	var fontSize : Float;
	var graph : AmGraph;
	var graphFillAlpha : Float;
	var graphFillColor : String;
	var graphLineAlpha : Float;
	var graphLineColor : String;
	var graphType : String;
	var gridAlpha : Float;
	var gridColor : String;
	var gridCount : Float;
	var height : Float;
	var hideResizeGrips : Bool;
	var scrollDuration : Float;
	var selectedBackgroundAlpha : Float;
	var selectedBackgroundColor : String;
	var selectedGraphFillAlpha : Float;
	var selectedGraphFillColor : String;
	var selectedGraphLineAlpha : Float;
	var selectedGraphLineColor : String;
	var updateOnReleaseOnly : Bool;
}
extern class AmGraph {
	var alphaField : String;
	var balloonColor : String;
	var balloonText : String;
	var behindColumns : Bool;
	var bullet : String;
	var bulletAlpha : Float;
	var bulletBorderAlpha : Float;
	var bulletBorderColor : String;
	var bulletBorderThickness : Float;
	var bulletColor : String;
	var bulletField : String;
	var bulletOffset : Float;
	var bulletSize : Float;
	var bulletSizeField : String;
	var closeField : String;
	var color : String;
	var colorField : String;
	var connect : Bool;
	var cornerRadiusTop : Float;
	var cursorBulletAlpha : Float;
	var customBullet : String;
	var customBulletField : String;
	var dashLength : Float;
	var descriptionField : String;
	var fillAlphas : Float;
	var fillColors : Dynamic;
	var fillColorsField : String;
	var fillToGraph : AmGraph;
	var fontSize : Float;
	var gradientOrientation : String;
	var hidden : Bool;
	var hideBulletsCount : Float;
	var highField : String;
	var includeInMinMax : Bool;
	var labelColorField : String;
	var labelPosition : String;
	var labelText : String;
	var legendAlpha : Float;
	var legendColor : String;
	var legendValueText : String;
	var lineAlpha : Float;
	var lineColor : String;
	var lineColorField : String;
	var lineThickness : Float;
	var lowField : String;
	var markerType : String;
	var maxBulletSize : Float;
	var minBulletSize : Float;
	var negativeBase : Float;
	var negativeFillAlphas : Float;
	var negativeFillColors : Dynamic;
	var negativeLineColor : String;
	var numberFormatter : Dynamic;
	var openField : String;
	var pointPosition : String;
	var showAllValueLabels : Bool;
	var showBalloon : Bool;
	var showBalloonAt : String;
	var stackable : Bool;
	var title : String;
	var type : String;
	var urlField : String;
	var urlTarget : String;
	var valueAxis : ValueAxis;
	var valueField : String;
	var visibleInLegend : Bool;
	var xAxis : ValueAxis;
	var xField : String;
	var yAxis : ValueAxis;
	var yField : String;
}
extern class AxisBase {
	var autoGridCount : Bool;
	var axisAlpha : Float;
	var axisColor : String;
	var axisThickness : Float;
	var color : String;
	var dashLength : Float;
	var fillAlpha : Float;
	var fillColor : String;
	var fontSize : Float;
	var gridAlpha : Float;
	var gridColor : String;
	var gridCount : Float;
	var gridThickness : Float;
	var guides : Array<Dynamic>;
	var ignoreAxisWidth : Bool;
	var inside : Bool;
	var labelFrequency : Float;
	var labelRotation : Float;
	var labelsEnabled : Bool;
	var offset : Float;
	var position : String;
	var showFirstLabel : Bool;
	var showLastLabel : Bool;
	var tickLength : Float;
	var title : String;
	var titleBold : Bool;
	var titleColor : String;
	var titleFontSize : Float;
	function addGuide(guide:Guide):Dynamic;
	function removeGuide(guide:Guide):Dynamic;
}
extern class ValueAxis extends AxisBase {
	var axisTitleOffset : Float;
	var baseCoord : Float;
	var baseValue : Float;
	var duration : String;
	var durationUnits : Dynamic;
	var gridType : String;
	var includeGuidesInMinMax : Bool;
	var includeHidden : Bool;
	var integersOnly : Bool;
	var logarithmic : Bool;
	var max : Float;
	var maximum : Float;
	var min : Float;
	var minimum : Float;
	var minMaxMultiplier : Float;
	var precision : Float;
	var radarCategoriesEnabled : Bool;
	var recalculateToPercents : Bool;
	var reversed : Bool;
	var stackType : String;
	var step : Float;
	var synchronizationMultiplier : Float;
	var totalText : String;
	var unit : String;
	var unitPosition : String;
	var usePrefixes : Bool;
	var useScientificNotation : Bool;
	@:overload(function(type:String, handler:{ var type : String; var startValue : Date; var endValue : Date; var chart : AmChart; } -> Void):Dynamic { })
	@:overload(function(type:String, handler:{ var type : String; var chart : AmChart; } -> Void):Dynamic { })
	function addListener(type:Dynamic, handler:Dynamic):Dynamic;
	function coordinateToValue(coordinate:Dynamic):Dynamic;
	function getCoordinate(value:Dynamic):Dynamic;
	@:overload(function(chart:AmChart, type:String, handler:Dynamic):Dynamic { })
	function removeListener(obj:Dynamic, type:Dynamic, handler:Dynamic):Dynamic;
	function synchronizeWithAxis(axis:ValueAxis):Dynamic;
	function zoomToValues(startValue:Dynamic, endValue:Dynamic):Dynamic;
}
extern class AmChartsTopLevel {
	static var baseHref : Bool;
	static var dayNames : Array<String>;
	static var monthNames : Array<String>;
	static var shortDayNames : Array<String>;
	static var shortMonthNames : Array<String>;
	static var useUTC : Bool;
	static function clear():Dynamic;
}
extern class AmChartsTopLevel {
	static var baseHref : Bool;
	static var dayNames : Array<String>;
	static var monthNames : Array<String>;
	static var shortDayNames : Array<String>;
	static var shortMonthNames : Array<String>;
	static var useUTC : Bool;
	static function clear():Dynamic;
}
