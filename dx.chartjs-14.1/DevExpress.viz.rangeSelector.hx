typedef SelectedRange = {
	var startValue : Dynamic;
	var endValue : Dynamic;
};
typedef CustomizeTextArgument = {
	var value : Dynamic;
	var valueText : String;
};
typedef RangeSelectorOptions = {
	@:optional
	var background : { @:optional
	var color : String; @:optional
	var image : { @:optional
	var location : String; @:optional
	var url : String; }; @:optional
	var visible : Bool; };
	@:optional
	var loadingIndicator : common.LoadingIndicatorOptions;
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
	var equalBarWidth : { @:optional
	var spacing : Float; @:optional
	var width : Float; }; @:optional
	var dataPrepareSettings : { @:optional
	var checkTypeForAllData : Bool; @:optional
	var convertToAxisDataType : Bool; @:optional
	var sortingMethod : Dynamic; }; @:optional
	var useAggregation : Bool; @:optional
	var series : Array<viz.charts.series.SeriesOptions>; @:optional
	var commonSeriesSettings : viz.charts.series.CommonSeriesSettings; @:optional
	var topIndent : Float; @:optional
	var valueAxis : { @:optional
	var max : Dynamic; @:optional
	var min : Dynamic; @:optional
	var inverted : Bool; @:optional
	var valueType : String; @:optional
	var type : String; @:optional
	var logarithmBase : Float; }; };
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var dataSource : Array<{ }>;
	@:optional
	var dataSourceField : String;
	@:optional
	var margin : { @:optional
	var left : Float; @:optional
	var top : Float; @:optional
	var right : Float; @:optional
	var bottom : Float; };
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var scale : { @:optional
	var startValue : Dynamic; @:optional
	var endValue : Dynamic; @:optional
	var label : { @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var font : viz.common.FontOptions; @:optional
	var format : String; @:optional
	var precision : Float; @:optional
	var topIndent : Float; @:optional
	var visible : Bool; }; @:optional
	var majorTickInterval : Dynamic; @:optional
	var marker : { @:optional
	var label : { @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var format : String; }; @:optional
	var separatorHeight : Float; @:optional
	var textLeftIndent : Float; @:optional
	var textTopIndent : Float; @:optional
	var topIndent : Float; @:optional
	var visible : Bool; }; @:optional
	var maxRange : Dynamic; @:optional
	var minorTickCount : Float; @:optional
	var placeHolderHeight : Float; @:optional
	var setTicksAtUnitBeginning : Bool; @:optional
	var showCustomBoundaryTicks : Bool; @:optional
	var showMinorTicks : Bool; @:optional
	var tick : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var width : Float; }; @:optional
	var minorTickInterval : Dynamic; @:optional
	var useTicksAutoArrangement : Bool; @:optional
	var valueType : String; @:optional
	var type : String; @:optional
	var logarithmBase : Float; };
	@:optional
	var selectedRange : SelectedRange;
	@:optional
	var selectedRangeChaged : Dynamic -> Dynamic -> Void;
	@:optional
	var shutter : { @:optional
	var color : String; @:optional
	var opacity : String; };
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var sliderHandle : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var width : String; };
	@:optional
	var sliderMarker : { @:optional
	var color : String; @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var font : viz.common.FontOptions; @:optional
	var format : String; @:optional
	var invalidRangeColor : String; @:optional
	var padding : Float; @:optional
	var placeHolderSize : { @:optional
	var height : Float; @:optional
	var width : { @:optional
	var left : Float; @:optional
	var right : Float; }; @:optional
	var precission : Float; @:optional
	var visible : Bool; }; };
	@:optional
	var theme : String;
	@:optional
	var drawn : viz.RangeSelector -> Void;
	@:optional
	var pathModified : Bool;
};
