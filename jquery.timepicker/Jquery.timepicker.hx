typedef TimePickerHour = {
	@:optional
	var starts : Float;
	@:optional
	var ends : Float;
};
typedef TimePickerMinutes = {
	@:optional
	var starts : Float;
	@:optional
	var ends : Float;
	@:optional
	var interval : Float;
};
typedef TimePickerOptions = {
	@:optional
	var showOn : String;
	@:optional
	var button : String;
	@:optional
	var showAnim : String;
	@:optional
	var showOptions : Dynamic;
	@:optional
	var appendText : String;
	@:optional
	var beforeShow : Void -> Dynamic;
	@:optional
	var onSelect : String -> Dynamic -> Dynamic;
	@:optional
	var onClose : String -> Dynamic -> Dynamic;
	@:optional
	var timeSeparator : String;
	@:optional
	var periodSeparator : String;
	@:optional
	var showPeriod : Bool;
	@:optional
	var showPeriodLabels : Bool;
	@:optional
	var showLeadingZero : Bool;
	@:optional
	var showMinutesLeadingZero : Bool;
	@:optional
	var altField : String;
	@:optional
	var defaultTime : String;
	@:optional
	var myPosition : String;
	@:optional
	var atPosition : String;
	@:optional
	var onHourShow : Void -> Dynamic;
	@:optional
	var onMinuteShow : Void -> Dynamic;
	@:optional
	var hours : TimePickerHour;
	@:optional
	var minutes : TimePickerMinutes;
	@:optional
	var rows : Float;
	@:optional
	var showHours : Bool;
	@:optional
	var showMinutes : Bool;
	@:optional
	var optionalMinutes : Bool;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var showNowButton : Bool;
	@:optional
	var showDeselectButton : Bool;
};
typedef JQuery = {
	@:overload(function(options:TimePickerOptions):JQuery { })
	@:overload(function(methodName:String):Dynamic { })
	@:overload(function(methodName:GetTime):String { })
	@:overload(function(methodName:GetTimeAsDate):Date { })
	@:overload(function(methodName:GetHour):Float { })
	@:overload(function(methodName:GetMinute):Float { })
	@:overload(function(methodName:String, methodParameter:Dynamic):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	function timepicker():JQuery;
};
