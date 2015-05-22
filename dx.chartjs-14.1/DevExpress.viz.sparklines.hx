typedef Z_SparklineTooltipFormatObject = {
	@:optional
	var firstValue : String;
	@:optional
	var lastValue : String;
	@:optional
	var maxValue : String;
	@:optional
	var minValue : String;
	@:optional
	var originalFirstValue : Dynamic;
	@:optional
	var originalLastValue : Dynamic;
	@:optional
	var originalMaxValue : Dynamic;
	@:optional
	var originalMinValue : Dynamic;
};
typedef SparklineTooltipOptions = {
	>common.BaseTooltipOptions,
	@:optional
	var customizeText : Z_SparklineTooltipFormatObject -> String;
	@:optional
	var customizeTooltip : Z_SparklineTooltipFormatObject -> common.CustomizeTooltipResult;
	@:optional
	var allowContainerResizing : Bool;
	@:optional
	var horizontalAlignment : String;
	@:optional
	var verticalAlignment : String;
	@:optional
	var format : String;
	@:optional
	var precision : Float;
};
typedef Z_BaseSparklineSettings = {
	@:optional
	var theme : String;
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var tooltip : SparklineTooltipOptions;
	@:optional
	var pathModified : Bool;
};
typedef SparklineOptions = {
	>Z_BaseSparklineSettings,
	@:optional
	var dataSource : Array<Dynamic>;
	@:optional
	var argumentField : String;
	@:optional
	var valueField : String;
	@:optional
	var type : String;
	@:optional
	var lineColor : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var showFirstLast : Bool;
	@:optional
	var showMinMax : Bool;
	@:optional
	var minColor : String;
	@:optional
	var maxColor : String;
	@:optional
	var firstLastColor : String;
	@:optional
	var barPositiveColor : String;
	@:optional
	var barNegativeColor : String;
	@:optional
	var winColor : String;
	@:optional
	var lossColor : String;
	@:optional
	var pointSymbol : String;
	@:optional
	var pointSize : Float;
	@:optional
	var pointColor : String;
	@:optional
	var winlossThreshold : Float;
	@:optional
	var drawn : viz.Sparkline -> Void;
	@:optional
	var ignoreEmptyPoints : Bool;
};
typedef Z_BulletTooltipFormatObject = {
	@:optional
	var originalValue : Dynamic;
	@:optional
	var originalTarget : Dynamic;
	@:optional
	var value : String;
	@:optional
	var target : String;
};
typedef BulletTooltipOptions = {
	>SparklineTooltipOptions,
	@:optional
	var customizeText : Z_BulletTooltipFormatObject -> String;
	@:optional
	var customizeTooltip : Z_BulletTooltipFormatObject -> common.CustomizeTooltipResult;
};
typedef BulletOptions = {
	>Z_BaseSparklineSettings,
	@:optional
	var value : Float;
	@:optional
	var target : Float;
	@:optional
	var endScaleValue : Float;
	@:optional
	var color : String;
	@:optional
	var targetColor : String;
	@:optional
	var targetWidth : Float;
	@:optional
	var targetVisible : Bool;
	@:optional
	var tooltip : BulletTooltipOptions;
	@:optional
	var drawn : viz.Bullet -> Void;
};
typedef JQuery = {
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxChart(?options:DevExpress.viz.charts.ChartOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxPieChart(?options:DevExpress.viz.charts.PieOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxRangeSelector(?options:DevExpress.viz.rangeSelector.RangeSelectorOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxCircularGauge(?options:DevExpress.viz.gauges.CircularGaugeOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxLinearGauge(?options:DevExpress.viz.gauges.LinearGaugeOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxBarGauge(?options:DevExpress.viz.gauges.BarGaugeOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxSparkline(?options:DevExpress.viz.sparklines.SparklineOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxBullet(?options:DevExpress.viz.sparklines.BulletOptions):JQuery;
	@:overload(function(method:String, ?param1:Dynamic, ?param2:Dynamic):Dynamic { })
	function dxVectorMap(?options:DevExpress.viz.map.VectorMapOptions):JQuery;
};
