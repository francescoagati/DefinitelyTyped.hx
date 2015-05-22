typedef CustomizeTextArgument = {
	var value : Float;
	var valueText : String;
	var color : String;
};
typedef Z_textOptions = {
	@:optional
	var format : String;
	@:optional
	var precision : Float;
	@:optional
	var customizeText : CustomizeTextArgument -> String;
	@:optional
	var font : viz.common.FontOptions;
};
typedef Z_textOptionsWithIndent = {
	>Z_textOptions,
	@:optional
	var indent : Float;
};
typedef Z_GaugeTooltipOptions = {
	>common.BaseTooltipOptions,
	@:optional
	var format : String;
	@:optional
	var precision : Float;
	@:optional
	var customizeText : CustomizeTextArgument -> String;
	@:optional
	var customizeTooltip : CustomizeTextArgument -> common.CustomizeTooltipResult;
};
typedef Z_BaseGaugeOptions = {
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var margin : { @:optional
	var left : Float; @:optional
	var right : Float; @:optional
	var top : Float; @:optional
	var bottom : Float; };
	@:optional
	var theme : String;
	@:optional
	var loadingIndicator : common.LoadingIndicatorOptions;
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var animation : { @:optional
	var enabled : Bool; @:optional
	var duration : Float; @:optional
	var easing : String; };
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var title : { @:optional
	var position : String; @:optional
	var text : String; @:optional
	var font : viz.common.FontOptions; };
	@:optional
	var subtitle : { @:optional
	var text : String; @:optional
	var font : viz.common.FontOptions; };
	@:optional
	var tooltip : Z_GaugeTooltipOptions;
	@:optional
	var value : Float;
	@:optional
	var subvalues : Array<Float>;
	@:optional
	var pathModified : Bool;
};
typedef Z_BaseRangeContainer = {
	@:optional
	var offset : Float;
	@:optional
	var backgroundColor : String;
	@:optional
	var ranges : Array<{ @:optional
	var startValue : Float; @:optional
	var endValue : Float; @:optional
	var color : String; }>;
};
typedef Z_BaseScale = {
	@:optional
	var startValue : Float;
	@:optional
	var endValue : Float;
	@:optional
	var hideFirstTick : Bool;
	@:optional
	var hideLastTick : Bool;
	@:optional
	var hideFirstLabel : Bool;
	@:optional
	var hideLastLabel : Bool;
	@:optional
	var majorTick : { @:optional
	var color : String; @:optional
	var length : Float; @:optional
	var width : Float; @:optional
	var customTickValues : Array<Float>; @:optional
	var useTicksAutoArrangement : Bool; @:optional
	var tickInterval : Float; @:optional
	var showCalculatedTicks : Bool; @:optional
	var visible : Bool; };
	@:optional
	var minorTick : { @:optional
	var color : String; @:optional
	var length : Float; @:optional
	var width : Float; @:optional
	var customTickValues : Array<Float>; @:optional
	var tickInterval : Float; @:optional
	var showCalculatedTicks : Bool; @:optional
	var visible : Bool; };
	@:optional
	var label : Z_textOptions;
};
typedef Z_BaseValueIndicator = {
	@:optional
	var color : String;
	@:optional
	var baseValue : Float;
	@:optional
	var size : Float;
	@:optional
	var backgroundColor : String;
	@:optional
	var text : Z_textOptionsWithIndent;
};
typedef Z_BaseSubValueIndicator = {
	@:optional
	var type : String;
	@:optional
	var length : Float;
	@:optional
	var width : Float;
	@:optional
	var color : String;
	@:optional
	var arrowLength : Float;
	@:optional
	var text : Z_textOptions;
	@:optional
	var palette : Array<Float>;
};
typedef CircularGaugeRangeContainer = {
	>Z_BaseRangeContainer,
	@:optional
	var width : Float;
	@:optional
	var orientation : String;
};
typedef CircularGaugeScale = {
	>Z_BaseScale,
	var orientation : String;
	var label : { @:optional
	var format : String; @:optional
	var precision : Float; @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var font : viz.common.FontOptions; @:optional
	var indentFromTick : Float; };
};
typedef CircularGaugeValueIndicator = {
	>Z_BaseValueIndicator,
	@:optional
	var type : String;
	@:optional
	var offset : Float;
	@:optional
	var indentFromCenter : Float;
	@:optional
	var width : Float;
	@:optional
	var secondColor : String;
	@:optional
	var secondFraction : Float;
	@:optional
	var spindleSize : Float;
	@:optional
	var spindleGapSize : Float;
};
typedef CircularGaugeSubValueIndicator = {
	>Z_BaseSubValueIndicator,
	@:optional
	var offset : Float;
};
typedef CircularGaugeOptions = {
	>Z_BaseGaugeOptions,
	@:optional
	var rangeContainer : CircularGaugeRangeContainer;
	@:optional
	var geometry : { @:optional
	var startAngle : Float; @:optional
	var endAngle : Float; };
	@:optional
	var scale : CircularGaugeScale;
	@:optional
	var valueIndicator : CircularGaugeValueIndicator;
	@:optional
	var spindle : { @:optional
	var visible : Bool; @:optional
	var size : Float; @:optional
	var gapSize : Float; @:optional
	var color : String; };
	@:optional
	var drawn : viz.CircularGauge -> Void;
};
typedef LinearGaugeScale = {
	>Z_BaseScale,
	@:optional
	var verticalOrientation : String;
	@:optional
	var horizontalOrientation : String;
	@:optional
	var label : { @:optional
	var format : String; @:optional
	var precision : Float; @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var font : viz.common.FontOptions; @:optional
	var indentFromTick : Float; };
};
typedef LinearGaugeRangeContainer = {
	>Z_BaseRangeContainer,
	@:optional
	var width : { @:optional
	var start : Float; @:optional
	var end : Float; };
	@:optional
	var verticalOrientation : String;
	@:optional
	var horizontalOrientation : String;
};
typedef LinearGaugeValueIndicator = {
	>Z_BaseValueIndicator,
	@:optional
	var offset : Float;
	@:optional
	var horizontalOrientation : String;
	@:optional
	var verticalOrientation : String;
	@:optional
	var length : Float;
	@:optional
	var width : Float;
};
typedef LinearGaugeSubValueIndicator = {
	>Z_BaseSubValueIndicator,
	@:optional
	var offset : Float;
	@:optional
	var horizontalOrientation : String;
	@:optional
	var verticalOrientation : String;
};
typedef LinearGaugeOptions = {
	>Z_BaseGaugeOptions,
	@:optional
	var geometry : { @:optional
	var orientation : String; };
	@:optional
	var scale : LinearGaugeScale;
	@:optional
	var valueIndicator : LinearGaugeValueIndicator;
	@:optional
	var drawn : viz.LinearGauge -> Void;
};
typedef BarGaugeOptions = {
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var theme : String;
	@:optional
	var loadingIndicator : common.LoadingIndicatorOptions;
	@:optional
	var animationEnabled : Bool;
	@:optional
	var animationDuration : Float;
	@:optional
	var animation : { @:optional
	var enabled : Bool; @:optional
	var duration : Float; @:optional
	var easing : String; };
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var title : { @:optional
	var position : String; @:optional
	var text : String; @:optional
	var font : viz.common.FontOptions; };
	@:optional
	var subtitle : { @:optional
	var text : String; @:optional
	var font : viz.common.FontOptions; };
	@:optional
	var tooltip : Z_GaugeTooltipOptions;
	@:optional
	var geometry : { @:optional
	var startAngle : Float; @:optional
	var endAngle : Float; };
	@:optional
	var label : { @:optional
	var visible : Bool; @:optional
	var indent : Float; @:optional
	var connectorWidth : Float; @:optional
	var connectorColor : String; @:optional
	var format : String; @:optional
	var precision : Float; @:optional
	var customizeText : CustomizeTextArgument -> String; @:optional
	var font : viz.common.FontOptions; };
	@:optional
	var startValue : Float;
	@:optional
	var endValue : Float;
	@:optional
	var baseValue : Float;
	@:optional
	var values : Array<Float>;
	@:optional
	var drawn : viz.BarGauge -> Void;
	@:optional
	var pathModified : Bool;
};
