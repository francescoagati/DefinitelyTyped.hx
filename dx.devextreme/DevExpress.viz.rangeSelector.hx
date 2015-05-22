typedef DxRangeSelectorOptions = {
	>viz.core.BaseWidgetOptions,
	@:optional
	var background : { @:optional
	var color : String; @:optional
	var image : { @:optional
	var location : String; @:optional
	var url : String; }; @:optional
	var visible : Bool; };
	@:optional
	var behavior : { @:optional
	var allowSlidersSwap : Bool; @:optional
	var animationEnabled : Bool; @:optional
	var callSelectedRangeChanged : String; @:optional
	var manualRangeSelectionEnabled : Bool; @:optional
	var moveSelectedRangeByClick : Bool; @:optional
	var snapToTicks : Bool; };
	@:optional
	var chart : { @:optional
	var bottomIndent : Float; @:optional
	var commonSeriesSettings : viz.charts.CommonSeriesSettings; @:optional
	var dataPrepareSettings : { @:optional
	var checkTypeForAllData : Bool; @:optional
	var convertToAxisDataType : Bool; @:optional
	var sortingMethod : Dynamic; }; @:optional
	var equalBarWidth : Dynamic; @:optional
	var series : Array<viz.charts.SeriesConfig>; @:optional
	var seriesTemplate : viz.charts.SeriesTemplate; @:optional
	var topIndent : Float; @:optional
	var useAggregation : Bool; @:optional
	var valueAxis : { @:optional
	var inverted : Bool; @:optional
	var logarithmBase : Float; @:optional
	var max : Float; @:optional
	var min : Float; @:optional
	var type : String; @:optional
	var valueType : String; }; };
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataSourceField : String;
	@:optional
	var loadingIndicator : viz.core.LoadingIndicator;
	@:optional
	var margin : viz.core.Margins;
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var scale : { @:optional
	var endValue : Dynamic; @:optional
	var label : { @:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String; @:optional
	var font : viz.core.Font; @:optional
	var format : String; @:optional
	var precision : Float; @:optional
	var topIndent : Float; @:optional
	var visible : Bool; }; @:optional
	var logarithmBase : Float; @:optional
	var majorTickInterval : Dynamic; @:optional
	var marker : { @:optional
	var label : { @:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String; @:optional
	var format : String; }; @:optional
	var separatorHeight : Float; @:optional
	var textLeftIndent : Float; @:optional
	var textTopIndent : Float; @:optional
	var topIndent : Float; @:optional
	var visible : Bool; }; @:optional
	var maxRange : Dynamic; @:optional
	var minorTickCount : Float; @:optional
	var minorTickInterval : Dynamic; @:optional
	var minRange : Dynamic; @:optional
	var placeholderHeight : Float; @:optional
	var setTicksAtUnitBeginning : Bool; @:optional
	var showCustomBoundaryTicks : Bool; @:optional
	var showMinorTicks : Bool; @:optional
	var startValue : Dynamic; @:optional
	var tick : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var width : Float; }; @:optional
	var type : String; @:optional
	var useTicksAutoArrangement : Bool; @:optional
	var valueType : String; @:optional
	var categories : Array<Dynamic>; };
	@:optional
	var selectedRange : { @:optional
	var startValue : Dynamic; @:optional
	var endValue : Dynamic; };
	@:optional
	var selectedRangeChanged : { var startValue : Dynamic; var endValue : Dynamic; } -> Void;
	@:optional
	var onSelectedRangeChanged : { var startValue : Dynamic; var endValue : Dynamic; var component : DxRangeSelector; var element : Element; } -> Void;
	@:optional
	var shutter : { @:optional
	var color : String; @:optional
	var opacity : Float; };
	@:optional
	var size : viz.core.Size;
	@:optional
	var sliderHandle : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var width : Float; };
	@:optional
	var sliderMarker : { @:optional
	var color : String; @:optional
	var customizeText : { var value : Dynamic; var valueText : Dynamic; } -> String; @:optional
	var font : viz.core.Font; @:optional
	var format : String; @:optional
	var invalidRangeColor : String; @:optional
	var padding : Float; @:optional
	var placeholderSize : { @:optional
	var height : Float; @:optional
	var width : { @:optional
	var left : Float; @:optional
	var right : Float; }; }; @:optional
	var precision : Float; @:optional
	var visible : Bool; };
	@:optional
	var theme : String;
};
extern class DxRangeSelector extends viz.core.BaseWidget {
	@:overload(function(element:Element, ?options:DxRangeSelectorOptions):Void { })
	function new(element:JQuery, ?options:DxRangeSelectorOptions):Void;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function render(?skipChartAnimation:Bool):Void;
	function getSelectedRange():{ var startValue : Dynamic; var endValue : Dynamic; };
	function setSelectedRange(selectedRange:{ var startValue : Dynamic; var endValue : Dynamic; }):Void;
}
