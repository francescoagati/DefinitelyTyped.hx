typedef JQRangeSliderNumericRange = {
	@:optional
	var min : Float;
	@:optional
	var max : Float;
};
typedef JQRangeSliderDateRange = {
	@:optional
	var min : Date;
	@:optional
	var max : Date;
};
typedef JQRangeSliderRangeLength = {
	@:optional
	var min : Dynamic;
	@:optional
	var max : Dynamic;
};
typedef JQRangeSliderDateSteps = {
	@:optional
	var years : Float;
	@:optional
	var months : Float;
	@:optional
	var weeks : Float;
	@:optional
	var days : Float;
	@:optional
	var hours : Float;
	@:optional
	var minutes : Float;
	@:optional
	var seconds : Float;
};
typedef JQRangeSliderOptions = {
	@:optional
	var wheelMode : String;
	@:optional
	var wheelSpeed : Float;
	@:optional
	var arrows : Bool;
	@:optional
	var valueLabels : String;
	@:optional
	var durationIn : Float;
	@:optional
	var durationOut : Float;
	@:optional
	var delayOut : Float;
	@:optional
	var range : JQRangeSliderRangeLength;
};
typedef JQNumericRangeSliderOptions = {
	>JQRangeSliderOptions,
	@:optional
	var bounds : JQRangeSliderNumericRange;
	@:optional
	var defaultValues : JQRangeSliderNumericRange;
	@:optional
	var formatter : Dynamic -> String;
	@:optional
	var step : Float;
};
typedef JQDateRangeSliderOptions = {
	>JQRangeSliderOptions,
	@:optional
	var bounds : JQRangeSliderDateRange;
	@:optional
	var defaultValues : JQRangeSliderDateRange;
	@:optional
	var formatter : Dynamic -> String;
	@:optional
	var step : JQRangeSliderDateSteps;
};
typedef JQuery = {
	@:overload(function(method:String, value:Float):JQuery { })
	@:overload(function(method:String, min:Float, max:Float):JQuery { })
	@:overload(function(?options:JQNumericRangeSliderOptions):JQuery { })
	function rangeSlider(method:String):Dynamic;
	@:overload(function(method:String, value:Float):JQuery { })
	@:overload(function(method:String, min:Float, max:Float):JQuery { })
	@:overload(function(?options:JQNumericRangeSliderOptions):JQuery { })
	function editRangeSlider(method:String):Dynamic;
	@:overload(function(method:String, value:Date):JQuery { })
	@:overload(function(method:String, min:Date, max:Date):JQuery { })
	@:overload(function(?options:JQRangeSliderOptions):JQuery { })
	function dateRangeSlider(method:String):Dynamic;
};
