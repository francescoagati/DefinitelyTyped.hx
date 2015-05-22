typedef BaseRangeContainer = {
	@:optional
	var backgroundColor : String;
	@:optional
	var offset : Float;
	@:optional
	var palette : Dynamic;
	@:optional
	var ranges : Array<{ var startValue : Float; var endValue : Float; var color : String; }>;
	@:optional
	var color : String;
	@:optional
	var endValue : Float;
	@:optional
	var startValue : Float;
};
typedef ScaleTick = {
	@:optional
	var color : String;
	@:optional
	var customTickValues : Array<Dynamic>;
	@:optional
	var length : Float;
	@:optional
	var showCalculatedTicks : Bool;
	@:optional
	var tickInterval : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef ScaleMajorTick = {
	>ScaleTick,
	@:optional
	var useTicksAutoArrangement : Bool;
};
typedef BaseScaleLabel = {
	@:optional
	var useRangeColors : Bool;
	@:optional
	var customizeText : { var value : Float; var valueText : String; } -> String;
	@:optional
	var font : viz.core.Font;
	@:optional
	var format : String;
	@:optional
	var precision : Float;
	@:optional
	var visible : Bool;
};
typedef BaseScale = {
	@:optional
	var endValue : Float;
	@:optional
	var hideFirstLabel : Bool;
	@:optional
	var hideFirstTick : Bool;
	@:optional
	var hideLastLabel : Bool;
	@:optional
	var hideLastTick : Bool;
	@:optional
	var label : BaseScaleLabel;
	@:optional
	var majorTick : ScaleMajorTick;
	@:optional
	var minorTick : ScaleTick;
	@:optional
	var startValue : Float;
};
typedef BaseSubvalueIndicator = {
	@:optional
	var arrowLength : Float;
	@:optional
	var color : String;
	@:optional
	var length : Float;
	@:optional
	var palette : Array<Dynamic>;
	@:optional
	var text : Dynamic;
	@:optional
	var customizeText : { var value : Float; var valueText : String; } -> String;
	@:optional
	var font : viz.core.Font;
	@:optional
	var format : String;
	@:optional
	var precision : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
};
typedef BaseValueIndicator = {
	@:optional
	var backgroundColor : String;
	@:optional
	var baseValue : Float;
	@:optional
	var color : String;
	@:optional
	var size : Float;
	@:optional
	var text : { @:optional
	var customizeText : { var value : Float; var valueText : String; } -> String; @:optional
	var font : viz.core.Font; @:optional
	var format : String; @:optional
	var indent : Float; @:optional
	var precision : Float; };
};
typedef SharedGaugeOptions = {
	@:optional
	var animation : viz.core.Animation;
	@:optional
	var loadingIndicator : viz.core.LoadingIndicator;
	@:optional
	var redrawOnResize : Bool;
	@:optional
	var size : viz.core.Size;
	@:optional
	var subtitle : { @:optional
	var font : viz.core.Font; @:optional
	var text : String; };
	@:optional
	var theme : String;
	@:optional
	var title : { @:optional
	var font : viz.core.Font; @:optional
	var position : String; @:optional
	var text : String; };
	@:optional
	var tooltip : viz.core.Tooltip;
};
typedef BaseGaugeOptions = {
	>viz.core.BaseWidgetOptions,
	>SharedGaugeOptions,
	@:optional
	var containerBackgroundColor : String;
	@:optional
	var margin : viz.core.Margins;
	@:optional
	var rangeContainer : BaseRangeContainer;
	@:optional
	var scale : BaseScale;
	@:optional
	var subvalueIndicator : BaseSubvalueIndicator;
	@:optional
	var subvalues : Array<Float>;
	@:optional
	var value : Float;
	@:optional
	var valueIndicator : BaseValueIndicator;
};
extern class DxBaseGauge extends viz.core.BaseWidget {
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function render():Void;
	@:overload(function(value:Float):Void { })
	function value():Float;
	@:overload(function(subvalues:Array<Float>):Void { })
	function subvalues():Array<Float>;
}
typedef LinearRangeContainer = {
	>BaseRangeContainer,
	@:optional
	var horizontalOrientation : String;
	@:optional
	var verticalOrientation : String;
	@:optional
	var width : Dynamic;
	@:optional
	var end : Float;
	@:optional
	var start : Float;
};
typedef LinearScaleLabel = {
	>BaseScaleLabel,
	@:optional
	var indentFromTick : Float;
};
typedef LinearScale = {
	>BaseScale,
	@:optional
	var horizontalOrientation : String;
	@:optional
	var label : LinearScaleLabel;
	@:optional
	var verticalOrientation : String;
};
typedef LinearSubvalueIndicator = {
	>BaseSubvalueIndicator,
	@:optional
	var horizontalOrientation : String;
	@:optional
	var offset : Float;
	@:optional
	var verticalOrientation : String;
};
typedef LinearValueIndicator = {
	>BaseValueIndicator,
	@:optional
	var horizontalOrientation : String;
	@:optional
	var length : Float;
	@:optional
	var offset : Float;
	@:optional
	var type : String;
	@:optional
	var verticalOrientation : String;
	@:optional
	var width : Float;
};
typedef DxLinearGaugeOptions = {
	>BaseGaugeOptions,
	@:optional
	var geometry : { @:optional
	var orientation : String; };
	@:optional
	var rangeContainer : LinearRangeContainer;
	@:optional
	var scale : LinearScale;
	@:optional
	var subvalueIndicator : LinearSubvalueIndicator;
	@:optional
	var valueIndicator : LinearValueIndicator;
};
extern class DxLinearGauge extends DxBaseGauge {
	@:overload(function(element:Element, ?options:DxLinearGaugeOptions):Void { })
	function new(element:JQuery, ?options:DxLinearGaugeOptions):Void;
}
typedef CircularRangeContainer = {
	>BaseRangeContainer,
	@:optional
	var orientation : String;
	@:optional
	var width : Float;
};
typedef CircularScaleLabel = {
	>BaseScaleLabel,
	@:optional
	var indentFromTick : Float;
};
typedef CircularScale = {
	>BaseScale,
	@:optional
	var label : CircularScaleLabel;
	@:optional
	var orientation : String;
};
typedef CircularSubvalueIndicator = {
	>BaseSubvalueIndicator,
	@:optional
	var offset : Float;
};
typedef CircularValueIndicator = {
	>BaseValueIndicator,
	@:optional
	var indentFromCenter : Float;
	@:optional
	var offset : Float;
	@:optional
	var secondColor : String;
	@:optional
	var secondFraction : Float;
	@:optional
	var spindleGapSize : Float;
	@:optional
	var spindleSize : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
};
typedef DxCircularGaugeOptions = {
	>BaseGaugeOptions,
	@:optional
	var geometry : { @:optional
	var endAngle : Float; @:optional
	var startAngle : Float; };
	@:optional
	var rangeContainer : CircularRangeContainer;
	@:optional
	var scale : CircularScale;
	@:optional
	var subvalueIndicator : CircularSubvalueIndicator;
	@:optional
	var valueIndicator : CircularValueIndicator;
};
extern class DxCircularGauge extends DxBaseGauge {
	@:overload(function(element:Element, ?options:DxCircularGaugeOptions):Void { })
	function new(element:JQuery, ?options:DxCircularGaugeOptions):Void;
}
typedef DxBarGaugeOptions = {
	>viz.core.BaseWidgetOptions,
	>SharedGaugeOptions,
	@:optional
	var backgroundColor : String;
	@:optional
	var barSpacing : Float;
	@:optional
	var baseValue : Float;
	@:optional
	var endValue : Float;
	@:optional
	var geometry : { @:optional
	var endAngle : Float; @:optional
	var startAngle : Float; };
	@:optional
	var label : { @:optional
	var connectorColor : String; @:optional
	var connectorWidth : Float; @:optional
	var customizeText : { var value : Float; var valueText : String; } -> String; @:optional
	var font : viz.core.Font; @:optional
	var format : String; @:optional
	var indent : Float; @:optional
	var precision : Float; @:optional
	var visible : Bool; };
	@:optional
	var palette : String;
	@:optional
	var relativeInnerRadius : Float;
	@:optional
	var startValue : Float;
	@:optional
	var values : Array<Float>;
};
extern class DxBarGauge extends viz.core.BaseWidget {
	@:overload(function(element:Element, ?options:DxBarGaugeOptions):Void { })
	function new(element:JQuery, ?options:DxBarGaugeOptions):Void;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function render():Void;
	@:overload(function(values:Array<Float>):Void { })
	function values():Array<Float>;
}
