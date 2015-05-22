extern class Kendo.dataviz.uiTopLevel {
	static function registerTheme(name:String, options:Dynamic):Void;
	static function plugin(widget:Dynamic):Void;
	static function plugin(widget:Dynamic):Void;
}
extern class Barcode extends kendo.ui.Widget {
	static var fn : Barcode;
	static function extend(proto:Dynamic):Barcode;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:BarcodeOptions):Void;
	var options : BarcodeOptions;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function imageDataURL():String;
	function redraw():Void;
	function resize(?force:Bool):Void;
	function svg():String;
	@:overload(function(value:Float):Void { })
	@:overload(function(value:String):Void { })
	function value():String;
}
typedef BarcodeBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef BarcodePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef BarcodeTextMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef BarcodeText = {
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : BarcodeTextMargin;
	@:optional
	var visible : Bool;
};
typedef BarcodeExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef BarcodeExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef BarcodeOptions = {
	@:optional
	var name : String;
	@:optional
	var renderAs : String;
	@:optional
	var background : String;
	@:optional
	var border : BarcodeBorder;
	@:optional
	var checksum : Bool;
	@:optional
	var color : String;
	@:optional
	var height : Float;
	@:optional
	var padding : BarcodePadding;
	@:optional
	var text : BarcodeText;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef BarcodeEvent = {
	var sender : Barcode;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Chart extends kendo.ui.Widget {
	static var fn : Chart;
	static function extend(proto:Dynamic):Chart;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ChartOptions):Void;
	var options : ChartOptions;
	var dataSource : kendo.data.DataSource;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function getAxis(name:String):kendo.dataviz.ChartAxis;
	function redraw():Void;
	function refresh():Void;
	function resize(?force:Bool):Void;
	function saveAsPDF():Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function setOptions(options:Dynamic):Void;
	function svg():String;
	function imageDataURL():String;
	function toggleHighlight(show:Bool, options:Dynamic):Void;
}
typedef ChartCategoryAxisItemAutoBaseUnitSteps = {
	@:optional
	var seconds : Dynamic;
	@:optional
	var minutes : Dynamic;
	@:optional
	var hours : Dynamic;
	@:optional
	var days : Dynamic;
	@:optional
	var weeks : Dynamic;
	@:optional
	var months : Dynamic;
	@:optional
	var years : Dynamic;
};
typedef ChartCategoryAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemCrosshairTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartCategoryAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartCategoryAxisItemCrosshairTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartCategoryAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var tooltip : ChartCategoryAxisItemCrosshairTooltip;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemLabelsDateFormats = {
	@:optional
	var days : String;
	@:optional
	var hours : String;
	@:optional
	var months : String;
	@:optional
	var weeks : String;
	@:optional
	var years : String;
};
typedef ChartCategoryAxisItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartCategoryAxisItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartCategoryAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : ChartCategoryAxisItemLabelsDateFormats;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartCategoryAxisItemLabelsMargin;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : ChartCategoryAxisItemLabelsPadding;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartCategoryAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartCategoryAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartCategoryAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartCategoryAxisItemMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartCategoryAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartCategoryAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef ChartCategoryAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartCategoryAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : ChartCategoryAxisItemNotesDataItemIcon;
	@:optional
	var label : ChartCategoryAxisItemNotesDataItemLabel;
	@:optional
	var line : ChartCategoryAxisItemNotesDataItemLine;
};
typedef ChartCategoryAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartCategoryAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartCategoryAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartCategoryAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : ChartCategoryAxisItemNotesIcon;
	@:optional
	var label : ChartCategoryAxisItemNotesLabel;
	@:optional
	var line : ChartCategoryAxisItemNotesLine;
	@:optional
	var data : Array<ChartCategoryAxisItemNotesDataItem>;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartCategoryAxisItemPlotBand = {
	@:optional
	var color : String;
	@:optional
	var from : Float;
	@:optional
	var opacity : Float;
	@:optional
	var to : Float;
};
typedef ChartCategoryAxisItemSelectMousewheel = {
	@:optional
	var reverse : Bool;
	@:optional
	var zoom : String;
};
typedef ChartCategoryAxisItemSelect = {
	@:optional
	var from : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var mousewheel : ChartCategoryAxisItemSelectMousewheel;
	@:optional
	var to : Dynamic;
};
typedef ChartCategoryAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartCategoryAxisItemTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartCategoryAxisItemTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartCategoryAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : ChartCategoryAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartCategoryAxisItemTitleMargin;
	@:optional
	var padding : ChartCategoryAxisItemTitlePadding;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartCategoryAxisItem = {
	@:optional
	var autoBaseUnitSteps : ChartCategoryAxisItemAutoBaseUnitSteps;
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var baseUnit : String;
	@:optional
	var baseUnitStep : Dynamic;
	@:optional
	var categories : Dynamic;
	@:optional
	var color : String;
	@:optional
	var crosshair : ChartCategoryAxisItemCrosshair;
	@:optional
	var field : String;
	@:optional
	var justified : Bool;
	@:optional
	var labels : ChartCategoryAxisItemLabels;
	@:optional
	var line : ChartCategoryAxisItemLine;
	@:optional
	var majorGridLines : ChartCategoryAxisItemMajorGridLines;
	@:optional
	var majorTicks : ChartCategoryAxisItemMajorTicks;
	@:optional
	var max : Dynamic;
	@:optional
	var maxDateGroups : Float;
	@:optional
	var min : Dynamic;
	@:optional
	var minorGridLines : ChartCategoryAxisItemMinorGridLines;
	@:optional
	var minorTicks : ChartCategoryAxisItemMinorTicks;
	@:optional
	var name : String;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<ChartCategoryAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var roundToBaseUnit : Bool;
	@:optional
	var select : ChartCategoryAxisItemSelect;
	@:optional
	var startAngle : Float;
	@:optional
	var title : ChartCategoryAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var weekStartDay : Float;
	@:optional
	var notes : ChartCategoryAxisItemNotes;
};
typedef ChartChartAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartChartAreaMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartChartArea = {
	@:optional
	var background : String;
	@:optional
	var border : ChartChartAreaBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : ChartChartAreaMargin;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef ChartLegendBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartLegendInactiveItemsLabels = {
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
};
typedef ChartLegendInactiveItems = {
	@:optional
	var labels : ChartLegendInactiveItemsLabels;
};
typedef ChartLegendItem = {
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartLegendLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartLegendLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartLegendLabels = {
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartLegendLabelsMargin;
	@:optional
	var padding : ChartLegendLabelsPadding;
	@:optional
	var template : Dynamic;
};
typedef ChartLegendMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartLegendPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartLegend = {
	@:optional
	var align : String;
	@:optional
	var background : String;
	@:optional
	var border : ChartLegendBorder;
	@:optional
	var height : Float;
	@:optional
	var inactiveItems : ChartLegendInactiveItems;
	@:optional
	var item : ChartLegendItem;
	@:optional
	var labels : ChartLegendLabels;
	@:optional
	var margin : ChartLegendMargin;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var orientation : String;
	@:optional
	var padding : ChartLegendPadding;
	@:optional
	var position : String;
	@:optional
	var reverse : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartPaneBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartPaneMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartPanePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartPaneTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartPaneTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartPaneTitle = {
	@:optional
	var background : String;
	@:optional
	var border : ChartPaneTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartPaneTitleMargin;
	@:optional
	var position : String;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartPane = {
	@:optional
	var background : String;
	@:optional
	var border : ChartPaneBorder;
	@:optional
	var clip : Bool;
	@:optional
	var height : Float;
	@:optional
	var margin : ChartPaneMargin;
	@:optional
	var name : String;
	@:optional
	var padding : ChartPanePadding;
	@:optional
	var title : ChartPaneTitle;
};
typedef ChartPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef ChartPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var forceProxy : Bool;
	@:optional
	var fileName : String;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : ChartPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef ChartPlotAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartPlotAreaMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartPlotAreaPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartPlotArea = {
	@:optional
	var background : String;
	@:optional
	var border : ChartPlotAreaBorder;
	@:optional
	var margin : ChartPlotAreaMargin;
	@:optional
	var opacity : Float;
	@:optional
	var padding : ChartPlotAreaPadding;
};
typedef ChartSeriesItemBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var opacity : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemConnectors = {
	@:optional
	var color : String;
	@:optional
	var padding : Float;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemErrorBarsLine = {
	@:optional
	var width : Float;
	@:optional
	var dashType : String;
};
typedef ChartSeriesItemErrorBars = {
	@:optional
	var value : Dynamic;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var xValue : Dynamic;
	@:optional
	var yValue : Dynamic;
	@:optional
	var endCaps : Bool;
	@:optional
	var color : String;
	@:optional
	var line : ChartSeriesItemErrorBarsLine;
};
typedef ChartSeriesItemExtremesBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemExtremes = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemExtremesBorder;
	@:optional
	var size : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var rotation : Dynamic;
};
typedef ChartSeriesItemHighlightBorder = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemHighlightLine = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemHighlight = {
	@:optional
	var border : ChartSeriesItemHighlightBorder;
	@:optional
	var color : String;
	@:optional
	var line : ChartSeriesItemHighlightLine;
	@:optional
	var opacity : Float;
	@:optional
	var toggle : haxe.Constraints.Function;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartSeriesItemLabelsBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemLabelsFromBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemLabelsFromMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsFromPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsFrom = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemLabelsFromBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var font : Dynamic;
	@:optional
	var format : Dynamic;
	@:optional
	var margin : ChartSeriesItemLabelsFromMargin;
	@:optional
	var padding : ChartSeriesItemLabelsFromPadding;
	@:optional
	var position : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Dynamic;
};
typedef ChartSeriesItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsToBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemLabelsToMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsToPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemLabelsTo = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemLabelsToBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var font : Dynamic;
	@:optional
	var format : Dynamic;
	@:optional
	var margin : ChartSeriesItemLabelsToMargin;
	@:optional
	var padding : ChartSeriesItemLabelsToPadding;
	@:optional
	var position : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Dynamic;
};
typedef ChartSeriesItemLabels = {
	@:optional
	var align : String;
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemLabelsBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var distance : Float;
	@:optional
	var font : Dynamic;
	@:optional
	var format : Dynamic;
	@:optional
	var margin : ChartSeriesItemLabelsMargin;
	@:optional
	var padding : ChartSeriesItemLabelsPadding;
	@:optional
	var position : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Dynamic;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var from : ChartSeriesItemLabelsFrom;
	@:optional
	var to : ChartSeriesItemLabelsTo;
};
typedef ChartSeriesItemLine = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : String;
	@:optional
	var style : String;
};
typedef ChartSeriesItemMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemMarkersBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemMarkers = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemMarkersBorder;
	@:optional
	var size : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var visible : Dynamic;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var rotation : Dynamic;
};
typedef ChartSeriesItemNegativeValues = {
	@:optional
	var color : String;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartSeriesItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartSeriesItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : ChartSeriesItemNotesIcon;
	@:optional
	var label : ChartSeriesItemNotesLabel;
	@:optional
	var line : ChartSeriesItemNotesLine;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartSeriesItemOutliersBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemOutliers = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : ChartSeriesItemOutliersBorder;
	@:optional
	var size : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var rotation : Dynamic;
};
typedef ChartSeriesItemOverlay = {
	@:optional
	var gradient : String;
};
typedef ChartSeriesItemStack = {
	@:optional
	var type : String;
	@:optional
	var group : String;
};
typedef ChartSeriesItemTargetBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemTargetLine = {
	@:optional
	var width : Dynamic;
};
typedef ChartSeriesItemTarget = {
	@:optional
	var border : ChartSeriesItemTargetBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var line : ChartSeriesItemTargetLine;
};
typedef ChartSeriesItemTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesItemTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesItemTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesItemTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartSeriesItemTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesItem = {
	@:optional
	var aggregate : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var border : ChartSeriesItemBorder;
	@:optional
	var categoryField : String;
	@:optional
	var closeField : String;
	@:optional
	var color : Dynamic;
	@:optional
	var colorField : String;
	@:optional
	var connectors : ChartSeriesItemConnectors;
	@:optional
	var currentField : String;
	@:optional
	var dashType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var downColor : Dynamic;
	@:optional
	var downColorField : String;
	@:optional
	var segmentSpacing : Float;
	@:optional
	var summaryField : String;
	@:optional
	var neckRatio : Float;
	@:optional
	var dynamicSlope : Bool;
	@:optional
	var dynamicHeight : Bool;
	@:optional
	var errorBars : ChartSeriesItemErrorBars;
	@:optional
	var errorLowField : String;
	@:optional
	var errorHighField : String;
	@:optional
	var xErrorLowField : String;
	@:optional
	var xErrorHighField : String;
	@:optional
	var yErrorLowField : String;
	@:optional
	var yErrorHighField : String;
	@:optional
	var explodeField : String;
	@:optional
	var field : String;
	@:optional
	var fromField : String;
	@:optional
	var toField : String;
	@:optional
	var noteTextField : String;
	@:optional
	var lowerField : String;
	@:optional
	var q1Field : String;
	@:optional
	var medianField : String;
	@:optional
	var q3Field : String;
	@:optional
	var upperField : String;
	@:optional
	var meanField : String;
	@:optional
	var outliersField : String;
	@:optional
	var gap : Float;
	@:optional
	var highField : String;
	@:optional
	var highlight : ChartSeriesItemHighlight;
	@:optional
	var holeSize : Float;
	@:optional
	var labels : ChartSeriesItemLabels;
	@:optional
	var line : ChartSeriesItemLine;
	@:optional
	var lowField : String;
	@:optional
	var margin : ChartSeriesItemMargin;
	@:optional
	var markers : ChartSeriesItemMarkers;
	@:optional
	var outliers : ChartSeriesItemOutliers;
	@:optional
	var extremes : ChartSeriesItemExtremes;
	@:optional
	var maxSize : Float;
	@:optional
	var minSize : Float;
	@:optional
	var missingValues : String;
	@:optional
	var style : String;
	@:optional
	var name : String;
	@:optional
	var negativeColor : String;
	@:optional
	var negativeValues : ChartSeriesItemNegativeValues;
	@:optional
	var opacity : Float;
	@:optional
	var openField : String;
	@:optional
	var overlay : ChartSeriesItemOverlay;
	@:optional
	var padding : Float;
	@:optional
	var size : Float;
	@:optional
	var sizeField : String;
	@:optional
	var spacing : Float;
	@:optional
	var stack : ChartSeriesItemStack;
	@:optional
	var startAngle : Float;
	@:optional
	var target : ChartSeriesItemTarget;
	@:optional
	var targetField : String;
	@:optional
	var tooltip : ChartSeriesItemTooltip;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var visibleInLegend : Bool;
	@:optional
	var visibleInLegendField : String;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var width : Float;
	@:optional
	var xAxis : String;
	@:optional
	var xField : String;
	@:optional
	var yAxis : String;
	@:optional
	var yField : String;
	@:optional
	var notes : ChartSeriesItemNotes;
	@:optional
	var zIndex : Float;
};
typedef ChartSeriesDefaultsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsLabelsFromBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsLabelsFromMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsFromPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsFrom = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsLabelsFromBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartSeriesDefaultsLabelsFromMargin;
	@:optional
	var padding : ChartSeriesDefaultsLabelsFromPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesDefaultsLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsToBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsLabelsToMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsToPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsLabelsTo = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsLabelsToBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartSeriesDefaultsLabelsToMargin;
	@:optional
	var padding : ChartSeriesDefaultsLabelsToPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesDefaultsLabels = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartSeriesDefaultsLabelsMargin;
	@:optional
	var padding : ChartSeriesDefaultsLabelsPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var from : ChartSeriesDefaultsLabelsFrom;
	@:optional
	var to : ChartSeriesDefaultsLabelsTo;
};
typedef ChartSeriesDefaultsNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesDefaultsNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartSeriesDefaultsNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartSeriesDefaultsNotes = {
	@:optional
	var icon : ChartSeriesDefaultsNotesIcon;
	@:optional
	var label : ChartSeriesDefaultsNotesLabel;
	@:optional
	var line : ChartSeriesDefaultsNotesLine;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartSeriesDefaultsOverlay = {
	@:optional
	var gradient : String;
};
typedef ChartSeriesDefaultsStack = {
	@:optional
	var type : String;
};
typedef ChartSeriesDefaultsTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartSeriesDefaultsTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartSeriesDefaultsTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartSeriesDefaultsTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartSeriesDefaultsTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartSeriesDefaults = {
	@:optional
	var area : Dynamic;
	@:optional
	var bar : Dynamic;
	@:optional
	var border : ChartSeriesDefaultsBorder;
	@:optional
	var bubble : Dynamic;
	@:optional
	var candlestick : Dynamic;
	@:optional
	var column : Dynamic;
	@:optional
	var donut : Dynamic;
	@:optional
	var gap : Float;
	@:optional
	var labels : ChartSeriesDefaultsLabels;
	@:optional
	var line : Dynamic;
	@:optional
	var ohlc : Dynamic;
	@:optional
	var overlay : ChartSeriesDefaultsOverlay;
	@:optional
	var pie : Dynamic;
	@:optional
	var scatter : Dynamic;
	@:optional
	var scatterLine : Dynamic;
	@:optional
	var spacing : Float;
	@:optional
	var stack : ChartSeriesDefaultsStack;
	@:optional
	var type : String;
	@:optional
	var tooltip : ChartSeriesDefaultsTooltip;
	@:optional
	var verticalArea : Dynamic;
	@:optional
	var verticalLine : Dynamic;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var notes : ChartSeriesDefaultsNotes;
};
typedef ChartTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartTitle = {
	@:optional
	var align : String;
	@:optional
	var background : String;
	@:optional
	var border : ChartTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartTitleMargin;
	@:optional
	var padding : ChartTitlePadding;
	@:optional
	var position : String;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef ChartTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartTooltipPadding;
	@:optional
	var shared : Bool;
	@:optional
	var sharedTemplate : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartValueAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemCrosshairTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartValueAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartValueAxisItemCrosshairTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartValueAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var tooltip : ChartValueAxisItemCrosshairTooltip;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartValueAxisItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartValueAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartValueAxisItemLabelsMargin;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : ChartValueAxisItemLabelsPadding;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartValueAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartValueAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartValueAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartValueAxisItemMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartValueAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartValueAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef ChartValueAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartValueAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : ChartValueAxisItemNotesDataItemIcon;
	@:optional
	var label : ChartValueAxisItemNotesDataItemLabel;
	@:optional
	var line : ChartValueAxisItemNotesDataItemLine;
};
typedef ChartValueAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartValueAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartValueAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartValueAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : ChartValueAxisItemNotesIcon;
	@:optional
	var label : ChartValueAxisItemNotesLabel;
	@:optional
	var line : ChartValueAxisItemNotesLine;
	@:optional
	var data : Array<ChartValueAxisItemNotesDataItem>;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartValueAxisItemPlotBand = {
	@:optional
	var color : String;
	@:optional
	var from : Float;
	@:optional
	var opacity : Float;
	@:optional
	var to : Float;
};
typedef ChartValueAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartValueAxisItemTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartValueAxisItemTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartValueAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : ChartValueAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartValueAxisItemTitleMargin;
	@:optional
	var padding : ChartValueAxisItemTitlePadding;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartValueAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var color : String;
	@:optional
	var crosshair : ChartValueAxisItemCrosshair;
	@:optional
	var labels : ChartValueAxisItemLabels;
	@:optional
	var line : ChartValueAxisItemLine;
	@:optional
	var majorGridLines : ChartValueAxisItemMajorGridLines;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minorGridLines : ChartValueAxisItemMinorGridLines;
	@:optional
	var majorTicks : ChartValueAxisItemMajorTicks;
	@:optional
	var minorTicks : ChartValueAxisItemMinorTicks;
	@:optional
	var minorUnit : Float;
	@:optional
	var name : Dynamic;
	@:optional
	var narrowRange : Bool;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<ChartValueAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var title : ChartValueAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var notes : ChartValueAxisItemNotes;
};
typedef ChartXAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemCrosshairTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartXAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartXAxisItemCrosshairTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartXAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var tooltip : ChartXAxisItemCrosshairTooltip;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemLabelsDateFormats = {
	@:optional
	var days : String;
	@:optional
	var hours : String;
	@:optional
	var months : String;
	@:optional
	var weeks : String;
	@:optional
	var years : String;
};
typedef ChartXAxisItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartXAxisItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartXAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : ChartXAxisItemLabelsDateFormats;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartXAxisItemLabelsMargin;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : ChartXAxisItemLabelsPadding;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartXAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartXAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartXAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartXAxisItemMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartXAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartXAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef ChartXAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartXAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : ChartXAxisItemNotesDataItemIcon;
	@:optional
	var label : ChartXAxisItemNotesDataItemLabel;
	@:optional
	var line : ChartXAxisItemNotesDataItemLine;
};
typedef ChartXAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartXAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartXAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartXAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : ChartXAxisItemNotesIcon;
	@:optional
	var label : ChartXAxisItemNotesLabel;
	@:optional
	var line : ChartXAxisItemNotesLine;
	@:optional
	var data : Array<ChartXAxisItemNotesDataItem>;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartXAxisItemPlotBand = {
	@:optional
	var color : String;
	@:optional
	var from : Float;
	@:optional
	var opacity : Float;
	@:optional
	var to : Float;
};
typedef ChartXAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartXAxisItemTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartXAxisItemTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartXAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : ChartXAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartXAxisItemTitleMargin;
	@:optional
	var padding : ChartXAxisItemTitlePadding;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartXAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var baseUnit : String;
	@:optional
	var color : String;
	@:optional
	var crosshair : ChartXAxisItemCrosshair;
	@:optional
	var labels : ChartXAxisItemLabels;
	@:optional
	var line : ChartXAxisItemLine;
	@:optional
	var majorGridLines : ChartXAxisItemMajorGridLines;
	@:optional
	var minorGridLines : ChartXAxisItemMinorGridLines;
	@:optional
	var minorTicks : ChartXAxisItemMinorTicks;
	@:optional
	var majorTicks : ChartXAxisItemMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var minorUnit : Float;
	@:optional
	var name : Dynamic;
	@:optional
	var narrowRange : Bool;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<ChartXAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var startAngle : Float;
	@:optional
	var title : ChartXAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var notes : ChartXAxisItemNotes;
};
typedef ChartYAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemCrosshairTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartYAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : ChartYAxisItemCrosshairTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef ChartYAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var tooltip : ChartYAxisItemCrosshairTooltip;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemLabelsDateFormats = {
	@:optional
	var days : String;
	@:optional
	var hours : String;
	@:optional
	var months : String;
	@:optional
	var weeks : String;
	@:optional
	var years : String;
};
typedef ChartYAxisItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartYAxisItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartYAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : ChartYAxisItemLabelsDateFormats;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : ChartYAxisItemLabelsMargin;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : ChartYAxisItemLabelsPadding;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartYAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartYAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartYAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartYAxisItemMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef ChartYAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartYAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef ChartYAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartYAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : ChartYAxisItemNotesDataItemIcon;
	@:optional
	var label : ChartYAxisItemNotesDataItemLabel;
	@:optional
	var line : ChartYAxisItemNotesDataItemLine;
};
typedef ChartYAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef ChartYAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef ChartYAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef ChartYAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : ChartYAxisItemNotesIcon;
	@:optional
	var label : ChartYAxisItemNotesLabel;
	@:optional
	var line : ChartYAxisItemNotesLine;
	@:optional
	var data : Array<ChartYAxisItemNotesDataItem>;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartYAxisItemPlotBand = {
	@:optional
	var color : String;
	@:optional
	var from : Float;
	@:optional
	var opacity : Float;
	@:optional
	var to : Float;
};
typedef ChartYAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ChartYAxisItemTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartYAxisItemTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef ChartYAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : ChartYAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : ChartYAxisItemTitleMargin;
	@:optional
	var padding : ChartYAxisItemTitlePadding;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ChartYAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var baseUnit : String;
	@:optional
	var color : String;
	@:optional
	var crosshair : ChartYAxisItemCrosshair;
	@:optional
	var labels : ChartYAxisItemLabels;
	@:optional
	var line : ChartYAxisItemLine;
	@:optional
	var majorGridLines : ChartYAxisItemMajorGridLines;
	@:optional
	var minorGridLines : ChartYAxisItemMinorGridLines;
	@:optional
	var minorTicks : ChartYAxisItemMinorTicks;
	@:optional
	var majorTicks : ChartYAxisItemMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var minorUnit : Float;
	@:optional
	var name : Dynamic;
	@:optional
	var narrowRange : Bool;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<ChartYAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var title : ChartYAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var notes : ChartYAxisItemNotes;
};
typedef ChartExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef ChartExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef ChartToggleHighlightOptions = {
	@:optional
	var series : String;
	@:optional
	var category : String;
};
typedef ChartSeriesClickEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef ChartSeriesHoverEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef ChartOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var axisDefaults : Dynamic;
	@:optional
	var categoryAxis : Array<ChartCategoryAxisItem>;
	@:optional
	var chartArea : ChartChartArea;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var legend : ChartLegend;
	@:optional
	var panes : Array<ChartPane>;
	@:optional
	var pdf : ChartPdf;
	@:optional
	var plotArea : ChartPlotArea;
	@:optional
	var renderAs : String;
	@:optional
	var series : Array<ChartSeriesItem>;
	@:optional
	var seriesColors : Dynamic;
	@:optional
	var seriesDefaults : ChartSeriesDefaults;
	@:optional
	var theme : String;
	@:optional
	var title : ChartTitle;
	@:optional
	var tooltip : ChartTooltip;
	@:optional
	var transitions : Bool;
	@:optional
	var valueAxis : Array<ChartValueAxisItem>;
	@:optional
	var xAxis : Array<ChartXAxisItem>;
	@:optional
	var yAxis : Array<ChartYAxisItem>;
	@:optional
	function axisLabelClick(e:ChartAxisLabelClickEvent):Void;
	@:optional
	function legendItemClick(e:ChartLegendItemClickEvent):Void;
	@:optional
	function legendItemHover(e:ChartLegendItemHoverEvent):Void;
	@:optional
	function dataBound(e:ChartDataBoundEvent):Void;
	@:optional
	function drag(e:ChartDragEvent):Void;
	@:optional
	function dragEnd(e:ChartDragEndEvent):Void;
	@:optional
	function dragStart(e:ChartDragStartEvent):Void;
	@:optional
	function noteClick(e:ChartNoteClickEvent):Void;
	@:optional
	function noteHover(e:ChartNoteHoverEvent):Void;
	@:optional
	function plotAreaClick(e:ChartPlotAreaClickEvent):Void;
	@:optional
	function render(e:ChartEvent):Void;
	@:optional
	function select(e:ChartSelectEvent):Void;
	@:optional
	function selectEnd(e:ChartSelectEndEvent):Void;
	@:optional
	function selectStart(e:ChartSelectStartEvent):Void;
	@:optional
	function seriesClick(e:ChartSeriesClickEvent):Void;
	@:optional
	function seriesHover(e:ChartSeriesHoverEvent):Void;
	@:optional
	function zoom(e:ChartZoomEvent):Void;
	@:optional
	function zoomEnd(e:ChartZoomEndEvent):Void;
	@:optional
	function zoomStart(e:ChartZoomStartEvent):Void;
};
typedef ChartEvent = {
	var sender : Chart;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ChartAxisLabelClickEvent = {
	>ChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var index : Dynamic;
	@:optional
	var text : String;
	@:optional
	var value : Dynamic;
};
typedef ChartLegendItemClickEvent = {
	>ChartEvent,
	@:optional
	var text : String;
	@:optional
	var series : Dynamic;
	@:optional
	var seriesIndex : Float;
	@:optional
	var pointIndex : Float;
	@:optional
	var element : Dynamic;
};
typedef ChartLegendItemHoverEvent = {
	>ChartEvent,
	@:optional
	var text : String;
	@:optional
	var series : Dynamic;
	@:optional
	var seriesIndex : Float;
	@:optional
	var pointIndex : Float;
	@:optional
	var element : Dynamic;
};
typedef ChartDataBoundEvent = {
	>ChartEvent,
};
typedef ChartDragEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef ChartDragEndEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef ChartDragStartEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef ChartNoteClickEvent = {
	>ChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var series : Dynamic;
	@:optional
	var dataItem : Dynamic;
};
typedef ChartNoteHoverEvent = {
	>ChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var series : Dynamic;
	@:optional
	var dataItem : Dynamic;
};
typedef ChartPlotAreaClickEvent = {
	>ChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var originalEvent : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var x : Dynamic;
	@:optional
	var y : Dynamic;
};
typedef ChartSelectEvent = {
	>ChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef ChartSelectEndEvent = {
	>ChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef ChartSelectStartEvent = {
	>ChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef ChartSeriesClickEvent = {
	>ChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var originalEvent : Dynamic;
	@:optional
	var series : ChartSeriesClickEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef ChartSeriesHoverEvent = {
	>ChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var categoryPoints : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var originalEvent : Dynamic;
	@:optional
	var series : ChartSeriesHoverEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef ChartZoomEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var delta : Float;
	@:optional
	var originalEvent : Dynamic;
};
typedef ChartZoomEndEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef ChartZoomStartEvent = {
	>ChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
extern class Diagram extends kendo.ui.Widget {
	static var fn : Diagram;
	static function extend(proto:Dynamic):Diagram;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DiagramOptions):Void;
	var options : DiagramOptions;
	var dataSource : kendo.data.DataSource;
	function addConnection(connection:Dynamic, undoable:Bool):Void;
	function addShape(obj:Dynamic, undoable:Bool):kendo.dataviz.diagram.Shape;
	function alignShapes(direction:String):Void;
	function boundingBox(items:Dynamic):kendo.dataviz.diagram.Rect;
	function bringIntoView(obj:Dynamic, options:Dynamic):Void;
	function cancelEdit():Void;
	function clear():Void;
	function connect(source:Dynamic, target:Dynamic, options:Dynamic):Void;
	function connected(source:Dynamic, target:Dynamic):Void;
	function copy():Void;
	function createConnection(item:Dynamic):Void;
	function createShape(item:Dynamic):Void;
	function cut():Void;
	function destroy():Void;
	function documentToModel(point:Dynamic):Dynamic;
	function documentToView(point:Dynamic):Dynamic;
	function edit(item:Dynamic):Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function focus():Void;
	function getShapeById(id:String):Dynamic;
	function layerToModel(point:Dynamic):Dynamic;
	function layout(options:Dynamic):Void;
	function load(json:String):Void;
	function modelToDocument(point:Dynamic):Dynamic;
	function modelToLayer(point:Dynamic):Dynamic;
	function modelToView(point:Dynamic):Dynamic;
	function pan(pan:Dynamic):Void;
	function paste():Void;
	function redo():Void;
	function remove(items:Dynamic, undoable:Bool):Void;
	function resize():Void;
	function save():Void;
	function saveEdit():Void;
	@:overload(function(elements:kendo.dataviz.diagram.Connection, options:Dynamic):Void { })
	@:overload(function(elements:kendo.dataviz.diagram.Shape, options:Dynamic):Void { })
	@:overload(function(elements:Dynamic, options:Dynamic):Void { })
	function select():Dynamic;
	function selectAll():Void;
	function selectArea(rect:kendo.dataviz.diagram.Rect):Void;
	function setConnectionsDataSource(dataSource:kendo.data.DataSource):Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function toBack(items:Dynamic, undoable:Bool):Void;
	function toFront(items:Dynamic, undoable:Bool):Void;
	function transformPoint(p:Dynamic):Void;
	function transformRect(r:Dynamic):Void;
	function undo():Void;
	function viewToDocument(point:Dynamic):Dynamic;
	function viewToModel(point:Dynamic):Dynamic;
	function viewport():Void;
	function zoom(zoom:Float, point:Dynamic):Void;
}
typedef DiagramConnectionDefaultsContent = {
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef DiagramConnectionDefaultsEditableTool = {
	@:optional
	var name : String;
};
typedef DiagramConnectionDefaultsEditable = {
	@:optional
	var tools : Array<DiagramConnectionDefaultsEditableTool>;
};
typedef DiagramConnectionDefaultsEndCapFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionDefaultsEndCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionDefaultsEndCap = {
	@:optional
	var fill : DiagramConnectionDefaultsEndCapFill;
	@:optional
	var stroke : DiagramConnectionDefaultsEndCapStroke;
	@:optional
	var type : String;
};
typedef DiagramConnectionDefaultsHoverStroke = {
	@:optional
	var color : String;
};
typedef DiagramConnectionDefaultsHover = {
	@:optional
	var stroke : DiagramConnectionDefaultsHoverStroke;
};
typedef DiagramConnectionDefaultsSelectionHandlesFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionDefaultsSelectionHandlesStroke = {
	@:optional
	var color : String;
};
typedef DiagramConnectionDefaultsSelectionHandles = {
	@:optional
	var fill : DiagramConnectionDefaultsSelectionHandlesFill;
	@:optional
	var stroke : DiagramConnectionDefaultsSelectionHandlesStroke;
};
typedef DiagramConnectionDefaultsSelection = {
	@:optional
	var handles : DiagramConnectionDefaultsSelectionHandles;
};
typedef DiagramConnectionDefaultsStartCapFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionDefaultsStartCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionDefaultsStartCap = {
	@:optional
	var fill : DiagramConnectionDefaultsStartCapFill;
	@:optional
	var stroke : DiagramConnectionDefaultsStartCapStroke;
	@:optional
	var type : String;
};
typedef DiagramConnectionDefaultsStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionDefaults = {
	@:optional
	var content : DiagramConnectionDefaultsContent;
	@:optional
	var editable : DiagramConnectionDefaultsEditable;
	@:optional
	var endCap : DiagramConnectionDefaultsEndCap;
	@:optional
	var hover : DiagramConnectionDefaultsHover;
	@:optional
	var selectable : Bool;
	@:optional
	var selection : DiagramConnectionDefaultsSelection;
	@:optional
	var startCap : DiagramConnectionDefaultsStartCap;
	@:optional
	var stroke : DiagramConnectionDefaultsStroke;
};
typedef DiagramConnectionContent = {
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef DiagramConnectionEditableTool = {
	@:optional
	var name : String;
};
typedef DiagramConnectionEditable = {
	@:optional
	var tools : Array<DiagramConnectionEditableTool>;
};
typedef DiagramConnectionEndCapFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionEndCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionEndCap = {
	@:optional
	var fill : DiagramConnectionEndCapFill;
	@:optional
	var stroke : DiagramConnectionEndCapStroke;
	@:optional
	var type : String;
};
typedef DiagramConnectionFrom = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef DiagramConnectionHoverStroke = {
	@:optional
	var color : String;
};
typedef DiagramConnectionHover = {
	@:optional
	var stroke : DiagramConnectionHoverStroke;
};
typedef DiagramConnectionPoint = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef DiagramConnectionSelectionHandlesFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionSelectionHandlesStroke = {
	@:optional
	var color : String;
};
typedef DiagramConnectionSelectionHandles = {
	@:optional
	var fill : DiagramConnectionSelectionHandlesFill;
	@:optional
	var stroke : DiagramConnectionSelectionHandlesStroke;
};
typedef DiagramConnectionSelection = {
	@:optional
	var handles : DiagramConnectionSelectionHandles;
};
typedef DiagramConnectionStartCapFill = {
	@:optional
	var color : String;
};
typedef DiagramConnectionStartCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionStartCap = {
	@:optional
	var fill : DiagramConnectionStartCapFill;
	@:optional
	var stroke : DiagramConnectionStartCapStroke;
	@:optional
	var type : String;
};
typedef DiagramConnectionStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef DiagramConnectionTo = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef DiagramConnection = {
	@:optional
	var content : DiagramConnectionContent;
	@:optional
	var editable : DiagramConnectionEditable;
	@:optional
	var endCap : DiagramConnectionEndCap;
	@:optional
	var from : DiagramConnectionFrom;
	@:optional
	var hover : DiagramConnectionHover;
	@:optional
	var points : Array<DiagramConnectionPoint>;
	@:optional
	var selection : DiagramConnectionSelection;
	@:optional
	var startCap : DiagramConnectionStartCap;
	@:optional
	var stroke : DiagramConnectionStroke;
	@:optional
	var to : DiagramConnectionTo;
};
typedef DiagramEditableResizeHandlesFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramEditableResizeHandlesHoverFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramEditableResizeHandlesHoverStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramEditableResizeHandlesHover = {
	@:optional
	var fill : DiagramEditableResizeHandlesHoverFill;
	@:optional
	var stroke : DiagramEditableResizeHandlesHoverStroke;
};
typedef DiagramEditableResizeHandlesStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramEditableResizeHandles = {
	@:optional
	var fill : DiagramEditableResizeHandlesFill;
	@:optional
	var height : Float;
	@:optional
	var hover : DiagramEditableResizeHandlesHover;
	@:optional
	var stroke : DiagramEditableResizeHandlesStroke;
	@:optional
	var width : Float;
};
typedef DiagramEditableResize = {
	@:optional
	var handles : DiagramEditableResizeHandles;
};
typedef DiagramEditableRotateFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramEditableRotateStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef DiagramEditableRotate = {
	@:optional
	var fill : DiagramEditableRotateFill;
	@:optional
	var stroke : DiagramEditableRotateStroke;
};
typedef DiagramEditableTool = {
	@:optional
	var name : String;
	@:optional
	var step : Float;
};
typedef DiagramEditable = {
	@:optional
	var connectionTemplate : Dynamic;
	@:optional
	var resize : DiagramEditableResize;
	@:optional
	var rotate : DiagramEditableRotate;
	@:optional
	var shapeTemplate : Dynamic;
	@:optional
	var tools : Array<DiagramEditableTool>;
};
typedef DiagramLayoutGrid = {
	@:optional
	var componentSpacingX : Float;
	@:optional
	var componentSpacingY : Float;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var width : Float;
};
typedef DiagramLayout = {
	@:optional
	var endRadialAngle : Float;
	@:optional
	var grid : DiagramLayoutGrid;
	@:optional
	var horizontalSeparation : Float;
	@:optional
	var iterations : Float;
	@:optional
	var layerSeparation : Float;
	@:optional
	var nodeDistance : Float;
	@:optional
	var radialFirstLevelSeparation : Float;
	@:optional
	var radialSeparation : Float;
	@:optional
	var startRadialAngle : Float;
	@:optional
	var subtype : String;
	@:optional
	var type : String;
	@:optional
	var underneathHorizontalOffset : Float;
	@:optional
	var underneathVerticalSeparation : Float;
	@:optional
	var underneathVerticalTopOffset : Float;
	@:optional
	var verticalSeparation : Float;
};
typedef DiagramPannable = {
	@:optional
	var key : String;
};
typedef DiagramPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef DiagramPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : DiagramPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef DiagramSelectableStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramSelectable = {
	@:optional
	var key : String;
	@:optional
	var stroke : DiagramSelectableStroke;
};
typedef DiagramShapeDefaultsConnector = {
	@:optional
	var name : String;
	@:optional
	var position : Dynamic;
};
typedef DiagramShapeDefaultsContent = {
	@:optional
	var align : String;
	@:optional
	var color : String;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef DiagramShapeDefaultsEditableTool = {
	@:optional
	var name : String;
	@:optional
	var step : Float;
};
typedef DiagramShapeDefaultsEditable = {
	@:optional
	var connect : Bool;
	@:optional
	var tools : Array<DiagramShapeDefaultsEditableTool>;
};
typedef DiagramShapeDefaultsFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramShapeDefaultsHoverFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramShapeDefaultsHover = {
	@:optional
	var fill : DiagramShapeDefaultsHoverFill;
};
typedef DiagramShapeDefaultsRotation = {
	@:optional
	var angle : Float;
};
typedef DiagramShapeDefaultsStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramShapeDefaults = {
	@:optional
	var connectors : Array<DiagramShapeDefaultsConnector>;
	@:optional
	var content : DiagramShapeDefaultsContent;
	@:optional
	var editable : DiagramShapeDefaultsEditable;
	@:optional
	var fill : DiagramShapeDefaultsFill;
	@:optional
	var height : Float;
	@:optional
	var hover : DiagramShapeDefaultsHover;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var path : String;
	@:optional
	var rotation : DiagramShapeDefaultsRotation;
	@:optional
	var selectable : Bool;
	@:optional
	var source : String;
	@:optional
	var stroke : DiagramShapeDefaultsStroke;
	@:optional
	var type : String;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef DiagramShapeConnector = {
	@:optional
	var description : String;
	@:optional
	var name : String;
	@:optional
	var position : Dynamic;
};
typedef DiagramShapeContent = {
	@:optional
	var align : String;
	@:optional
	var color : String;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef DiagramShapeEditableTool = {
	@:optional
	var name : String;
	@:optional
	var step : Float;
};
typedef DiagramShapeEditable = {
	@:optional
	var connect : Bool;
	@:optional
	var tools : Array<DiagramShapeEditableTool>;
};
typedef DiagramShapeFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramShapeHoverFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef DiagramShapeHover = {
	@:optional
	var fill : DiagramShapeHoverFill;
};
typedef DiagramShapeRotation = {
	@:optional
	var angle : Float;
};
typedef DiagramShapeStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef DiagramShape = {
	@:optional
	var connectors : Array<DiagramShapeConnector>;
	@:optional
	var content : DiagramShapeContent;
	@:optional
	var editable : DiagramShapeEditable;
	@:optional
	var fill : DiagramShapeFill;
	@:optional
	var height : Float;
	@:optional
	var hover : DiagramShapeHover;
	@:optional
	var id : String;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var path : String;
	@:optional
	var rotation : DiagramShapeRotation;
	@:optional
	var source : String;
	@:optional
	var stroke : DiagramShapeStroke;
	@:optional
	var type : String;
	@:optional
	var visual : haxe.Constraints.Function;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef DiagramExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef DiagramExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef DiagramSelectOptions = {
	@:optional
	var addToSelection : Bool;
};
typedef DiagramOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var connectionDefaults : DiagramConnectionDefaults;
	@:optional
	var connections : Array<DiagramConnection>;
	@:optional
	var connectionsDataSource : Dynamic;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var editable : DiagramEditable;
	@:optional
	var layout : DiagramLayout;
	@:optional
	var pannable : DiagramPannable;
	@:optional
	var pdf : DiagramPdf;
	@:optional
	var selectable : DiagramSelectable;
	@:optional
	var shapeDefaults : DiagramShapeDefaults;
	@:optional
	var shapes : Array<DiagramShape>;
	@:optional
	var template : Dynamic;
	@:optional
	var zoom : Float;
	@:optional
	var zoomMax : Float;
	@:optional
	var zoomMin : Float;
	@:optional
	var zoomRate : Float;
	@:optional
	function add(e:DiagramAddEvent):Void;
	@:optional
	function cancel(e:DiagramCancelEvent):Void;
	@:optional
	function change(e:DiagramChangeEvent):Void;
	@:optional
	function click(e:DiagramClickEvent):Void;
	@:optional
	function dataBound(e:DiagramDataBoundEvent):Void;
	@:optional
	function edit(e:DiagramEditEvent):Void;
	@:optional
	function itemBoundsChange(e:DiagramItemBoundsChangeEvent):Void;
	@:optional
	function itemRotate(e:DiagramItemRotateEvent):Void;
	@:optional
	function mouseEnter(e:DiagramMouseEnterEvent):Void;
	@:optional
	function mouseLeave(e:DiagramMouseLeaveEvent):Void;
	@:optional
	function pan(e:DiagramPanEvent):Void;
	@:optional
	function remove(e:DiagramRemoveEvent):Void;
	@:optional
	function save(e:DiagramSaveEvent):Void;
	@:optional
	function select(e:DiagramSelectEvent):Void;
	@:optional
	function zoomEnd(e:DiagramZoomEndEvent):Void;
	@:optional
	function zoomStart(e:DiagramZoomStartEvent):Void;
};
typedef DiagramEvent = {
	var sender : Diagram;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DiagramAddEvent = {
	>DiagramEvent,
	@:optional
	var connection : kendo.dataviz.diagram.Connection;
	@:optional
	var shape : kendo.dataviz.diagram.Shape;
};
typedef DiagramCancelEvent = {
	>DiagramEvent,
	@:optional
	var container : JQuery;
	@:optional
	var connection : kendo.data.Model;
	@:optional
	var shape : kendo.data.Model;
};
typedef DiagramChangeEvent = {
	>DiagramEvent,
	@:optional
	var added : Dynamic;
	@:optional
	var removed : Dynamic;
};
typedef DiagramClickEvent = {
	>DiagramEvent,
	@:optional
	var item : Dynamic;
	@:optional
	var point : kendo.dataviz.diagram.Point;
};
typedef DiagramDataBoundEvent = {
	>DiagramEvent,
};
typedef DiagramEditEvent = {
	>DiagramEvent,
	@:optional
	var container : JQuery;
	@:optional
	var connection : kendo.data.Model;
	@:optional
	var shape : kendo.data.Model;
};
typedef DiagramItemBoundsChangeEvent = {
	>DiagramEvent,
	@:optional
	var bounds : kendo.dataviz.diagram.Rect;
	@:optional
	var item : Dynamic;
};
typedef DiagramItemRotateEvent = {
	>DiagramEvent,
	@:optional
	var item : Dynamic;
};
typedef DiagramMouseEnterEvent = {
	>DiagramEvent,
	@:optional
	var item : Dynamic;
};
typedef DiagramMouseLeaveEvent = {
	>DiagramEvent,
	@:optional
	var item : Dynamic;
};
typedef DiagramPanEvent = {
	>DiagramEvent,
};
typedef DiagramRemoveEvent = {
	>DiagramEvent,
	@:optional
	var connection : kendo.dataviz.diagram.Connection;
	@:optional
	var shape : kendo.dataviz.diagram.Shape;
};
typedef DiagramSaveEvent = {
	>DiagramEvent,
	@:optional
	var container : JQuery;
	@:optional
	var connection : kendo.data.Model;
	@:optional
	var shape : kendo.data.Model;
};
typedef DiagramSelectEvent = {
	>DiagramEvent,
	@:optional
	var selected : Dynamic;
	@:optional
	var deselected : Dynamic;
};
typedef DiagramZoomEndEvent = {
	>DiagramEvent,
	@:optional
	var point : kendo.dataviz.diagram.Point;
	@:optional
	var zoom : Float;
};
typedef DiagramZoomStartEvent = {
	>DiagramEvent,
	@:optional
	var point : kendo.dataviz.diagram.Point;
	@:optional
	var zoom : Float;
};
extern class LinearGauge extends kendo.ui.Widget {
	static var fn : LinearGauge;
	static function extend(proto:Dynamic):LinearGauge;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:LinearGaugeOptions):Void;
	var options : LinearGaugeOptions;
	function allValues(values:Dynamic):Dynamic;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function redraw():Void;
	function resize(?force:Bool):Void;
	function svg():Void;
	function imageDataURL():String;
	function value():Void;
}
typedef LinearGaugeGaugeAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef LinearGaugeGaugeArea = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : LinearGaugeGaugeAreaBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : Dynamic;
	@:optional
	var width : Float;
};
typedef LinearGaugePointerItemBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef LinearGaugePointerItemTrackBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef LinearGaugePointerItemTrack = {
	@:optional
	var border : LinearGaugePointerItemTrackBorder;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
};
typedef LinearGaugePointerItem = {
	@:optional
	var border : LinearGaugePointerItemBorder;
	@:optional
	var color : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var opacity : Float;
	@:optional
	var shape : String;
	@:optional
	var size : Float;
	@:optional
	var track : LinearGaugePointerItemTrack;
	@:optional
	var value : Float;
};
typedef LinearGaugeScaleLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef LinearGaugeScaleLabels = {
	@:optional
	var background : String;
	@:optional
	var border : LinearGaugeScaleLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef LinearGaugeScaleLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef LinearGaugeScaleMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef LinearGaugeScaleMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef LinearGaugeScaleRange = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var opacity : Float;
	@:optional
	var color : String;
};
typedef LinearGaugeScale = {
	@:optional
	var line : LinearGaugeScaleLine;
	@:optional
	var labels : LinearGaugeScaleLabels;
	@:optional
	var majorTicks : LinearGaugeScaleMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minorTicks : LinearGaugeScaleMinorTicks;
	@:optional
	var minorUnit : Float;
	@:optional
	var mirror : Bool;
	@:optional
	var ranges : Array<LinearGaugeScaleRange>;
	@:optional
	var rangePlaceholderColor : String;
	@:optional
	var rangeSize : Float;
	@:optional
	var reverse : Bool;
	@:optional
	var vertical : Bool;
};
typedef LinearGaugeExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef LinearGaugeExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef LinearGaugeOptions = {
	@:optional
	var name : String;
	@:optional
	var gaugeArea : LinearGaugeGaugeArea;
	@:optional
	var pointer : Array<LinearGaugePointerItem>;
	@:optional
	var renderAs : String;
	@:optional
	var scale : LinearGaugeScale;
	@:optional
	var transitions : Bool;
};
typedef LinearGaugeEvent = {
	var sender : LinearGauge;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Map extends kendo.ui.Widget {
	static var fn : Map;
	static function extend(proto:Dynamic):Map;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:MapOptions):Void;
	var options : MapOptions;
	@:overload(function(center:Dynamic):Void { })
	@:overload(function(center:kendo.dataviz.map.Location):Void { })
	function center():kendo.dataviz.map.Location;
	function destroy():Void;
	@:overload(function(e:JQueryEventObject):kendo.geometry.Point { })
	function eventOffset(e:Dynamic):kendo.geometry.Point;
	@:overload(function(e:JQueryEventObject):kendo.geometry.Point { })
	function eventToLayer(e:Dynamic):kendo.geometry.Point;
	@:overload(function(e:JQueryEventObject):kendo.geometry.Point { })
	function eventToLocation(e:Dynamic):kendo.geometry.Point;
	@:overload(function(e:JQueryEventObject):kendo.geometry.Point { })
	function eventToView(e:Dynamic):kendo.geometry.Point;
	@:overload(function(extent:kendo.dataviz.map.Extent):Void { })
	function extent():kendo.dataviz.map.Extent;
	@:overload(function(point:kendo.geometry.Point, zoom:Float):kendo.dataviz.map.Location { })
	function layerToLocation(point:Dynamic, zoom:Float):kendo.dataviz.map.Location;
	@:overload(function(location:kendo.dataviz.map.Location, zoom:Float):kendo.geometry.Point { })
	function locationToLayer(location:Dynamic, zoom:Float):kendo.geometry.Point;
	@:overload(function(location:kendo.dataviz.map.Location):kendo.geometry.Point { })
	function locationToView(location:Dynamic):kendo.geometry.Point;
	function resize(?force:Bool):Void;
	function setOptions(options:Dynamic):Void;
	function viewSize():Dynamic;
	@:overload(function(point:kendo.geometry.Point, zoom:Float):kendo.dataviz.map.Location { })
	function viewToLocation(point:Dynamic, zoom:Float):kendo.dataviz.map.Location;
	@:overload(function(level:Float):Void { })
	function zoom():Float;
	var layers : Dynamic;
}
typedef MapControlsAttribution = {
	@:optional
	var position : String;
};
typedef MapControlsNavigator = {
	@:optional
	var position : String;
};
typedef MapControlsZoom = {
	@:optional
	var position : String;
};
typedef MapControls = {
	@:optional
	var attribution : MapControlsAttribution;
	@:optional
	var navigator : MapControlsNavigator;
	@:optional
	var zoom : MapControlsZoom;
};
typedef MapLayerDefaultsBing = {
	@:optional
	var attribution : String;
	@:optional
	var opacity : Float;
	@:optional
	var key : String;
	@:optional
	var imagerySet : String;
};
typedef MapLayerDefaultsBubbleStyleFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef MapLayerDefaultsBubbleStyleStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef MapLayerDefaultsBubbleStyle = {
	@:optional
	var fill : MapLayerDefaultsBubbleStyleFill;
	@:optional
	var stroke : MapLayerDefaultsBubbleStyleStroke;
};
typedef MapLayerDefaultsBubble = {
	@:optional
	var attribution : String;
	@:optional
	var opacity : Float;
	@:optional
	var maxSize : Float;
	@:optional
	var minSize : Float;
	@:optional
	var style : MapLayerDefaultsBubbleStyle;
	@:optional
	var symbol : Dynamic;
};
typedef MapLayerDefaultsMarkerTooltipAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapLayerDefaultsMarkerTooltipAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapLayerDefaultsMarkerTooltipAnimation = {
	@:optional
	var close : MapLayerDefaultsMarkerTooltipAnimationClose;
	@:optional
	var open : MapLayerDefaultsMarkerTooltipAnimationOpen;
};
typedef MapLayerDefaultsMarkerTooltipContent = {
	@:optional
	var url : String;
};
typedef MapLayerDefaultsMarkerTooltip = {
	@:optional
	var autoHide : Bool;
	@:optional
	var animation : MapLayerDefaultsMarkerTooltipAnimation;
	@:optional
	var content : MapLayerDefaultsMarkerTooltipContent;
	@:optional
	var template : String;
	@:optional
	var callout : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var position : String;
	@:optional
	var showAfter : Float;
	@:optional
	var showOn : String;
};
typedef MapLayerDefaultsMarker = {
	@:optional
	var shape : String;
	@:optional
	var tooltip : MapLayerDefaultsMarkerTooltip;
	@:optional
	var opacity : Float;
};
typedef MapLayerDefaultsShapeStyleFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef MapLayerDefaultsShapeStyleStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef MapLayerDefaultsShapeStyle = {
	@:optional
	var fill : MapLayerDefaultsShapeStyleFill;
	@:optional
	var stroke : MapLayerDefaultsShapeStyleStroke;
};
typedef MapLayerDefaultsShape = {
	@:optional
	var attribution : String;
	@:optional
	var opacity : Float;
	@:optional
	var style : MapLayerDefaultsShapeStyle;
};
typedef MapLayerDefaultsTile = {
	@:optional
	var urlTemplate : String;
	@:optional
	var attribution : String;
	@:optional
	var subdomains : Dynamic;
	@:optional
	var opacity : Float;
};
typedef MapLayerDefaults = {
	@:optional
	var marker : MapLayerDefaultsMarker;
	@:optional
	var shape : MapLayerDefaultsShape;
	@:optional
	var bubble : MapLayerDefaultsBubble;
	@:optional
	var tile : MapLayerDefaultsTile;
	@:optional
	var bing : MapLayerDefaultsBing;
};
typedef MapLayerStyleFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef MapLayerStyleStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : Float;
	@:optional
	var opacity : Float;
	@:optional
	var width : Float;
};
typedef MapLayerStyle = {
	@:optional
	var fill : MapLayerStyleFill;
	@:optional
	var stroke : MapLayerStyleStroke;
};
typedef MapLayerTooltipAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapLayerTooltipAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapLayerTooltipAnimation = {
	@:optional
	var close : MapLayerTooltipAnimationClose;
	@:optional
	var open : MapLayerTooltipAnimationOpen;
};
typedef MapLayerTooltipContent = {
	@:optional
	var url : String;
};
typedef MapLayerTooltip = {
	@:optional
	var autoHide : Bool;
	@:optional
	var animation : MapLayerTooltipAnimation;
	@:optional
	var content : MapLayerTooltipContent;
	@:optional
	var template : String;
	@:optional
	var callout : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var position : String;
	@:optional
	var showAfter : Float;
	@:optional
	var showOn : String;
};
typedef MapLayer = {
	@:optional
	var attribution : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var extent : Dynamic;
	@:optional
	var key : String;
	@:optional
	var imagerySet : String;
	@:optional
	var locationField : String;
	@:optional
	var shape : String;
	@:optional
	var titleField : String;
	@:optional
	var tooltip : MapLayerTooltip;
	@:optional
	var maxSize : Float;
	@:optional
	var minSize : Float;
	@:optional
	var opacity : Float;
	@:optional
	var subdomains : Dynamic;
	@:optional
	var symbol : Dynamic;
	@:optional
	var type : String;
	@:optional
	var style : MapLayerStyle;
	@:optional
	var urlTemplate : String;
	@:optional
	var valueField : String;
	@:optional
	var zIndex : Float;
};
typedef MapMarkerDefaultsTooltipAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapMarkerDefaultsTooltipAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapMarkerDefaultsTooltipAnimation = {
	@:optional
	var close : MapMarkerDefaultsTooltipAnimationClose;
	@:optional
	var open : MapMarkerDefaultsTooltipAnimationOpen;
};
typedef MapMarkerDefaultsTooltipContent = {
	@:optional
	var url : String;
};
typedef MapMarkerDefaultsTooltip = {
	@:optional
	var autoHide : Bool;
	@:optional
	var animation : MapMarkerDefaultsTooltipAnimation;
	@:optional
	var content : MapMarkerDefaultsTooltipContent;
	@:optional
	var template : String;
	@:optional
	var callout : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var position : String;
	@:optional
	var showAfter : Float;
	@:optional
	var showOn : String;
};
typedef MapMarkerDefaults = {
	@:optional
	var shape : String;
	@:optional
	var tooltip : MapMarkerDefaultsTooltip;
};
typedef MapMarkerTooltipAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapMarkerTooltipAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MapMarkerTooltipAnimation = {
	@:optional
	var close : MapMarkerTooltipAnimationClose;
	@:optional
	var open : MapMarkerTooltipAnimationOpen;
};
typedef MapMarkerTooltipContent = {
	@:optional
	var url : String;
};
typedef MapMarkerTooltip = {
	@:optional
	var autoHide : Bool;
	@:optional
	var animation : MapMarkerTooltipAnimation;
	@:optional
	var content : MapMarkerTooltipContent;
	@:optional
	var template : String;
	@:optional
	var callout : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var position : String;
	@:optional
	var showAfter : Float;
	@:optional
	var showOn : String;
};
typedef MapMarker = {
	@:optional
	var location : Dynamic;
	@:optional
	var shape : String;
	@:optional
	var title : String;
	@:optional
	var tooltip : MapMarkerTooltip;
};
typedef MapOptions = {
	@:optional
	var name : String;
	@:optional
	var center : Dynamic;
	@:optional
	var controls : MapControls;
	@:optional
	var layerDefaults : MapLayerDefaults;
	@:optional
	var layers : Array<MapLayer>;
	@:optional
	var markerDefaults : MapMarkerDefaults;
	@:optional
	var markers : Array<MapMarker>;
	@:optional
	var minZoom : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var minSize : Float;
	@:optional
	var pannable : Bool;
	@:optional
	var wraparound : Bool;
	@:optional
	var zoom : Float;
	@:optional
	var zoomable : Bool;
	@:optional
	function beforeReset(e:MapBeforeResetEvent):Void;
	@:optional
	function click(e:MapClickEvent):Void;
	@:optional
	function markerActivate(e:MapMarkerActivateEvent):Void;
	@:optional
	function markerCreated(e:MapMarkerCreatedEvent):Void;
	@:optional
	function markerClick(e:MapMarkerClickEvent):Void;
	@:optional
	function pan(e:MapPanEvent):Void;
	@:optional
	function panEnd(e:MapPanEndEvent):Void;
	@:optional
	function reset(e:MapResetEvent):Void;
	@:optional
	function shapeClick(e:MapShapeClickEvent):Void;
	@:optional
	function shapeCreated(e:MapShapeCreatedEvent):Void;
	@:optional
	function shapeMouseEnter(e:MapShapeMouseEnterEvent):Void;
	@:optional
	function shapeMouseLeave(e:MapShapeMouseLeaveEvent):Void;
	@:optional
	function zoomStart(e:MapZoomStartEvent):Void;
	@:optional
	function zoomEnd(e:MapZoomEndEvent):Void;
};
typedef MapEvent = {
	var sender : Map;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef MapBeforeResetEvent = {
	>MapEvent,
};
typedef MapClickEvent = {
	>MapEvent,
	@:optional
	var location : kendo.dataviz.map.Location;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapMarkerActivateEvent = {
	>MapEvent,
	@:optional
	var marker : kendo.dataviz.map.Marker;
	@:optional
	var layer : kendo.dataviz.map.Marker;
};
typedef MapMarkerCreatedEvent = {
	>MapEvent,
	@:optional
	var marker : kendo.dataviz.map.Marker;
	@:optional
	var layer : kendo.dataviz.map.Marker;
};
typedef MapMarkerClickEvent = {
	>MapEvent,
	@:optional
	var marker : kendo.dataviz.map.Marker;
	@:optional
	var layer : kendo.dataviz.map.Marker;
};
typedef MapPanEvent = {
	>MapEvent,
	@:optional
	var origin : kendo.dataviz.map.Location;
	@:optional
	var center : kendo.dataviz.map.Location;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapPanEndEvent = {
	>MapEvent,
	@:optional
	var origin : kendo.dataviz.map.Location;
	@:optional
	var center : kendo.dataviz.map.Location;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapResetEvent = {
	>MapEvent,
};
typedef MapShapeClickEvent = {
	>MapEvent,
	@:optional
	var layer : kendo.dataviz.map.layer.Shape;
	@:optional
	var shape : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapShapeCreatedEvent = {
	>MapEvent,
	@:optional
	var layer : kendo.dataviz.map.layer.Shape;
	@:optional
	var shape : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapShapeMouseEnterEvent = {
	>MapEvent,
	@:optional
	var layer : kendo.dataviz.map.layer.Shape;
	@:optional
	var shape : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapShapeMouseLeaveEvent = {
	>MapEvent,
	@:optional
	var layer : kendo.dataviz.map.layer.Shape;
	@:optional
	var shape : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef MapZoomStartEvent = {
	>MapEvent,
	@:optional
	var originalEvent : Dynamic;
};
typedef MapZoomEndEvent = {
	>MapEvent,
	@:optional
	var originalEvent : Dynamic;
};
extern class QRCode extends kendo.ui.Widget {
	static var fn : QRCode;
	static function extend(proto:Dynamic):QRCode;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:QRCodeOptions):Void;
	var options : QRCodeOptions;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function imageDataURL():String;
	function redraw():Void;
	function resize(?force:Bool):Void;
	function setOptions(options:Dynamic):Void;
	function svg():String;
	@:overload(function(options:Float):Void { })
	function value(options:String):Void;
}
typedef QRCodeBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef QRCodeExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef QRCodeExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef QRCodeOptions = {
	@:optional
	var name : String;
	@:optional
	var background : String;
	@:optional
	var border : QRCodeBorder;
	@:optional
	var color : String;
	@:optional
	var encoding : String;
	@:optional
	var errorCorrection : String;
	@:optional
	var padding : Float;
	@:optional
	var renderAs : String;
	@:optional
	var size : Dynamic;
	@:optional
	var value : Dynamic;
};
typedef QRCodeEvent = {
	var sender : QRCode;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class RadialGauge extends kendo.ui.Widget {
	static var fn : RadialGauge;
	static function extend(proto:Dynamic):RadialGauge;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:RadialGaugeOptions):Void;
	var options : RadialGaugeOptions;
	function allValues(values:Dynamic):Dynamic;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function redraw():Void;
	function resize(?force:Bool):Void;
	function svg():Void;
	function imageDataURL():String;
	function value():Void;
}
typedef RadialGaugeGaugeAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef RadialGaugeGaugeArea = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : RadialGaugeGaugeAreaBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : Dynamic;
	@:optional
	var width : Float;
};
typedef RadialGaugePointerItemCap = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
};
typedef RadialGaugePointerItem = {
	@:optional
	var cap : RadialGaugePointerItemCap;
	@:optional
	var color : String;
	@:optional
	var value : Float;
};
typedef RadialGaugeScaleLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef RadialGaugeScaleLabels = {
	@:optional
	var background : String;
	@:optional
	var border : RadialGaugeScaleLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef RadialGaugeScaleMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef RadialGaugeScaleMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef RadialGaugeScaleRange = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var opacity : Float;
	@:optional
	var color : String;
};
typedef RadialGaugeScale = {
	@:optional
	var endAngle : Float;
	@:optional
	var labels : RadialGaugeScaleLabels;
	@:optional
	var majorTicks : RadialGaugeScaleMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minorTicks : RadialGaugeScaleMinorTicks;
	@:optional
	var minorUnit : Float;
	@:optional
	var ranges : Array<RadialGaugeScaleRange>;
	@:optional
	var rangePlaceholderColor : String;
	@:optional
	var rangeSize : Float;
	@:optional
	var rangeDistance : Float;
	@:optional
	var reverse : Bool;
	@:optional
	var startAngle : Float;
};
typedef RadialGaugeExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef RadialGaugeExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef RadialGaugeOptions = {
	@:optional
	var name : String;
	@:optional
	var gaugeArea : RadialGaugeGaugeArea;
	@:optional
	var pointer : Array<RadialGaugePointerItem>;
	@:optional
	var renderAs : String;
	@:optional
	var scale : RadialGaugeScale;
	@:optional
	var transitions : Bool;
};
typedef RadialGaugeEvent = {
	var sender : RadialGauge;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Sparkline extends kendo.ui.Widget {
	static var fn : Sparkline;
	static function extend(proto:Dynamic):Sparkline;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SparklineOptions):Void;
	var options : SparklineOptions;
	var dataSource : kendo.data.DataSource;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function refresh():Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function setOptions(options:Dynamic):Void;
	function svg():String;
	function imageDataURL():String;
}
typedef SparklineCategoryAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineCategoryAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var opacity : Float;
	@:optional
	var dashType : Float;
	@:optional
	var visible : Bool;
	@:optional
	var tooltip : SparklineCategoryAxisItemCrosshairTooltip;
};
typedef SparklineCategoryAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : Dynamic;
};
typedef SparklineCategoryAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineCategoryAxisItemMajorTicks = {
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineCategoryAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineCategoryAxisItemMinorTicks = {
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineCategoryAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef SparklineCategoryAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef SparklineCategoryAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef SparklineCategoryAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : SparklineCategoryAxisItemNotesDataItemIcon;
	@:optional
	var label : SparklineCategoryAxisItemNotesDataItemLabel;
	@:optional
	var line : SparklineCategoryAxisItemNotesDataItemLine;
};
typedef SparklineCategoryAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef SparklineCategoryAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef SparklineCategoryAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef SparklineCategoryAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : SparklineCategoryAxisItemNotesIcon;
	@:optional
	var label : SparklineCategoryAxisItemNotesLabel;
	@:optional
	var line : SparklineCategoryAxisItemNotesLine;
	@:optional
	var data : Array<SparklineCategoryAxisItemNotesDataItem>;
};
typedef SparklineCategoryAxisItemPlotBand = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef SparklineCategoryAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineCategoryAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineCategoryAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef SparklineCategoryAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var categories : Dynamic;
	@:optional
	var color : String;
	@:optional
	var field : String;
	@:optional
	var justified : Bool;
	@:optional
	var labels : SparklineCategoryAxisItemLabels;
	@:optional
	var line : SparklineCategoryAxisItemLine;
	@:optional
	var majorGridLines : SparklineCategoryAxisItemMajorGridLines;
	@:optional
	var majorTicks : SparklineCategoryAxisItemMajorTicks;
	@:optional
	var minorGridLines : SparklineCategoryAxisItemMinorGridLines;
	@:optional
	var minorTicks : SparklineCategoryAxisItemMinorTicks;
	@:optional
	var name : String;
	@:optional
	var plotBands : Array<SparklineCategoryAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var title : SparklineCategoryAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var autoBaseUnitSteps : Dynamic;
	@:optional
	var baseUnit : String;
	@:optional
	var baseUnitStep : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var roundToBaseUnit : Bool;
	@:optional
	var weekStartDay : Float;
	@:optional
	var maxDateGroups : Float;
	@:optional
	var visible : Bool;
	@:optional
	var crosshair : SparklineCategoryAxisItemCrosshair;
	@:optional
	var notes : SparklineCategoryAxisItemNotes;
};
typedef SparklineChartAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineChartArea = {
	@:optional
	var background : String;
	@:optional
	var opacity : Float;
	@:optional
	var border : SparklineChartAreaBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : Dynamic;
	@:optional
	var width : Float;
};
typedef SparklinePlotAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklinePlotArea = {
	@:optional
	var background : String;
	@:optional
	var opacity : Float;
	@:optional
	var border : SparklinePlotAreaBorder;
	@:optional
	var margin : Dynamic;
};
typedef SparklineSeriesItemBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var opacity : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef SparklineSeriesItemConnectors = {
	@:optional
	var color : String;
	@:optional
	var padding : Float;
	@:optional
	var width : Float;
};
typedef SparklineSeriesItemHighlightBorder = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef SparklineSeriesItemHighlight = {
	@:optional
	var border : SparklineSeriesItemHighlightBorder;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var visible : Bool;
};
typedef SparklineSeriesItemLabelsBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef SparklineSeriesItemLabels = {
	@:optional
	var align : String;
	@:optional
	var background : Dynamic;
	@:optional
	var border : SparklineSeriesItemLabelsBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var distance : Float;
	@:optional
	var font : Dynamic;
	@:optional
	var format : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Dynamic;
};
typedef SparklineSeriesItemLine = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : String;
	@:optional
	var style : String;
};
typedef SparklineSeriesItemMarkersBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef SparklineSeriesItemMarkers = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : SparklineSeriesItemMarkersBorder;
	@:optional
	var size : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var visible : Dynamic;
	@:optional
	var rotation : Dynamic;
};
typedef SparklineSeriesItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineSeriesItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef SparklineSeriesItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineSeriesItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef SparklineSeriesItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef SparklineSeriesItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : SparklineSeriesItemNotesIcon;
	@:optional
	var label : SparklineSeriesItemNotesLabel;
	@:optional
	var line : SparklineSeriesItemNotesLine;
};
typedef SparklineSeriesItemOverlay = {
	@:optional
	var gradient : String;
};
typedef SparklineSeriesItemStack = {
	@:optional
	var type : String;
	@:optional
	var group : String;
};
typedef SparklineSeriesItemTargetBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Float;
};
typedef SparklineSeriesItemTargetLine = {
	@:optional
	var width : Dynamic;
};
typedef SparklineSeriesItemTarget = {
	@:optional
	var line : SparklineSeriesItemTargetLine;
	@:optional
	var color : Dynamic;
	@:optional
	var border : SparklineSeriesItemTargetBorder;
};
typedef SparklineSeriesItemTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesItemTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineSeriesItemTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineSeriesItem = {
	@:optional
	var type : String;
	@:optional
	var dashType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var explodeField : String;
	@:optional
	var currentField : String;
	@:optional
	var targetField : String;
	@:optional
	var field : String;
	@:optional
	var name : String;
	@:optional
	var highlight : SparklineSeriesItemHighlight;
	@:optional
	var aggregate : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var border : SparklineSeriesItemBorder;
	@:optional
	var categoryField : String;
	@:optional
	var color : Dynamic;
	@:optional
	var colorField : String;
	@:optional
	var connectors : SparklineSeriesItemConnectors;
	@:optional
	var gap : Float;
	@:optional
	var labels : SparklineSeriesItemLabels;
	@:optional
	var line : SparklineSeriesItemLine;
	@:optional
	var markers : SparklineSeriesItemMarkers;
	@:optional
	var missingValues : String;
	@:optional
	var style : String;
	@:optional
	var negativeColor : String;
	@:optional
	var opacity : Float;
	@:optional
	var overlay : SparklineSeriesItemOverlay;
	@:optional
	var padding : Float;
	@:optional
	var size : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var spacing : Float;
	@:optional
	var stack : SparklineSeriesItemStack;
	@:optional
	var tooltip : SparklineSeriesItemTooltip;
	@:optional
	var width : Float;
	@:optional
	var target : SparklineSeriesItemTarget;
	@:optional
	var notes : SparklineSeriesItemNotes;
	@:optional
	var zIndex : Float;
};
typedef SparklineSeriesDefaultsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesDefaultsLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesDefaultsLabels = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineSeriesDefaultsLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineSeriesDefaultsStack = {
	@:optional
	var type : String;
};
typedef SparklineSeriesDefaultsTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineSeriesDefaultsTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineSeriesDefaultsTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineSeriesDefaults = {
	@:optional
	var area : Dynamic;
	@:optional
	var bar : Dynamic;
	@:optional
	var border : SparklineSeriesDefaultsBorder;
	@:optional
	var column : Dynamic;
	@:optional
	var gap : Float;
	@:optional
	var labels : SparklineSeriesDefaultsLabels;
	@:optional
	var line : Dynamic;
	@:optional
	var overlay : Dynamic;
	@:optional
	var pie : Dynamic;
	@:optional
	var spacing : Float;
	@:optional
	var stack : SparklineSeriesDefaultsStack;
	@:optional
	var type : String;
	@:optional
	var tooltip : SparklineSeriesDefaultsTooltip;
};
typedef SparklineTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var sharedTemplate : String;
};
typedef SparklineValueAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineValueAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var opacity : Float;
	@:optional
	var dashType : Float;
	@:optional
	var visible : Bool;
	@:optional
	var tooltip : SparklineValueAxisItemCrosshairTooltip;
};
typedef SparklineValueAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef SparklineValueAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineValueAxisItemMajorTicks = {
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineValueAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineValueAxisItemMinorTicks = {
	@:optional
	var size : Float;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var visible : Bool;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef SparklineValueAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef SparklineValueAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef SparklineValueAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef SparklineValueAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : SparklineValueAxisItemNotesDataItemIcon;
	@:optional
	var label : SparklineValueAxisItemNotesDataItemLabel;
	@:optional
	var line : SparklineValueAxisItemNotesDataItemLine;
};
typedef SparklineValueAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef SparklineValueAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef SparklineValueAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef SparklineValueAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : SparklineValueAxisItemNotesIcon;
	@:optional
	var label : SparklineValueAxisItemNotesLabel;
	@:optional
	var line : SparklineValueAxisItemNotesLine;
	@:optional
	var data : Array<SparklineValueAxisItemNotesDataItem>;
};
typedef SparklineValueAxisItemPlotBand = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef SparklineValueAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef SparklineValueAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : SparklineValueAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef SparklineValueAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var color : String;
	@:optional
	var labels : SparklineValueAxisItemLabels;
	@:optional
	var line : SparklineValueAxisItemLine;
	@:optional
	var majorGridLines : SparklineValueAxisItemMajorGridLines;
	@:optional
	var majorTicks : SparklineValueAxisItemMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minorGridLines : SparklineValueAxisItemMinorGridLines;
	@:optional
	var minorTicks : SparklineValueAxisItemMinorTicks;
	@:optional
	var minorUnit : Float;
	@:optional
	var name : Dynamic;
	@:optional
	var narrowRange : Bool;
	@:optional
	var plotBands : Array<SparklineValueAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var title : SparklineValueAxisItemTitle;
	@:optional
	var visible : Bool;
	@:optional
	var crosshair : SparklineValueAxisItemCrosshair;
	@:optional
	var notes : SparklineValueAxisItemNotes;
};
typedef SparklineExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef SparklineExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef SparklineSeriesClickEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef SparklineSeriesHoverEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef SparklineOptions = {
	@:optional
	var name : String;
	@:optional
	var axisDefaults : Dynamic;
	@:optional
	var categoryAxis : Array<SparklineCategoryAxisItem>;
	@:optional
	var chartArea : SparklineChartArea;
	@:optional
	var data : Dynamic;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var plotArea : SparklinePlotArea;
	@:optional
	var pointWidth : Float;
	@:optional
	var renderAs : String;
	@:optional
	var series : Array<SparklineSeriesItem>;
	@:optional
	var seriesColors : Dynamic;
	@:optional
	var seriesDefaults : SparklineSeriesDefaults;
	@:optional
	var theme : String;
	@:optional
	var tooltip : SparklineTooltip;
	@:optional
	var transitions : Bool;
	@:optional
	var type : String;
	@:optional
	var valueAxis : Array<SparklineValueAxisItem>;
	@:optional
	function axisLabelClick(e:SparklineAxisLabelClickEvent):Void;
	@:optional
	function dataBound(e:SparklineEvent):Void;
	@:optional
	function dragStart(e:SparklineDragStartEvent):Void;
	@:optional
	function drag(e:SparklineDragEvent):Void;
	@:optional
	function dragEnd(e:SparklineDragEndEvent):Void;
	@:optional
	function plotAreaClick(e:SparklinePlotAreaClickEvent):Void;
	@:optional
	function seriesClick(e:SparklineSeriesClickEvent):Void;
	@:optional
	function seriesHover(e:SparklineSeriesHoverEvent):Void;
	@:optional
	function zoomStart(e:SparklineZoomStartEvent):Void;
	@:optional
	function zoom(e:SparklineZoomEvent):Void;
	@:optional
	function zoomEnd(e:SparklineZoomEndEvent):Void;
};
typedef SparklineEvent = {
	var sender : Sparkline;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SparklineAxisLabelClickEvent = {
	>SparklineEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var text : Dynamic;
	@:optional
	var index : Dynamic;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
};
typedef SparklineDragStartEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef SparklineDragEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef SparklineDragEndEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef SparklinePlotAreaClickEvent = {
	>SparklineEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var x : Dynamic;
	@:optional
	var y : Dynamic;
};
typedef SparklineSeriesClickEvent = {
	>SparklineEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var series : SparklineSeriesClickEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef SparklineSeriesHoverEvent = {
	>SparklineEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var series : SparklineSeriesHoverEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef SparklineZoomStartEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef SparklineZoomEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var delta : Float;
	@:optional
	var originalEvent : Dynamic;
};
typedef SparklineZoomEndEvent = {
	>SparklineEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
extern class StockChart extends kendo.ui.Widget {
	static var fn : StockChart;
	static function extend(proto:Dynamic):StockChart;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:StockChartOptions):Void;
	var options : StockChartOptions;
	var dataSource : kendo.data.DataSource;
	function destroy():Void;
	function exportImage(options:Dynamic):JQueryPromise<Dynamic>;
	function exportPDF(?options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	function exportSVG(options:Dynamic):JQueryPromise<Dynamic>;
	function redraw():Void;
	function refresh():Void;
	function resize(?force:Bool):Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function svg():String;
	function imageDataURL():String;
}
typedef StockChartCategoryAxisItemAutoBaseUnitSteps = {
	@:optional
	var days : Dynamic;
	@:optional
	var hours : Dynamic;
	@:optional
	var minutes : Dynamic;
	@:optional
	var months : Dynamic;
	@:optional
	var weeks : Dynamic;
	@:optional
	var years : Dynamic;
};
typedef StockChartCategoryAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartCategoryAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var opacity : Float;
	@:optional
	var dashType : Float;
	@:optional
	var visible : Bool;
	@:optional
	var tooltip : StockChartCategoryAxisItemCrosshairTooltip;
};
typedef StockChartCategoryAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : Dynamic;
};
typedef StockChartCategoryAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartCategoryAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var width : Float;
	@:optional
	var visible : Bool;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartCategoryAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartCategoryAxisItemMinorTicks = {
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartCategoryAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartCategoryAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef StockChartCategoryAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartCategoryAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : StockChartCategoryAxisItemNotesDataItemIcon;
	@:optional
	var label : StockChartCategoryAxisItemNotesDataItemLabel;
	@:optional
	var line : StockChartCategoryAxisItemNotesDataItemLine;
};
typedef StockChartCategoryAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartCategoryAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef StockChartCategoryAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartCategoryAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : StockChartCategoryAxisItemNotesIcon;
	@:optional
	var label : StockChartCategoryAxisItemNotesLabel;
	@:optional
	var line : StockChartCategoryAxisItemNotesLine;
	@:optional
	var data : Array<StockChartCategoryAxisItemNotesDataItem>;
};
typedef StockChartCategoryAxisItemPlotBand = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartCategoryAxisItemSelectMousewheel = {
	@:optional
	var reverse : Bool;
	@:optional
	var zoom : String;
};
typedef StockChartCategoryAxisItemSelect = {
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var mousewheel : StockChartCategoryAxisItemSelectMousewheel;
};
typedef StockChartCategoryAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartCategoryAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartCategoryAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartCategoryAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var categories : Dynamic;
	@:optional
	var color : String;
	@:optional
	var field : String;
	@:optional
	var justified : Bool;
	@:optional
	var labels : StockChartCategoryAxisItemLabels;
	@:optional
	var line : StockChartCategoryAxisItemLine;
	@:optional
	var majorGridLines : StockChartCategoryAxisItemMajorGridLines;
	@:optional
	var majorTicks : StockChartCategoryAxisItemMajorTicks;
	@:optional
	var minorGridLines : StockChartCategoryAxisItemMinorGridLines;
	@:optional
	var minorTicks : StockChartCategoryAxisItemMinorTicks;
	@:optional
	var name : String;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<StockChartCategoryAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var select : StockChartCategoryAxisItemSelect;
	@:optional
	var title : StockChartCategoryAxisItemTitle;
	@:optional
	var type : String;
	@:optional
	var autoBaseUnitSteps : StockChartCategoryAxisItemAutoBaseUnitSteps;
	@:optional
	var background : String;
	@:optional
	var baseUnit : String;
	@:optional
	var baseUnitStep : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var roundToBaseUnit : Bool;
	@:optional
	var weekStartDay : Float;
	@:optional
	var maxDateGroups : Float;
	@:optional
	var visible : Bool;
	@:optional
	var crosshair : StockChartCategoryAxisItemCrosshair;
	@:optional
	var notes : StockChartCategoryAxisItemNotes;
};
typedef StockChartChartAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartChartArea = {
	@:optional
	var background : String;
	@:optional
	var opacity : Float;
	@:optional
	var border : StockChartChartAreaBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : Dynamic;
	@:optional
	var width : Float;
};
typedef StockChartLegendBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartLegendInactiveItemsLabels = {
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : String;
};
typedef StockChartLegendInactiveItemsMarkers = {
	@:optional
	var color : String;
};
typedef StockChartLegendInactiveItems = {
	@:optional
	var labels : StockChartLegendInactiveItemsLabels;
	@:optional
	var markers : StockChartLegendInactiveItemsMarkers;
};
typedef StockChartLegendLabels = {
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : String;
};
typedef StockChartLegend = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartLegendBorder;
	@:optional
	var labels : StockChartLegendLabels;
	@:optional
	var margin : Dynamic;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var reverse : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var inactiveItems : StockChartLegendInactiveItems;
};
typedef StockChartNavigatorCategoryAxisItemAutoBaseUnitSteps = {
	@:optional
	var seconds : Dynamic;
	@:optional
	var minutes : Dynamic;
	@:optional
	var hours : Dynamic;
	@:optional
	var days : Dynamic;
	@:optional
	var weeks : Dynamic;
	@:optional
	var months : Dynamic;
	@:optional
	var years : Dynamic;
};
typedef StockChartNavigatorCategoryAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemCrosshairTooltipPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorCategoryAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : StockChartNavigatorCategoryAxisItemCrosshairTooltipPadding;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorCategoryAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var tooltip : StockChartNavigatorCategoryAxisItemCrosshairTooltip;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemLabelsDateFormats = {
	@:optional
	var days : String;
	@:optional
	var hours : String;
	@:optional
	var months : String;
	@:optional
	var weeks : String;
	@:optional
	var years : String;
};
typedef StockChartNavigatorCategoryAxisItemLabelsMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorCategoryAxisItemLabelsPadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorCategoryAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var culture : String;
	@:optional
	var dateFormats : StockChartNavigatorCategoryAxisItemLabelsDateFormats;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : StockChartNavigatorCategoryAxisItemLabelsMargin;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : StockChartNavigatorCategoryAxisItemLabelsPadding;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorCategoryAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartNavigatorCategoryAxisItemMajorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartNavigatorCategoryAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartNavigatorCategoryAxisItemMinorTicks = {
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : StockChartNavigatorCategoryAxisItemNotesDataItemIcon;
	@:optional
	var label : StockChartNavigatorCategoryAxisItemNotesDataItemLabel;
	@:optional
	var line : StockChartNavigatorCategoryAxisItemNotesDataItemLine;
};
typedef StockChartNavigatorCategoryAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorCategoryAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef StockChartNavigatorCategoryAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartNavigatorCategoryAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : StockChartNavigatorCategoryAxisItemNotesIcon;
	@:optional
	var label : StockChartNavigatorCategoryAxisItemNotesLabel;
	@:optional
	var line : StockChartNavigatorCategoryAxisItemNotesLine;
	@:optional
	var data : Array<StockChartNavigatorCategoryAxisItemNotesDataItem>;
};
typedef StockChartNavigatorCategoryAxisItemPlotBand = {
	@:optional
	var color : String;
	@:optional
	var from : Float;
	@:optional
	var opacity : Float;
	@:optional
	var to : Float;
};
typedef StockChartNavigatorCategoryAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorCategoryAxisItemTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorCategoryAxisItemTitlePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorCategoryAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorCategoryAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : StockChartNavigatorCategoryAxisItemTitleMargin;
	@:optional
	var padding : StockChartNavigatorCategoryAxisItemTitlePadding;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorCategoryAxisItem = {
	@:optional
	var autoBaseUnitSteps : StockChartNavigatorCategoryAxisItemAutoBaseUnitSteps;
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var baseUnit : String;
	@:optional
	var baseUnitStep : Dynamic;
	@:optional
	var categories : Dynamic;
	@:optional
	var color : String;
	@:optional
	var crosshair : StockChartNavigatorCategoryAxisItemCrosshair;
	@:optional
	var field : String;
	@:optional
	var justified : Bool;
	@:optional
	var labels : StockChartNavigatorCategoryAxisItemLabels;
	@:optional
	var line : StockChartNavigatorCategoryAxisItemLine;
	@:optional
	var majorGridLines : StockChartNavigatorCategoryAxisItemMajorGridLines;
	@:optional
	var majorTicks : StockChartNavigatorCategoryAxisItemMajorTicks;
	@:optional
	var max : Dynamic;
	@:optional
	var maxDateGroups : Float;
	@:optional
	var min : Dynamic;
	@:optional
	var minorGridLines : StockChartNavigatorCategoryAxisItemMinorGridLines;
	@:optional
	var minorTicks : StockChartNavigatorCategoryAxisItemMinorTicks;
	@:optional
	var plotBands : Array<StockChartNavigatorCategoryAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var roundToBaseUnit : Bool;
	@:optional
	var title : StockChartNavigatorCategoryAxisItemTitle;
	@:optional
	var visible : Bool;
	@:optional
	var weekStartDay : Float;
	@:optional
	var notes : StockChartNavigatorCategoryAxisItemNotes;
};
typedef StockChartNavigatorHint = {
	@:optional
	var visible : Bool;
	@:optional
	var template : Dynamic;
	@:optional
	var format : String;
};
typedef StockChartNavigatorPaneBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorPaneMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorPanePadding = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorPaneTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorPaneTitleMargin = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef StockChartNavigatorPaneTitle = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorPaneTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : StockChartNavigatorPaneTitleMargin;
	@:optional
	var position : String;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorPane = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorPaneBorder;
	@:optional
	var height : Float;
	@:optional
	var margin : StockChartNavigatorPaneMargin;
	@:optional
	var name : String;
	@:optional
	var padding : StockChartNavigatorPanePadding;
	@:optional
	var title : StockChartNavigatorPaneTitle;
};
typedef StockChartNavigatorSelect = {
	@:optional
	var from : Date;
	@:optional
	var to : Date;
};
typedef StockChartNavigatorSeriesItemBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorSeriesItemHighlightBorder = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartNavigatorSeriesItemHighlightLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartNavigatorSeriesItemHighlight = {
	@:optional
	var border : StockChartNavigatorSeriesItemHighlightBorder;
	@:optional
	var color : String;
	@:optional
	var line : StockChartNavigatorSeriesItemHighlightLine;
	@:optional
	var opacity : Float;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorSeriesItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorSeriesItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorSeriesItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorSeriesItemLine = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : String;
};
typedef StockChartNavigatorSeriesItemMarkersBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorSeriesItemMarkers = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorSeriesItemMarkersBorder;
	@:optional
	var rotation : Dynamic;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorSeriesItemOverlay = {
	@:optional
	var gradient : String;
};
typedef StockChartNavigatorSeriesItemStack = {
	@:optional
	var type : String;
	@:optional
	var group : String;
};
typedef StockChartNavigatorSeriesItemTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartNavigatorSeriesItemTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartNavigatorSeriesItemTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartNavigatorSeriesItem = {
	@:optional
	var type : String;
	@:optional
	var dashType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var highField : String;
	@:optional
	var field : String;
	@:optional
	var categoryField : String;
	@:optional
	var name : String;
	@:optional
	var highlight : StockChartNavigatorSeriesItemHighlight;
	@:optional
	var aggregate : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var border : StockChartNavigatorSeriesItemBorder;
	@:optional
	var closeField : String;
	@:optional
	var color : String;
	@:optional
	var colorField : String;
	@:optional
	var downColor : String;
	@:optional
	var downColorField : String;
	@:optional
	var gap : Float;
	@:optional
	var labels : StockChartNavigatorSeriesItemLabels;
	@:optional
	var line : StockChartNavigatorSeriesItemLine;
	@:optional
	var lowField : String;
	@:optional
	var markers : StockChartNavigatorSeriesItemMarkers;
	@:optional
	var missingValues : String;
	@:optional
	var style : String;
	@:optional
	var opacity : Float;
	@:optional
	var openField : String;
	@:optional
	var overlay : StockChartNavigatorSeriesItemOverlay;
	@:optional
	var spacing : Float;
	@:optional
	var stack : StockChartNavigatorSeriesItemStack;
	@:optional
	var tooltip : StockChartNavigatorSeriesItemTooltip;
	@:optional
	var width : Float;
};
typedef StockChartNavigator = {
	@:optional
	var categoryAxis : Array<StockChartNavigatorCategoryAxisItem>;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var dateField : String;
	@:optional
	var pane : StockChartNavigatorPane;
	@:optional
	var visible : Bool;
	@:optional
	var series : Array<StockChartNavigatorSeriesItem>;
	@:optional
	var select : StockChartNavigatorSelect;
	@:optional
	var hint : StockChartNavigatorHint;
};
typedef StockChartPaneBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartPaneTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartPaneTitle = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartPaneTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var position : String;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartPane = {
	@:optional
	var name : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var background : String;
	@:optional
	var border : StockChartPaneBorder;
	@:optional
	var clip : Bool;
	@:optional
	var height : Float;
	@:optional
	var title : StockChartPaneTitle;
};
typedef StockChartPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef StockChartPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var forceProxy : Bool;
	@:optional
	var fileName : String;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : StockChartPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef StockChartPlotAreaBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartPlotArea = {
	@:optional
	var background : String;
	@:optional
	var opacity : Float;
	@:optional
	var border : StockChartPlotAreaBorder;
	@:optional
	var margin : Dynamic;
};
typedef StockChartSeriesItemBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var opacity : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef StockChartSeriesItemHighlightBorder = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartSeriesItemHighlightLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartSeriesItemHighlight = {
	@:optional
	var visible : Bool;
	@:optional
	var border : StockChartSeriesItemHighlightBorder;
	@:optional
	var color : String;
	@:optional
	var line : StockChartSeriesItemHighlightLine;
	@:optional
	var opacity : Float;
};
typedef StockChartSeriesItemLabelsBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef StockChartSeriesItemLabels = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : StockChartSeriesItemLabelsBorder;
	@:optional
	var color : Dynamic;
	@:optional
	var font : Dynamic;
	@:optional
	var format : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Dynamic;
};
typedef StockChartSeriesItemLine = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
	@:optional
	var width : String;
	@:optional
	var style : String;
};
typedef StockChartSeriesItemMarkersBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef StockChartSeriesItemMarkers = {
	@:optional
	var background : Dynamic;
	@:optional
	var border : StockChartSeriesItemMarkersBorder;
	@:optional
	var size : Dynamic;
	@:optional
	var rotation : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var visible : Dynamic;
};
typedef StockChartSeriesItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartSeriesItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartSeriesItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartSeriesItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef StockChartSeriesItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartSeriesItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : StockChartSeriesItemNotesIcon;
	@:optional
	var label : StockChartSeriesItemNotesLabel;
	@:optional
	var line : StockChartSeriesItemNotesLine;
};
typedef StockChartSeriesItemOverlay = {
	@:optional
	var gradient : String;
};
typedef StockChartSeriesItemStack = {
	@:optional
	var type : String;
	@:optional
	var group : String;
};
typedef StockChartSeriesItemTargetBorder = {
	@:optional
	var color : Dynamic;
	@:optional
	var dashType : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef StockChartSeriesItemTargetLine = {
	@:optional
	var width : Dynamic;
};
typedef StockChartSeriesItemTarget = {
	@:optional
	var line : StockChartSeriesItemTargetLine;
	@:optional
	var color : Dynamic;
	@:optional
	var border : StockChartSeriesItemTargetBorder;
};
typedef StockChartSeriesItemTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesItemTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartSeriesItemTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartSeriesItem = {
	@:optional
	var type : String;
	@:optional
	var dashType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var highField : String;
	@:optional
	var field : String;
	@:optional
	var categoryField : String;
	@:optional
	var currentField : String;
	@:optional
	var targetField : String;
	@:optional
	var name : String;
	@:optional
	var highlight : StockChartSeriesItemHighlight;
	@:optional
	var aggregate : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var border : StockChartSeriesItemBorder;
	@:optional
	var closeField : String;
	@:optional
	var color : Dynamic;
	@:optional
	var colorField : String;
	@:optional
	var downColor : Dynamic;
	@:optional
	var downColorField : String;
	@:optional
	var gap : Float;
	@:optional
	var labels : StockChartSeriesItemLabels;
	@:optional
	var line : StockChartSeriesItemLine;
	@:optional
	var lowField : String;
	@:optional
	var markers : StockChartSeriesItemMarkers;
	@:optional
	var missingValues : String;
	@:optional
	var style : String;
	@:optional
	var negativeColor : String;
	@:optional
	var opacity : Float;
	@:optional
	var openField : String;
	@:optional
	var overlay : StockChartSeriesItemOverlay;
	@:optional
	var spacing : Float;
	@:optional
	var stack : StockChartSeriesItemStack;
	@:optional
	var tooltip : StockChartSeriesItemTooltip;
	@:optional
	var visibleInLegend : Bool;
	@:optional
	var width : Float;
	@:optional
	var target : StockChartSeriesItemTarget;
	@:optional
	var notes : StockChartSeriesItemNotes;
	@:optional
	var zIndex : Float;
};
typedef StockChartSeriesDefaultsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesDefaultsLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesDefaultsLabels = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartSeriesDefaultsLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartSeriesDefaultsStack = {
	@:optional
	var type : String;
};
typedef StockChartSeriesDefaultsTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartSeriesDefaultsTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartSeriesDefaultsTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartSeriesDefaults = {
	@:optional
	var area : Dynamic;
	@:optional
	var candlestick : Dynamic;
	@:optional
	var ohlc : Dynamic;
	@:optional
	var border : StockChartSeriesDefaultsBorder;
	@:optional
	var column : Dynamic;
	@:optional
	var gap : Float;
	@:optional
	var labels : StockChartSeriesDefaultsLabels;
	@:optional
	var line : Dynamic;
	@:optional
	var overlay : Dynamic;
	@:optional
	var pie : Dynamic;
	@:optional
	var spacing : Float;
	@:optional
	var stack : StockChartSeriesDefaultsStack;
	@:optional
	var type : String;
	@:optional
	var tooltip : StockChartSeriesDefaultsTooltip;
};
typedef StockChartTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartTitle = {
	@:optional
	var align : String;
	@:optional
	var background : String;
	@:optional
	var border : StockChartTitleBorder;
	@:optional
	var font : String;
	@:optional
	var color : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var sharedTemplate : String;
};
typedef StockChartValueAxisItemCrosshairTooltipBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemCrosshairTooltip = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemCrosshairTooltipBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartValueAxisItemCrosshair = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var opacity : Float;
	@:optional
	var dashType : Float;
	@:optional
	var visible : Bool;
	@:optional
	var tooltip : StockChartValueAxisItemCrosshairTooltip;
};
typedef StockChartValueAxisItemLabelsBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemLabels = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemLabelsBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var format : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var mirror : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var rotation : Float;
	@:optional
	var skip : Float;
	@:optional
	var step : Float;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef StockChartValueAxisItemLine = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemMajorGridLines = {
	@:optional
	var color : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartValueAxisItemMajorTicks = {
	@:optional
	var size : Float;
	@:optional
	var visible : Bool;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartValueAxisItemMinorGridLines = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartValueAxisItemMinorTicks = {
	@:optional
	var size : Float;
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var visible : Bool;
	@:optional
	var step : Float;
	@:optional
	var skip : Float;
};
typedef StockChartValueAxisItemNotesDataItemIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemNotesDataItemIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemNotesDataItemIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartValueAxisItemNotesDataItemLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemNotesDataItemLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemNotesDataItemLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var text : String;
	@:optional
	var position : String;
};
typedef StockChartValueAxisItemNotesDataItemLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartValueAxisItemNotesDataItem = {
	@:optional
	var value : Dynamic;
	@:optional
	var position : String;
	@:optional
	var icon : StockChartValueAxisItemNotesDataItemIcon;
	@:optional
	var label : StockChartValueAxisItemNotesDataItemLabel;
	@:optional
	var line : StockChartValueAxisItemNotesDataItemLine;
};
typedef StockChartValueAxisItemNotesIconBorder = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemNotesIcon = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemNotesIconBorder;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
typedef StockChartValueAxisItemNotesLabelBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemNotesLabel = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemNotesLabelBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var format : String;
	@:optional
	var position : String;
};
typedef StockChartValueAxisItemNotesLine = {
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
};
typedef StockChartValueAxisItemNotes = {
	@:optional
	var position : String;
	@:optional
	var icon : StockChartValueAxisItemNotesIcon;
	@:optional
	var label : StockChartValueAxisItemNotesLabel;
	@:optional
	var line : StockChartValueAxisItemNotesLine;
	@:optional
	var data : Array<StockChartValueAxisItemNotesDataItem>;
};
typedef StockChartValueAxisItemPlotBand = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef StockChartValueAxisItemTitleBorder = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef StockChartValueAxisItemTitle = {
	@:optional
	var background : String;
	@:optional
	var border : StockChartValueAxisItemTitleBorder;
	@:optional
	var color : String;
	@:optional
	var font : String;
	@:optional
	var margin : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var rotation : Float;
	@:optional
	var text : String;
	@:optional
	var visible : Bool;
};
typedef StockChartValueAxisItem = {
	@:optional
	var axisCrossingValue : Dynamic;
	@:optional
	var background : String;
	@:optional
	var color : String;
	@:optional
	var labels : StockChartValueAxisItemLabels;
	@:optional
	var line : StockChartValueAxisItemLine;
	@:optional
	var majorGridLines : StockChartValueAxisItemMajorGridLines;
	@:optional
	var majorTicks : StockChartValueAxisItemMajorTicks;
	@:optional
	var majorUnit : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minorGridLines : StockChartValueAxisItemMinorGridLines;
	@:optional
	var minorTicks : StockChartValueAxisItemMinorTicks;
	@:optional
	var minorUnit : Float;
	@:optional
	var name : Dynamic;
	@:optional
	var narrowRange : Bool;
	@:optional
	var pane : String;
	@:optional
	var plotBands : Array<StockChartValueAxisItemPlotBand>;
	@:optional
	var reverse : Bool;
	@:optional
	var title : StockChartValueAxisItemTitle;
	@:optional
	var visible : Bool;
	@:optional
	var crosshair : StockChartValueAxisItemCrosshair;
	@:optional
	var notes : StockChartValueAxisItemNotes;
};
typedef StockChartExportImageOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef StockChartExportSVGOptions = {
	@:optional
	var raw : Bool;
};
typedef StockChartSeriesClickEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef StockChartSeriesHoverEventSeries = {
	@:optional
	var type : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef StockChartOptions = {
	@:optional
	var name : String;
	@:optional
	var dateField : String;
	@:optional
	var navigator : StockChartNavigator;
	@:optional
	var axisDefaults : Dynamic;
	@:optional
	var categoryAxis : Array<StockChartCategoryAxisItem>;
	@:optional
	var chartArea : StockChartChartArea;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var legend : StockChartLegend;
	@:optional
	var panes : Array<StockChartPane>;
	@:optional
	var pdf : StockChartPdf;
	@:optional
	var plotArea : StockChartPlotArea;
	@:optional
	var renderAs : String;
	@:optional
	var series : Array<StockChartSeriesItem>;
	@:optional
	var seriesColors : Dynamic;
	@:optional
	var seriesDefaults : StockChartSeriesDefaults;
	@:optional
	var theme : String;
	@:optional
	var title : StockChartTitle;
	@:optional
	var tooltip : StockChartTooltip;
	@:optional
	var transitions : Bool;
	@:optional
	var valueAxis : Array<StockChartValueAxisItem>;
	@:optional
	function axisLabelClick(e:StockChartAxisLabelClickEvent):Void;
	@:optional
	function legendItemClick(e:StockChartLegendItemClickEvent):Void;
	@:optional
	function legendItemHover(e:StockChartLegendItemHoverEvent):Void;
	@:optional
	function dataBound(e:StockChartEvent):Void;
	@:optional
	function dragStart(e:StockChartDragStartEvent):Void;
	@:optional
	function drag(e:StockChartDragEvent):Void;
	@:optional
	function dragEnd(e:StockChartDragEndEvent):Void;
	@:optional
	function noteClick(e:StockChartNoteClickEvent):Void;
	@:optional
	function noteHover(e:StockChartNoteHoverEvent):Void;
	@:optional
	function plotAreaClick(e:StockChartPlotAreaClickEvent):Void;
	@:optional
	function render(e:StockChartEvent):Void;
	@:optional
	function seriesClick(e:StockChartSeriesClickEvent):Void;
	@:optional
	function seriesHover(e:StockChartSeriesHoverEvent):Void;
	@:optional
	function zoomStart(e:StockChartZoomStartEvent):Void;
	@:optional
	function zoom(e:StockChartZoomEvent):Void;
	@:optional
	function zoomEnd(e:StockChartZoomEndEvent):Void;
	@:optional
	function selectStart(e:StockChartSelectStartEvent):Void;
	@:optional
	function select(e:StockChartSelectEvent):Void;
	@:optional
	function selectEnd(e:StockChartSelectEndEvent):Void;
};
typedef StockChartEvent = {
	var sender : StockChart;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef StockChartAxisLabelClickEvent = {
	>StockChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var text : Dynamic;
	@:optional
	var index : Dynamic;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
};
typedef StockChartLegendItemClickEvent = {
	>StockChartEvent,
	@:optional
	var text : String;
	@:optional
	var series : Dynamic;
	@:optional
	var seriesIndex : Float;
	@:optional
	var pointIndex : Float;
	@:optional
	var element : Dynamic;
};
typedef StockChartLegendItemHoverEvent = {
	>StockChartEvent,
	@:optional
	var text : String;
	@:optional
	var series : Dynamic;
	@:optional
	var seriesIndex : Float;
	@:optional
	var pointIndex : Float;
	@:optional
	var element : Dynamic;
};
typedef StockChartDragStartEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartDragEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartDragEndEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartNoteClickEvent = {
	>StockChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var series : Dynamic;
	@:optional
	var dataItem : Dynamic;
};
typedef StockChartNoteHoverEvent = {
	>StockChartEvent,
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var series : Dynamic;
	@:optional
	var dataItem : Dynamic;
};
typedef StockChartPlotAreaClickEvent = {
	>StockChartEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var x : Dynamic;
	@:optional
	var y : Dynamic;
};
typedef StockChartSeriesClickEvent = {
	>StockChartEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var series : StockChartSeriesClickEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef StockChartSeriesHoverEvent = {
	>StockChartEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var category : Dynamic;
	@:optional
	var series : StockChartSeriesHoverEventSeries;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var element : Dynamic;
	@:optional
	var percentage : Dynamic;
};
typedef StockChartZoomStartEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartZoomEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var delta : Float;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartZoomEndEvent = {
	>StockChartEvent,
	@:optional
	var axisRanges : Dynamic;
	@:optional
	var originalEvent : Dynamic;
};
typedef StockChartSelectStartEvent = {
	>StockChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef StockChartSelectEvent = {
	>StockChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef StockChartSelectEndEvent = {
	>StockChartEvent,
	@:optional
	var axis : Dynamic;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
extern class TreeMap extends kendo.ui.Widget {
	static var fn : TreeMap;
	static function extend(proto:Dynamic):TreeMap;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TreeMapOptions):Void;
	var options : TreeMapOptions;
	var dataSource : kendo.data.DataSource;
}
typedef TreeMapOptions = {
	@:optional
	var name : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var type : String;
	@:optional
	var theme : String;
	@:optional
	var valueField : String;
	@:optional
	var colorField : String;
	@:optional
	var textField : String;
	@:optional
	var template : Dynamic;
	@:optional
	var colors : Dynamic;
	@:optional
	function itemCreated(e:TreeMapItemCreatedEvent):Void;
	@:optional
	function dataBound(e:TreeMapDataBoundEvent):Void;
};
typedef TreeMapEvent = {
	var sender : TreeMap;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TreeMapItemCreatedEvent = {
	>TreeMapEvent,
	@:optional
	var element : Dynamic;
};
typedef TreeMapDataBoundEvent = {
	>TreeMapEvent,
};
extern class Kendo.dataviz.uiTopLevel {
	static function registerTheme(name:String, options:Dynamic):Void;
	static function plugin(widget:Dynamic):Void;
	static function plugin(widget:Dynamic):Void;
}
