typedef DatepickerOptions = {
	@:optional
	var format : String;
	@:optional
	var weekStart : Float;
	@:optional
	var startDate : Dynamic;
	@:optional
	var endDate : Dynamic;
	@:optional
	var autoclose : Bool;
	@:optional
	var startView : Float;
	@:optional
	var todayBtn : Dynamic;
	@:optional
	var todayHighlight : Bool;
	@:optional
	var keyboardNavigation : Bool;
	@:optional
	var language : String;
	@:optional
	var beforeShowDay : Dynamic -> Dynamic;
	@:optional
	var calendarWeeks : Bool;
	@:optional
	var clearBtn : Bool;
	@:optional
	var daysOfWeekDisabled : Array<Float>;
	@:optional
	var forceParse : Bool;
	@:optional
	var inputs : Array<Dynamic>;
	@:optional
	var minViewMode : Dynamic;
	@:optional
	var multidate : Dynamic;
	@:optional
	var multidateSeparator : String;
	@:optional
	var orientation : String;
};
typedef DatepickerEventObject = {
	>JQueryEventObject,
	var date : Date;
	function format(?format:String):String;
};
typedef JQuery = {
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(methodName:String, params:Dynamic):JQuery { })
	@:overload(function(options:DatepickerOptions):JQuery { })
	function datepicker():JQuery;
	@:overload(function(events:ChangeDate, handler:DatepickerEventObject -> Dynamic):JQuery { })
	function off(events:ChangeDate, ?selector:String, ?handler:DatepickerEventObject -> Dynamic):JQuery;
	@:overload(function(events:ChangeDate, selector:String, handler:DatepickerEventObject -> Dynamic):JQuery { })
	@:overload(function(events:ChangeDate, handler:DatepickerEventObject -> Dynamic):JQuery { })
	function on(events:ChangeDate, selector:String, data:Dynamic, ?handler:DatepickerEventObject -> Dynamic):JQuery;
};
