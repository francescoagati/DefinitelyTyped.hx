typedef ChartSpecs = {
	var chartType : String;
	@:optional
	var containerId : String;
	@:optional
	var options : Dynamic;
	@:optional
	var dataTable : Dynamic;
	@:optional
	var dataSourceUrl : String;
	@:optional
	var query : String;
	@:optional
	var refreshInterval : Float;
	@:optional
	var view : Dynamic;
};
typedef ErrorEventObject = {
	var id : String;
	var message : String;
	@:optional
	var detailedMessage : String;
	@:optional
	var options : Dynamic;
};
extern class ChartWrapper {
	function new(?spec:ChartSpecs):Void;
	function draw(?container_ref:HTMLElement):Void;
	function toJSON():String;
	function clone():ChartWrapper;
	function getDataSourceUrl():String;
	function getDataTable():DataTable;
	function getChartType():String;
	function getChartName():String;
	function getChart():Dynamic;
	function getContainerId():String;
	function getQuery():String;
	function getRefreshInterval():Float;
	function getOption(key:String, ?default_val:String):Dynamic;
	function getOptions():Dynamic;
	function getView():Dynamic;
	function setDataSourceUrl(url:String):Void;
	function setDataTable(table:DataTable):Void;
	function setChartType(type:String):Void;
	function setChartName(name:String):Void;
	function setContainerId(id:String):Void;
	function setQuery(query:String):Void;
	function setRefreshInterval(interval:Float):Void;
	function setOption(key:String, value:Dynamic):Void;
	function setOptions(options:Dynamic):Void;
	function setView(view_spec:String):Void;
}
extern class DataTable {
	function new(?data:Dynamic, ?version:Dynamic):Void;
	@:overload(function(descriptionObject:DataTableColumnDescription):Float { })
	function addColumn(type:String, ?label:String, ?id:String):Float;
	@:overload(function(?cellArray:Array<Dynamic>):Float { })
	function addRow(cellObject:DataObjectCell):Float;
	@:overload(function(rows:Array<Array<DataObjectCell>>):Float { })
	@:overload(function(rows:Array<Array<Dynamic>>):Float { })
	function addRows(numberOfEmptyRows:Float):Float;
	function clone():DataTable;
	function getColumnId(columnIndex:Float):String;
	function getColumnLabel(columnIndex:Float):String;
	function getColumnPattern(columnIndex:Float):String;
	function getColumnProperties(columnIndex:Float):Properties;
	function getColumnProperty(columnIndex:Float, name:String):Dynamic;
	function getColumnRange(columnIndex:Float):{ var min : Dynamic; var max : Dynamic; };
	function getColumnRole(columnIndex:String):String;
	function getColumnType(columnIndex:Float):String;
	function getDistinctValues(columnIndex:Float):Array<Dynamic>;
	function getFilteredRows(filters:Array<DataTableCellFilter>):Array<Float>;
	function getFormattedValue(rowIndex:Float, columnIndex:Float):String;
	function getNumberOfColumns():Float;
	function getNumberOfRows():Float;
	function getProperty(rowIndex:Float, columnIndex:Float, name:String):Dynamic;
	function getProperties(rowIndex:Float, columnIndex:Float):Properties;
	function getRowProperties(rowIndex:Float):Properties;
	function getRowProperty(rowIndex:Float, name:String):Properties;
	@:overload(function(sortColumn:SortByColumn):Array<Float> { })
	@:overload(function(sortColumns:Array<Float>):Array<Float> { })
	@:overload(function(sortColumns:Array<SortByColumn>):Array<Float> { })
	function getSortedRows(sortColumn:Float):Array<Float>;
	function getTableProperties():Properties;
	function getTableProperty(name:String):Dynamic;
	function getValue(rowIndex:Float, columnIndex:Float):Dynamic;
	function insertColumn(columnIndex:Float, type:String, ?label:String, ?id:String):Void;
	@:overload(function(rowIndex:Float, rows:Array<Array<DataObjectCell>>):Void { })
	@:overload(function(rowIndex:Float, rows:Array<Array<Dynamic>>):Void { })
	function insertRows(rowIndex:Float, numberOfEmptyRows:Float):Void;
	function removeColumn(columnIndex:Float):Void;
	function removeColumns(columnIndex:Float, numberOfColumns:Float):Void;
	function removeRow(rowIndex:Float):Void;
	function removeRows(rowIndex:Float, numberOfRows:Float):Void;
	function setCell(rowIndex:Float, columnIndex:Float, ?value:Dynamic, ?formattedValue:String, ?properties:Properties):Void;
	function setColumnLabel(columnIndex:Float, label:String):Void;
	function setColumnProperty(columnIndex:Float, name:String, value:Dynamic):Void;
	function setColumnProperties(columnIndex:Float, properties:Properties):Void;
	function setFormattedValue(rowIndex:Float, columnIndex:Float, formattedValue:String):Void;
	function setProperty(rowIndex:Float, columnIndex:Float, name:String, value:Dynamic):Void;
	function setProperties(rowIndex:Float, columnIndex:Float, properties:Properties):Void;
	function setRowProperty(rowIndex:Float, name:String, value:Dynamic):Void;
	function setRowProperties(rowIndex:Float, properties:Properties):Void;
	function setTableProperty(name:String, value:Dynamic):Void;
	function setTableProperties(properties:Properties):Void;
	function setValue(rowIndex:Float, columnIndex:Float, value:Dynamic):Void;
	@:overload(function(sortColumn:SortByColumn):Array<Float> { })
	@:overload(function(sortColumns:Array<Float>):Array<Float> { })
	@:overload(function(sortColumns:Array<SortByColumn>):Array<Float> { })
	function sort(sortColumn:Float):Array<Float>;
	function toJSON():String;
}
typedef Properties = { };
typedef SortByColumn = {
	var column : Float;
	var desc : Bool;
};
typedef DataTableColumnDescription = {
	@:optional
	var type : String;
	@:optional
	var label : String;
	@:optional
	var id : String;
	@:optional
	var role : String;
	@:optional
	var pattern : String;
};
typedef DataObject = {
	var cols : Array<DataObjectColumn>;
	var rows : Array<DataObjectRow>;
	var p : Dynamic;
};
typedef DataObjectColumn = {
	var type : String;
	@:optional
	var id : String;
	@:optional
	var label : String;
	@:optional
	var pattern : String;
	@:optional
	var p : Dynamic;
};
typedef DataObjectRow = {
	var c : Array<DataObjectCell>;
	@:optional
	var p : Dynamic;
};
typedef DataTableCellFilter = {
	var column : Float;
	@:optional
	var value : Dynamic;
	@:optional
	var minValue : Dynamic;
	@:optional
	var maxValue : Dynamic;
};
typedef DataObjectCell = {
	@:optional
	var v : Dynamic;
	@:optional
	var f : String;
	@:optional
	var p : Dynamic;
};
typedef DataTableCellValueFilter = {
	>DataTableCellFilter,
	var value : Dynamic;
};
typedef DataTableCellRangeFilter = {
	>DataTableCellFilter,
	@:optional
	var minValue : Dynamic;
	@:optional
	var maxValue : Dynamic;
};
extern class DataView {
	@:overload(function(data:DataView):Void { })
	function new(data:DataTable):Void;
	function getColumnId(columnIndex:Float):String;
	function getColumnLabel(columnIndex:Float):String;
	function getColumnPattern(columnIndex:Float):String;
	function getColumnProperty(columnIndex:Float, name:String):Dynamic;
	function getColumnRange(columnIndex:Float):{ var min : Dynamic; var max : Dynamic; };
	function getColumnType(columnIndex:Float):String;
	function getDistinctValues(columnIndex:Float):Array<Dynamic>;
	function getFilteredRows(filters:Array<DataTableCellFilter>):Array<Float>;
	function getFormattedValue(rowIndex:Float, columnIndex:Float):String;
	function getNumberOfColumns():Float;
	function getNumberOfRows():Float;
	function getProperty(rowIndex:Float, columnIndex:Float, name:String):Dynamic;
	function getProperties(rowIndex:Float, columnIndex:Float):Properties;
	function getRowProperty(rowIndex:Float, name:String):Properties;
	@:overload(function(sortColumn:SortByColumn):Array<Float> { })
	@:overload(function(sortColumns:Array<Float>):Array<Float> { })
	@:overload(function(sortColumns:Array<SortByColumn>):Array<Float> { })
	function getSortedRows(sortColumn:Float):Array<Float>;
	function getTableProperty(name:String):Dynamic;
	function getValue(rowIndex:Float, columnIndex:Float):Dynamic;
	function getTableColumnIndex(viewColumnIndex:Float):Float;
	function getTableRowIndex(viewRowIndex:Float):Float;
	function getViewColumnIndex(tableColumnIndex:Float):Float;
	function getViewColumns():Array<Float>;
	function getViewRowIndex(tableRowIndex:Float):Float;
	function getViewRows():Array<Float>;
	function hideColumns(columnIndexes:Array<Float>):Void;
	@:overload(function(rowIndexes:Array<Float>):Void { })
	function hideRows(min:Float, max:Float):Void;
	@:overload(function(columnIndexes:Array<ColumnSpec>):Void { })
	@:overload(function(columnIndexes:Array<Dynamic>):Void { })
	function setColumns(columnIndexes:Array<Float>):Void;
	@:overload(function(rowIndexes:Array<Float>):Void { })
	function setRows(min:Float, max:Float):Void;
	function toDataTable():DataTable;
	function toJSON():String;
}
typedef ColumnSpec = {
	var calc : DataTable -> Float -> Dynamic;
	var type : String;
	@:optional
	var label : String;
	@:optional
	var id : String;
	@:optional
	var sourceColumn : Float;
	@:optional
	var properties : Properties;
	@:optional
	var role : String;
};
extern class GeoChart extends ChartBase {
	function draw(data:DataTable, options:GeoChartOptions):Void;
}
typedef GeoChartOptions = {
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var colorAxis : ChartColorAxis;
	@:optional
	var datalessRegionColor : String;
	@:optional
	var displayMode : String;
	@:optional
	var enableRegionInteractivity : Bool;
	@:optional
	var height : Float;
	@:optional
	var keepAspectRatio : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var region : String;
	@:optional
	var magnifyingGlass : GeoChartMagnifyingGlass;
	@:optional
	var markerOpacity : Float;
	@:optional
	var resolution : String;
	@:optional
	var sizeAxis : ChartSizeAxis;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var width : Float;
};
typedef GeoChartMagnifyingGlass = {
	@:optional
	var enable : Bool;
	@:optional
	var zoomFactor : Float;
};
typedef GeoChartRegionClickEvent = {
	var region : String;
};
typedef GeoChartSelection = {
	var row : Float;
};
typedef ChartAnnotations = {
	@:optional
	var boxStyle : ChartBoxStyle;
	@:optional
	var textStyle : ChartTextStyle;
};
typedef ChartBoxStyle = {
	@:optional
	var stroke : String;
	@:optional
	var strokeWidth : Float;
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
	@:optional
	var gradient : { var color1 : String; var color2 : String; var x1 : String; var y1 : String; var x2 : String; var y2 : String; @:optional
	var useObjectBoundingBoxUnits : Bool; };
};
typedef ChartTextStyle = {
	@:optional
	var fontName : String;
	@:optional
	var fontSize : Float;
	@:optional
	var bold : Bool;
	@:optional
	var italic : Bool;
	@:optional
	var color : String;
	@:optional
	var auraColor : String;
	@:optional
	var opacity : Float;
};
typedef ChartCrosshair = {
	@:optional
	var color : String;
	@:optional
	var focused : { @:optional
	var color : String; @:optional
	var opacity : Float; };
	@:optional
	var opacity : Float;
	@:optional
	var orientation : String;
	@:optional
	var selected : { @:optional
	var color : String; @:optional
	var opacity : Float; };
	@:optional
	var trigger : String;
};
typedef ChartExplorer = {
	@:optional
	var actions : Array<String>;
	@:optional
	var axis : String;
	@:optional
	var keepInBounds : Bool;
	@:optional
	var maxZoomIn : Float;
	@:optional
	var maxZoomOut : Float;
	@:optional
	var zoomDelta : Float;
};
typedef ChartStroke = {
	var stroke : String;
	var strokeWidth : Float;
	var fill : String;
};
typedef ChartArea = {
	@:optional
	var top : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
};
typedef ChartLegend = {
	@:optional
	var alignment : String;
	@:optional
	var maxLines : Float;
	@:optional
	var position : String;
	@:optional
	var textStyle : ChartTextStyle;
	@:optional
	var numberFormat : String;
};
typedef TransitionAnimation = {
	@:optional
	var duration : Float;
	@:optional
	var easing : String;
};
typedef ChartAxis = {
	@:optional
	var baseline : Float;
	@:optional
	var baselineColor : String;
	@:optional
	var direction : Float;
	@:optional
	var format : String;
	@:optional
	var gridlines : ChartGridlines;
	@:optional
	var minorGridlines : ChartGridlines;
	@:optional
	var logScale : Bool;
	@:optional
	var textPosition : String;
	@:optional
	var textStyle : ChartTextStyle;
	@:optional
	var ticks : Array<Dynamic>;
	@:optional
	var title : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var allowContainerBoundaryTextCufoff : Bool;
	@:optional
	var slantedText : Bool;
	@:optional
	var slantedTextAngle : Float;
	@:optional
	var maxAlternation : Float;
	@:optional
	var maxTextLines : Float;
	@:optional
	var minTextSpacing : Float;
	@:optional
	var showTextEvery : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var viewWindowMode : String;
	@:optional
	var viewWindow : ChartViewWindow;
};
typedef ChartGridlines = {
	@:optional
	var color : String;
	@:optional
	var count : Float;
};
typedef ChartViewWindow = {
	@:optional
	var max : Float;
	@:optional
	var min : Float;
};
typedef ChartTooltip = {
	@:optional
	var isHtml : Bool;
	@:optional
	var showColorCode : Bool;
	@:optional
	var textStyle : ChartTextStyle;
	@:optional
	var trigger : String;
};
typedef ChartBoundingBox = {
	var left : Float;
	var top : Float;
	var width : Float;
	var height : Float;
};
typedef ChartColorAxis = {
	@:optional
	var minValue : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var values : Array<Float>;
	@:optional
	var colors : Array<String>;
	@:optional
	var legend : ChartLegend;
};
typedef ChartLayoutInterface = {
	function getBoundingBox(id:String):ChartBoundingBox;
	function getChartAreaBoundingBox():ChartBoundingBox;
	function getHAxisValue(position:Float, ?axisIndex:Float):Float;
	function getVAxisValue(position:Float, ?axisIndex:Float):Float;
	function getXLocation(position:Float, ?axisIndex:Float):Float;
	function getYLocation(position:Float, ?axisIndex:Float):Float;
};
typedef GroupWidth = {
	var groupWidth : Dynamic;
};
typedef VisualizationSelectionArray = {
	@:optional
	var column : Float;
	@:optional
	var row : Float;
};
extern class ChartBase {
	function new(element:Element):Void;
	function getSelection():Array<VisualizationSelectionArray>;
	function setSelection(selection:Array<VisualizationSelectionArray>):Void;
	function clearChart():Void;
	function getImageURI():String;
}
extern class CoreChartBase extends ChartBase {
	function getBoundingBox(id:String):ChartBoundingBox;
	function getChartAreaBoundingBox():ChartBoundingBox;
	function getChartLayoutInterface():ChartLayoutInterface;
	function getHAxisValue(position:Float, ?axisIndex:Float):Float;
	function getVAxisValue(position:Float, ?axisIndex:Float):Float;
	function getXLocation(position:Float, ?axisIndex:Float):Float;
	function getYLocation(position:Float, ?axisIndex:Float):Float;
}
extern class ScatterChart extends CoreChartBase {
	@:overload(function(data:DataView, ?options:ScatterChartOptions):Void { })
	function draw(data:DataTable, ?options:ScatterChartOptions):Void;
}
typedef ScatterChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var annotations : ChartAnnotations;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var crosshair : ChartCrosshair;
	@:optional
	var curveType : String;
	@:optional
	var dataOpacity : Float;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var explorer : ChartExplorer;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var forceIFrame : Bool;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var legend : ChartLegend;
	@:optional
	var lineWidth : Float;
	@:optional
	var pointSize : Float;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class ColumnChart extends CoreChartBase {
	@:overload(function(data:DataView, options:ColumnChartOptions):Void { })
	function draw(data:DataTable, options:ColumnChartOptions):Void;
}
typedef ColumnChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var annotations : ChartAnnotations;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var bar : GroupWidth;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var isStacked : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class LineChart extends CoreChartBase {
	@:overload(function(data:DataView, options:LineChartOptions):Void { })
	function draw(data:DataTable, options:LineChartOptions):Void;
}
typedef LineChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var annotations : ChartAnnotations;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var crosshair : ChartCrosshair;
	@:optional
	var curveType : String;
	@:optional
	var dataOpacity : Float;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var explorer : ChartExplorer;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var interpolateNulls : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var lineWidth : Float;
	@:optional
	var orientation : String;
	@:optional
	var pointSize : Float;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
typedef BarChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var annotations : ChartAnnotations;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var bar : GroupWidth;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var dataOpacity : Float;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxes : Dynamic;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var isStacked : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class BarChart extends CoreChartBase {
	@:overload(function(data:DataView, options:BarChartOptions):Void { })
	function draw(data:DataTable, options:BarChartOptions):Void;
}
extern class Histogram extends CoreChartBase {
	@:overload(function(data:DataView, options:HistogramOptions):Void { })
	function draw(data:DataTable, options:HistogramOptions):Void;
}
typedef HistogramOptions = {
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var bar : GroupWidth;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var dataOpacity : Float;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var histogram : HistogramHistogramOptions;
	@:optional
	var height : Float;
	@:optional
	var interpolateNulls : Bool;
	@:optional
	var isStacked : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var orientation : String;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
typedef HistogramHistogramOptions = {
	@:optional
	var bucketSize : Float;
	@:optional
	var hideBucketItems : Bool;
	@:optional
	var lastBucketPercentile : Float;
};
extern class AreaChart extends CoreChartBase {
	@:overload(function(data:DataView, options:AreaChartOptions):Void { })
	function draw(data:DataTable, options:AreaChartOptions):Void;
}
typedef AreaChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var areaOpacity : Float;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var crosshair : ChartCrosshair;
	@:optional
	var dataOpacity : Float;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var explorer : ChartExplorer;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var interpolateNulls : Bool;
	@:optional
	var isStacked : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var lineWidth : Float;
	@:optional
	var orientation : String;
	@:optional
	var pointSize : Float;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class AnnotationChart extends CoreChartBase {
	@:overload(function(data:DataView, options:AnnotationChartOptions):Void { })
	function draw(data:DataTable, options:AnnotationChartOptions):Void;
	function setVisibleChartRange(start:Date, end:Date):Void;
	function getVisibleChartRange():{ var start : Date; var end : Date; };
	function hideDataColumns(columnIndexes:haxe.extern.EitherType<Float, Array<Float>>):Void;
	function showDataColumns(columnIndexes:haxe.extern.EitherType<Float, Array<Float>>):Void;
}
typedef AnnotationChartOptions = {
	@:optional
	var allowHtml : Bool;
	@:optional
	var allValuesSuffix : String;
	@:optional
	var annotationsWidth : Float;
	@:optional
	var colors : Array<String>;
	@:optional
	var dateFormat : String;
	@:optional
	var displayAnnotations : Bool;
	@:optional
	var displayAnnotationsFilter : Bool;
	@:optional
	var displayDateBarSeparator : Bool;
	@:optional
	var displayExactValues : Bool;
	@:optional
	var displayLegendDots : Bool;
	@:optional
	var displayLegendValues : Bool;
	@:optional
	var displayRangeSelector : Bool;
	@:optional
	var displayZoomButtons : Bool;
	@:optional
	var fill : Float;
	@:optional
	var legendPosition : String;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var numberFormats : Dynamic;
	@:optional
	var scaleColumns : Array<Float>;
	@:optional
	var scaleFormat : String;
	@:optional
	var scaleType : String;
	@:optional
	var thickness : Float;
	@:optional
	var zoomEndTime : Date;
	@:optional
	var zoomStartTime : Date;
};
extern class SteppedAreaChart extends CoreChartBase {
	@:overload(function(data:DataView, options:SteppedAreaChartOptions):Void { })
	function draw(data:DataTable, options:SteppedAreaChartOptions):Void;
}
typedef SteppedAreaChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var areaOpacity : Float;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var connectSteps : Bool;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var interpolateNulls : Bool;
	@:optional
	var isStacked : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class PieChart extends CoreChartBase {
	@:overload(function(data:DataView, options:PieChartOptions):Void { })
	function draw(data:DataTable, options:PieChartOptions):Void;
}
typedef PieChartOptions = {
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var height : Float;
	@:optional
	var is3D : Bool;
	@:optional
	var legend : ChartLegend;
	@:optional
	var pieHole : Float;
	@:optional
	var pieSliceBorderColor : String;
	@:optional
	var pieSliceText : String;
	@:optional
	var pieSliceTextStyle : ChartTextStyle;
	@:optional
	var pieStartAngle : Float;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var pieResidueSliceColor : String;
	@:optional
	var pieResidueSliceLabel : String;
	@:optional
	var slices : Dynamic;
	@:optional
	var sliceVisibilityThreshold : Float;
	@:optional
	var title : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var width : Float;
};
extern class BubbleChart extends CoreChartBase {
	@:overload(function(data:DataView, ?options:BubbleChartOptions):Void { })
	function draw(data:DataTable, ?options:BubbleChartOptions):Void;
}
typedef BubbleChartOptions = {
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var bubble : ChartBubble;
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var colorAxis : ChartColorAxis;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var explorer : ChartExplorer;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var forceIFrame : Bool;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var legend : ChartLegend;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var sizeAxis : ChartSizeAxis;
	@:optional
	var sortBubblesBySize : Bool;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
typedef ChartBubble = {
	@:optional
	var opacity : Float;
	@:optional
	var stroke : String;
	@:optional
	var textStyle : ChartTextStyle;
};
typedef ChartSizeAxis = {
	@:optional
	var maxSize : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minSize : Float;
	@:optional
	var minValue : Float;
};
extern class TreeMap extends ChartBase {
	@:overload(function(data:DataView, ?options:TreeMapOptions):Void { })
	function draw(data:DataTable, ?options:TreeMapOptions):Void;
	function goUpAndDraw():Void;
	function getMaxPossibleDepth():Float;
}
typedef TreeMapOptions = {
	@:optional
	var fontColor : String;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : Float;
	@:optional
	var forceIFrame : Bool;
	@:optional
	var headerColor : String;
	@:optional
	var headerHeight : Float;
	@:optional
	var headerHighlightColor : String;
	@:optional
	var hintOpacity : Float;
	@:optional
	var maxColor : String;
	@:optional
	var maxDepth : Float;
	@:optional
	var maxHighlightColor : String;
	@:optional
	var maxPostDepth : Float;
	@:optional
	var maxColorValue : Float;
	@:optional
	var midColor : String;
	@:optional
	var midHighlightColor : String;
	@:optional
	var minColor : String;
	@:optional
	var minHighlightColor : String;
	@:optional
	var minColorValue : Float;
	@:optional
	var showScale : Bool;
	@:optional
	var showTooltips : Bool;
	@:optional
	var textStyle : ChartTextStyle;
	@:optional
	var title : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var useWeightedAverageForAggregation : Bool;
};
extern class Table extends ChartBase {
	@:overload(function(data:DataView, ?options:TableOptions):Void { })
	function draw(data:DataTable, ?options:TableOptions):Void;
}
typedef TableOptions = {
	@:optional
	var allowHtml : Bool;
	@:optional
	var alternatingRowStyle : Bool;
	@:optional
	var cssClassName : CssClassNames;
	@:optional
	var firstRowNumber : Float;
	@:optional
	var height : String;
	@:optional
	var page : String;
	@:optional
	var pageSize : Float;
	@:optional
	var rtlTable : Bool;
	@:optional
	var scrollLeftStartPosition : Float;
	@:optional
	var showRowNumber : Bool;
	@:optional
	var sort : String;
	@:optional
	var sortAscending : Bool;
	@:optional
	var sortColumn : Float;
	@:optional
	var startPage : Float;
	@:optional
	var width : String;
};
typedef CssClassNames = {
	@:optional
	var headerRow : String;
	@:optional
	var tableRow : String;
	@:optional
	var oddTableRow : String;
	@:optional
	var selectedTableRow : String;
	@:optional
	var hoverTableRow : String;
	@:optional
	var headerCell : String;
	@:optional
	var tableCell : String;
	@:optional
	var rowNumberCell : String;
};
extern class Timeline {
	function new(element:Element):Void;
	@:overload(function(data:DataView, ?options:TimelineOptions):Void { })
	function draw(data:DataTable, ?options:TimelineOptions):Void;
	function clearChart():Void;
}
typedef TimelineOptions = {
	@:optional
	var avoidOverlappingGridLines : Bool;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var colors : Array<String>;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var forceIFrame : Bool;
	@:optional
	var height : Float;
	@:optional
	var timeline : { @:optional
	var barLabelStyle : LabelStyle; @:optional
	var colorByRowLabel : Bool; @:optional
	var groupByRowLabel : Bool; @:optional
	var rowLabelStyle : LabelStyle; @:optional
	var showRowLabels : Bool; @:optional
	var singleColor : String; };
	@:optional
	var width : Float;
};
typedef LabelStyle = {
	var color : String;
	var fontName : String;
	var fontSize : String;
};
extern class CandlestickChart extends CoreChartBase {
	@:overload(function(data:DataView, options:CandlestickChartOptions):Void { })
	function draw(data:DataTable, options:CandlestickChartOptions):Void;
}
typedef CandlestickChartOptions = {
	@:optional
	var aggregationTarget : String;
	@:optional
	var animation : TransitionAnimation;
	@:optional
	var axisTitlesPosition : String;
	@:optional
	var backgroundColor : Dynamic;
	@:optional
	var bar : GroupWidth;
	@:optional
	var candlestick : { @:optional
	var hollowIsRising : Bool; @:optional
	var fallingColor : ChartStroke; @:optional
	var risingColor : ChartStroke; };
	@:optional
	var chartArea : ChartArea;
	@:optional
	var colors : Array<String>;
	@:optional
	var enableInteractivity : Bool;
	@:optional
	var focusTarget : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontName : String;
	@:optional
	var hAxis : ChartAxis;
	@:optional
	var height : Float;
	@:optional
	var legend : ChartLegend;
	@:optional
	var orientation : String;
	@:optional
	var reverseCategories : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var series : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var title : String;
	@:optional
	var titlePosition : String;
	@:optional
	var titleTextStyle : ChartTextStyle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var vAxes : Dynamic;
	@:optional
	var vAxis : ChartAxis;
	@:optional
	var width : Float;
};
extern class VisualizationTopLevel {
	static function arrayToDataTable(data:Array<Dynamic>, ?firstRowIsData:Bool):DataTable;
}
