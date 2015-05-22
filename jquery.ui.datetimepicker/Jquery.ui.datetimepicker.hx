typedef DateTimePickerOptions = {
	>JQueryUI.DatepickerOptions,
	@:optional
	var showButtonPanel : Bool;
	@:optional
	var timeOnly : Bool;
	@:optional
	var onSelect : Void -> Dynamic;
	@:optional
	var alwaysSetTime : Bool;
	@:optional
	var separator : String;
	@:optional
	var pickerTimeFormat : String;
	@:optional
	var pickerTimeSuffix : String;
	@:optional
	var showTimepicker : Bool;
	@:optional
	var addSliderAccess : Bool;
	@:optional
	var sliderAccessArgs : Dynamic;
	@:optional
	var defaultValue : String;
	@:optional
	var minDateTime : Date;
	@:optional
	var maxDateTime : Date;
	@:optional
	var parse : String;
	@:optional
	var altFieldTimeOnly : Bool;
	@:optional
	var altSeparator : String;
	@:optional
	var altTimeSuffix : String;
	@:optional
	var altTimeFormat : String;
	@:optional
	var currentText : String;
	@:optional
	var closeText : String;
	@:optional
	var amNames : String;
	@:optional
	var pmNames : String;
	@:optional
	var timeFormat : String;
	@:optional
	var timeSuffix : String;
	@:optional
	var timeOnlyTitle : String;
	@:optional
	var timeText : String;
	@:optional
	var hourText : String;
	@:optional
	var minuteText : String;
	@:optional
	var secondText : String;
	@:optional
	var millisecText : String;
	@:optional
	var microsecText : String;
	@:optional
	var timezoneText : String;
	@:optional
	var isRTL : Bool;
	@:optional
	var controlType : String;
	@:optional
	var showHour : Bool;
	@:optional
	var showMinute : Bool;
	@:optional
	var showSecond : Bool;
	@:optional
	var showMillisec : Bool;
	@:optional
	var showMicrosec : Bool;
	@:optional
	var showTimezone : Bool;
	@:optional
	var showTime : Bool;
	@:optional
	var stepHour : Float;
	@:optional
	var stepMinute : Float;
	@:optional
	var stepSecond : Float;
	@:optional
	var stepMillisec : Float;
	@:optional
	var stepMicrosec : Float;
	@:optional
	var hour : Float;
	@:optional
	var minute : Float;
	@:optional
	var second : Float;
	@:optional
	var millisec : Float;
	@:optional
	var microsec : Float;
	@:optional
	var timezone : Float;
	@:optional
	var hourMin : Float;
	@:optional
	var minuteMin : Float;
	@:optional
	var secondMin : Float;
	@:optional
	var millisecMin : Float;
	@:optional
	var microsecMin : Float;
	@:optional
	var hourMax : Float;
	@:optional
	var minuteMax : Float;
	@:optional
	var secondMax : Float;
	@:optional
	var millisecMax : Float;
	@:optional
	var microsecMax : Float;
	@:optional
	var hourGrid : Float;
	@:optional
	var minuteGrid : Float;
	@:optional
	var secondGrid : Float;
	@:optional
	var millisecGrid : Float;
	@:optional
	var microsecGrid : Float;
	@:optional
	var timezoneList : Array<TimezoneOptions>;
};
typedef TimezoneOptions = {
	var label : String;
	var value : Float;
};
typedef Time = {
	@:optional
	var hour : Float;
	@:optional
	var minute : Float;
	@:optional
	var second : Float;
	@:optional
	var millisecond : Float;
	@:optional
	var timezone : String;
};
typedef FormatTimeOptions = {
	var format : String;
	var time : Time;
	@:optional
	var options : DateTimePickerOptions;
};
typedef ParseTimeOptions = {
	var format : String;
	var time : String;
	@:optional
	var options : DateTimePickerOptions;
};
typedef ParseDateTimeOptions = {
	var dateFormat : String;
	var timeFormat : String;
	var dateTimeString : String;
	var dateSettings : String;
	var timeSettings : String;
};
typedef JQuery = {
	@:overload(function(?options:DateTimePickerOptions):JQuery { })
	@:overload(function(method:String, methodParameter:Dynamic):Dynamic { })
	@:overload(function(method:FormatTime, methodParameter:FormatTimeOptions):String { })
	@:overload(function(method:ParseTime, methodParameter:ParseTimeOptions):Time { })
	@:overload(function(method:ParseDateTime, methodParameter:ParseDateTimeOptions):Date { })
	function datetimepicker():JQuery;
};
