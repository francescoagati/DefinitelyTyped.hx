typedef SparklineTooltip = {
	>viz.core.Tooltip,
	@:optional
	var horizontalAlignment : String;
	@:optional
	var verticalAlignment : String;
};
typedef BaseSparklineOptions = {
	>viz.core.BaseWidgetOptions,
	@:optional
	var margin : viz.core.Margins;
	@:optional
	var size : viz.core.Size;
	@:optional
	var theme : String;
	@:optional
	var tooltip : SparklineTooltip;
};
extern class BaseSparkline extends viz.core.BaseWidget {
	function render():Void;
}
typedef DxBulletOptions = {
	>BaseSparkline,
	@:optional
	var color : String;
	@:optional
	var endScaleValue : Float;
	@:optional
	var showTarget : Bool;
	@:optional
	var showZeroLevel : Bool;
	@:optional
	var startScaleValue : Float;
	@:optional
	var target : Float;
	@:optional
	var targetColor : String;
	@:optional
	var targetWidth : Float;
	@:optional
	var value : Float;
};
extern class DxBullet extends BaseSparkline {
	@:overload(function(element:Element, ?options:DxBulletOptions):Void { })
	function new(element:JQuery, ?options:DxBulletOptions):Void;
}
typedef DxSparklineOptions = {
	>BaseSparklineOptions,
	@:optional
	var argumentField : String;
	@:optional
	var barNegativeColor : String;
	@:optional
	var barPositiveColor : String;
	@:optional
	var dataSource : Array<Dynamic>;
	@:optional
	var firstLastColor : String;
	@:optional
	var ignoreEmptyPoints : Bool;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var lossColor : String;
	@:optional
	var maxColor : String;
	@:optional
	var minColor : String;
	@:optional
	var pointColor : String;
	@:optional
	var pointSize : Float;
	@:optional
	var pointSymbol : String;
	@:optional
	var showFirstLast : Bool;
	@:optional
	var showMinMax : Bool;
	@:optional
	var type : String;
	@:optional
	var valueField : String;
	@:optional
	var winColor : String;
	@:optional
	var winlossThreshold : Float;
};
extern class DxSparkline extends BaseSparkline {
	@:overload(function(element:Element, ?options:DxSparklineOptions):Void { })
	function new(element:JQuery, ?options:DxSparklineOptions):Void;
}
typedef JQuery = {
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxProgressBar { })
	function dxProgressBar(?options:DevExpress.ui.DxProgressBarOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxSlider { })
	function dxSlider(?options:DevExpress.ui.DxSliderOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxRangeSlider { })
	function dxRangeSlider(?options:DevExpress.ui.DxRangeSliderOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxFileUploader { })
	function dxFileUploader(?options:DevExpress.ui.DxFileUploaderOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxValidator { })
	function dxValidator():JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxValidationGroup { })
	function dxValidatonGroup():JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxValidationSummary { })
	function dxValidationSummary():JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTooltip { })
	function dxTooltip(?options:DevExpress.ui.DxTooltipOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxDropDownList { })
	function dxDropDownList(?options:DevExpress.ui.DxDropDownListOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxToolbar { })
	function dxToolbar(?options:DevExpress.ui.DxToolbarOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxToast { })
	function dxToast(?options:DevExpress.ui.DxToastOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTextEditor { })
	function dxTextEditor(?options:DevExpress.ui.DxTextEditorOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTextBox { })
	function dxTextBox(?options:DevExpress.ui.DxTextBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTextArea { })
	function dxTextArea(?options:DevExpress.ui.DxTextAreaOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTabs { })
	function dxTabs(?options:DevExpress.ui.DxTabsOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTabPanel { })
	function dxTabPanel(?options:DevExpress.ui.DxTabPanelOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxSelectBox { })
	function dxSelectBox(?options:DevExpress.ui.DxSelectBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxScrollView { })
	function dxScrollView(?options:DevExpress.ui.DxScrollViewOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxScrollable { })
	function dxScrollable(?options:DevExpress.ui.DxScrollableOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxRadioGroup { })
	function dxRadioGroup(?options:DevExpress.ui.DxRadioGroupOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxPopup { })
	function dxPopup(?options:DevExpress.ui.DxPopupOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxPopover { })
	function dxPopover(?options:DevExpress.ui.DxPopoverOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxOverlay { })
	function dxOverlay(?options:DevExpress.ui.DxOverlayOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxNumberBox { })
	function dxNumberBox(?options:DevExpress.ui.DxNumberBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxNavBar { })
	function dxNavBar(?options:DevExpress.ui.DxNavBarOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxMultiView { })
	function dxMultiView(?options:DevExpress.ui.DxMultiViewOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxMap { })
	function dxMap(?options:DevExpress.ui.DxMapOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxLookup { })
	function dxLookup(?options:DevExpress.ui.DxLookupOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxLoadPanel { })
	function dxLoadPanel(?options:DevExpress.ui.DxLoadPanelOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxLoadIndicator { })
	function dxLoadIndicator(?options:DevExpress.ui.DxLoadIndicatorOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxList { })
	function dxList(?options:DevExpress.ui.DxListOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxGallery { })
	function dxGallery(?options:DevExpress.ui.DxGalleryOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxDropDownEditor { })
	function dxDropDownEditor(?options:DevExpress.ui.DxDropDownEditorOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxDateBox { })
	function dxDateBox(?options:DevExpress.ui.DxDateBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxCheckBox { })
	function dxCheckBox(?options:DevExpress.ui.DxCheckBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxBox { })
	function dxBox(?options:DevExpress.ui.DxBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxButton { })
	function dxButton(?options:DevExpress.ui.DxButtonOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxCalendar { })
	function dxCalendar(?options:DevExpress.ui.DxCalendarOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxAccordion { })
	function dxAccordion(?options:DevExpress.ui.DxAccordionOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxAutocomplete { })
	function dxAutocomplete(?options:DevExpress.ui.DxAutocompleteOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTileView { })
	function dxTileView(?options:DevExpress.ui.DxTileViewOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxSwitch { })
	function dxSwitch(?options:DevExpress.ui.DxSwitchOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxSlideOut { })
	function dxSlideOut(?options:DevExpress.ui.DxSlideoutOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxPivot { })
	function dxPivot(?options:DevExpress.ui.DxPivotOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxPanorama { })
	function dxPanorama(?options:DevExpress.ui.DxPanoramaOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxActionSheet { })
	function dxActionSheet(?options:DevExpress.ui.DxActionSheetOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxDropDownMenu { })
	function dxDropDownMenu(?options:DevExpress.ui.DxDropDownMenuOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxTreeView { })
	function dxTreeView(?options:DevExpress.ui.DxTreeViewOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxMenuBase { })
	function dxMenuBase(?options:DevExpress.ui.DxMenuBaseOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxMenu { })
	function dxMenu(?options:DevExpress.ui.DxMenuOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxContextMenu { })
	function dxContextMenu(?options:DevExpress.ui.DxContextMenuOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxColorBox { })
	function dxColorBox(?options:DevExpress.ui.DxColorBoxOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.ui.DxDataGrid { })
	function dxDataGrid(?options:DevExpress.ui.DxDataGridOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.charts.DxChart { })
	function dxChart(?options:DevExpress.viz.charts.DxChartOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.charts.DxPieChart { })
	function dxPieChart(?options:DevExpress.viz.charts.DxPieChartOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.charts.DxPolarChart { })
	function dxPolarChart(?options:DevExpress.viz.charts.DxPolarChartOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.gauges.DxLinearGauge { })
	function dxLinearGauge(?options:DevExpress.viz.gauges.DxLinearGaugeOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.gauges.DxCircularGauge { })
	function dxCircularGauge(?options:DevExpress.viz.gauges.DxCircularGaugeOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.gauges.DxBarGauge { })
	function dxBarGauge(?options:DevExpress.viz.gauges.DxBarGaugeOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.rangeSelector.DxRangeSelector { })
	function dxRangeSelector(?options:DevExpress.viz.rangeSelector.DxRangeSelectorOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.map.DxVectorMap { })
	function dxVectorMap(?options:DevExpress.viz.map.DxVectorMapOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.sparklines.DxBullet { })
	function dxBullet(?options:DevExpress.viz.sparklines.DxBulletOptions):JQuery;
	@:overload(function(methodName:String, params:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:Instance):DevExpress.viz.sparklines.DxSparkline { })
	function dxSparkline(?options:DevExpress.viz.sparklines.DxSparklineOptions):JQuery;
};
