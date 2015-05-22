typedef DatetimepickerChangeEventObject = {
	>JQueryEventObject,
	var date : Dynamic;
	var oldDate : Dynamic;
};
typedef DatetimepickerEventObject = {
	>JQueryEventObject,
	var date : Dynamic;
};
typedef DatetimepickerIcons = {
	@:optional
	var time : String;
	@:optional
	var date : String;
	@:optional
	var up : String;
	@:optional
	var down : String;
};
typedef DatetimepickerOptions = {
	@:optional
	var pickDate : Bool;
	@:optional
	var pickTime : Bool;
	@:optional
	var useMinutes : Bool;
	@:optional
	var useSeconds : Bool;
	@:optional
	var useCurrent : Bool;
	@:optional
	var minuteStepping : Float;
	@:optional
	var minDate : Dynamic;
	@:optional
	var maxDate : Dynamic;
	@:optional
	var showToday : Bool;
	@:optional
	var collapse : Bool;
	@:optional
	var language : String;
	@:optional
	var defaultDate : String;
	@:optional
	var disabledDates : Array<Dynamic>;
	@:optional
	var enabledDates : Array<Dynamic>;
	@:optional
	var icons : DatetimepickerIcons;
	@:optional
	var useStrict : Bool;
	@:optional
	var direction : String;
	@:optional
	var sideBySide : Bool;
	@:optional
	var daysOfWeekDisabled : Array<Dynamic>;
};
typedef Datetimepicker = {
	function setDate(date:Dynamic):Void;
	function setMinDate(date:Dynamic):Void;
	function setMaxDate(date:Dynamic):Void;
	function show():Void;
	function disable():Void;
	function enable():Void;
	function getDate():Void;
};
typedef JQuery = {
	@:overload(function(options:BootstrapV3DatetimePicker.DatetimepickerOptions):JQuery { })
	function datetimepicker():JQuery;
	@:overload(function(events:Dp.change, handler:BootstrapV3DatetimePicker.DatetimepickerChangeEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.show, ?selector:String, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.show, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.hide, ?selector:String, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.hide, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.error, ?selector:String, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.error, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	function off(events:Dp.change, ?selector:String, ?handler:BootstrapV3DatetimePicker.DatetimepickerChangeEventObject -> Dynamic):JQuery;
	@:overload(function(events:Dp.change, selector:String, handler:BootstrapV3DatetimePicker.DatetimepickerChangeEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.change, handler:BootstrapV3DatetimePicker.DatetimepickerChangeEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.show, selector:String, data:Dynamic, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.show, selector:String, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.show, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.hide, selector:String, data:Dynamic, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.hide, selector:String, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.hide, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.error, selector:String, data:Dynamic, ?handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.error, selector:String, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Dp.error, handler:BootstrapV3DatetimePicker.DatetimepickerEventObject -> Dynamic):JQuery { })
	function on(events:Dp.change, selector:String, data:Dynamic, ?handler:BootstrapV3DatetimePicker.DatetimepickerChangeEventObject -> Dynamic):JQuery;
	function data(key:DateTimePicker):BootstrapV3DatetimePicker.Datetimepicker;
};
