typedef HighstockChartObject = {
	>HighchartsChartObject,
	var options : HighstockOptions;
};
typedef HighstockNavigatorOptions = {
	@:optional
	var adaptToUpdatedData : Bool;
	@:optional
	var baseSeries : haxe.extern.EitherType<String, Float>;
	@:optional
	var enabled : Bool;
	@:optional
	var handles : { @:optional
	var backgoundColor : String; @:optional
	var borderColor : String; };
	@:optional
	var height : Float;
	@:optional
	var margin : Float;
	@:optional
	var maskFill : String;
	@:optional
	var maskInside : Bool;
	@:optional
	var outlineColor : String;
	@:optional
	var outlineWidth : Float;
	@:optional
	var series : HighchartsIndividualSeriesOptions;
	@:optional
	var xAxis : HighchartsAxisOptions;
	@:optional
	var yAxis : HighchartsAxisOptions;
};
typedef RangeSelectorButton = {
	var type : String;
	var count : Float;
	var text : String;
	@:optional
	var dataGrouping : Dynamic;
};
typedef HighstockRangeSelectorOptions = {
	@:optional
	var allButtonsEnabled : Bool;
	@:optional
	var buttonSpacing : Float;
	@:optional
	var buttonTheme : Dynamic;
	@:optional
	var buttons : Array<RangeSelectorButton>;
	@:optional
	var enabled : Bool;
	@:optional
	var inputBoxBorderColor : String;
	@:optional
	var inputBoxHeight : Float;
	@:optional
	var inputBoxWidth : Float;
	@:optional
	var inputDateFormat : String;
	@:optional
	var inputDateParser : String -> Float;
	@:optional
	var inputEditDateFormat : String;
	@:optional
	var inputEnabled : Bool;
	@:optional
	var inputPosition : { @:optional
	var align : String; @:optional
	var verticalAlign : String; @:optional
	var x : Float; @:optional
	var y : Float; };
	@:optional
	var inputStyle : HighchartsCSSObject;
	@:optional
	var labelStyle : HighchartsCSSObject;
	@:optional
	var selected : Float;
};
typedef HighstockScrollbarOptions = {
	@:optional
	var barBackgroundColor : String;
	@:optional
	var barBorderColor : String;
	@:optional
	var barBorderRadius : Float;
	@:optional
	var barBorderWidth : Float;
	@:optional
	var buttonArrowColor : String;
	@:optional
	var buttonBackgroundColor : String;
	@:optional
	var buttonBorderColor : String;
	@:optional
	var buttonBorderRadius : Float;
	@:optional
	var buttonBorderWidth : Float;
	@:optional
	var enabled : Bool;
	@:optional
	var height : Float;
	@:optional
	var liveRedraw : Bool;
	@:optional
	var minWidth : Float;
	@:optional
	var rifleColor : String;
	@:optional
	var trackBackgroundColor : String;
	@:optional
	var trackBorderColor : String;
	@:optional
	var trackBorderRadius : Float;
	@:optional
	var trackBorderWidth : Float;
};
typedef HighstockOptions = {
	>HighchartsOptions,
	@:optional
	var navigator : HighstockNavigatorOptions;
	@:optional
	var rangeSelector : HighstockRangeSelectorOptions;
	@:optional
	var scrollbar : HighstockScrollbarOptions;
};
typedef HighstockChart = {
	@:overload(function(options:HighstockOptions, callback:HighstockChartObject -> Void):HighstockChartObject { })
	function new(options:HighstockOptions):HighstockChartObject;
};
typedef HighchartsStatic = {
	var StockChart : HighstockChart;
};
typedef JQuery = {
	@:overload(function(type:StockChart, options:HighstockOptions):JQuery { })
	@:overload(function(type:StockChart, options:HighstockOptions, callback:HighstockChartObject -> Void):JQuery { })
	@:overload(function(type:String):HighchartsChartObject { })
	@:overload(function(type:String, options:HighchartsOptions):JQuery { })
	@:overload(function(type:String, options:HighchartsOptions, callback:HighchartsChartObject -> Void):JQuery { })
	function highcharts(type:StockChart):HighstockChartObject;
};
