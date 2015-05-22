typedef GlDatePickerOffset = {
	var x : Float;
	var y : Float;
};
typedef GlDatePickerDate = {
	var date : Date;
	@:optional
	var repeatMonth : Bool;
	@:optional
	var repeatYear : Bool;
};
typedef GlDatePickerDateRange = {
	var from : Date;
	@:optional
	var to : Date;
	@:optional
	var repeatYear : Bool;
};
typedef GlDatePickerSpecialDate = {
	>GlDatePickerDate,
	@:optional
	var data : Dynamic;
	@:optional
	var cssClass : String;
};
typedef GlDatePickerOptions = {
	@:optional
	var cssName : String;
	@:optional
	var zIndex : Float;
	@:optional
	var borderSize : Float;
	@:optional
	var calendarOffset : GlDatePickerOffset;
	@:optional
	var showAlways : Bool;
	@:optional
	var hideOnClick : Bool;
	@:optional
	var allowMonthSelect : Bool;
	@:optional
	var allowYearSelect : Bool;
	@:optional
	var todayDate : Date;
	@:optional
	var selectedDate : Date;
	@:optional
	var prevArrow : String;
	@:optional
	var nextArrow : String;
	@:optional
	var selectableDates : Array<GlDatePickerDate>;
	@:optional
	var selectableDateRange : Array<GlDatePickerDateRange>;
	@:optional
	var specialDates : Array<GlDatePickerSpecialDate>;
	@:optional
	var selectableMonths : Array<Float>;
	@:optional
	var selectableYears : Array<Float>;
	@:optional
	var selectableDOW : Array<Float>;
	@:optional
	var monthNames : Array<String>;
	@:optional
	var dowNames : Array<String>;
	@:optional
	var dowOffset : Float;
	@:optional
	var onClick : JQuery -> JQuery -> Date -> Dynamic -> Void;
	@:optional
	var onHover : JQuery -> JQuery -> Date -> Dynamic -> Void;
	@:optional
	var onShow : JQuery -> Void;
	@:optional
	var onHide : JQuery -> Void;
};
typedef GlDatePicker = {
	var options : GlDatePickerOptions;
	function show():Void;
	function hide():Void;
	function render(?renderCallback:Void -> Void):Void;
};
typedef JQuery = {
	@:overload(function(?options:GlDatePickerOptions):JQuery { })
	function glDatePicker(ret:Bool):GlDatePicker;
};
