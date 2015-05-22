@:enum abstract YearFormat(Int) {
	var none = 0;
	var default = 1;
	var abbreviated = 2;
	var full = 3;
}
@:enum abstract MonthFormat(Int) {
	var none = 0;
	var default = 1;
	var abbreviated = 2;
	var full = 3;
	var numeric = 4;
}
@:enum abstract DayOfWeekFormat(Int) {
	var none = 0;
	var default = 1;
	var abbreviated = 2;
	var full = 3;
}
@:enum abstract DayFormat(Int) {
	var none = 0;
	var default = 1;
}
@:enum abstract HourFormat(Int) {
	var none = 0;
	var default = 1;
}
@:enum abstract MinuteFormat(Int) {
	var none = 0;
	var default = 1;
}
@:enum abstract SecondFormat(Int) {
	var none = 0;
	var default = 1;
}
typedef IDateTimeFormatter = {
	var calendar : String;
	var clock : String;
	var geographicRegion : String;
	var includeDay : Windows.Globalization.DateTimeFormatting.DayFormat;
	var includeDayOfWeek : Windows.Globalization.DateTimeFormatting.DayOfWeekFormat;
	var includeHour : Windows.Globalization.DateTimeFormatting.HourFormat;
	var includeMinute : Windows.Globalization.DateTimeFormatting.MinuteFormat;
	var includeMonth : Windows.Globalization.DateTimeFormatting.MonthFormat;
	var includeSecond : Windows.Globalization.DateTimeFormatting.SecondFormat;
	var includeYear : Windows.Globalization.DateTimeFormatting.YearFormat;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var patterns : Windows.Foundation.Collections.IVectorView<String>;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	var template : String;
	function format(value:Date):String;
};
typedef IDateTimeFormatterFactory = {
	function createDateTimeFormatter(formatTemplate:String):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterLanguages(formatTemplate:String, languages:Windows.Foundation.Collections.IIterable<String>):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterContext(formatTemplate:String, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String, calendar:String, clock:String):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterDate(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterTime(hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterDateTimeLanguages(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat, hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat, languages:Windows.Foundation.Collections.IIterable<String>):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	function createDateTimeFormatterDateTimeContext(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat, hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String, calendar:String, clock:String):Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
};
extern class DateTimeFormatter {
	@:overload(function(formatTemplate:String, languages:Windows.Foundation.Collections.IIterable<String>):Void { })
	@:overload(function(formatTemplate:String, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String, calendar:String, clock:String):Void { })
	@:overload(function(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat):Void { })
	@:overload(function(hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat):Void { })
	@:overload(function(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat, hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat, languages:Windows.Foundation.Collections.IIterable<String>):Void { })
	@:overload(function(yearFormat:Windows.Globalization.DateTimeFormatting.YearFormat, monthFormat:Windows.Globalization.DateTimeFormatting.MonthFormat, dayFormat:Windows.Globalization.DateTimeFormatting.DayFormat, dayOfWeekFormat:Windows.Globalization.DateTimeFormatting.DayOfWeekFormat, hourFormat:Windows.Globalization.DateTimeFormatting.HourFormat, minuteFormat:Windows.Globalization.DateTimeFormatting.MinuteFormat, secondFormat:Windows.Globalization.DateTimeFormatting.SecondFormat, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String, calendar:String, clock:String):Void { })
	function new(formatTemplate:String):Void;
	var calendar : String;
	var clock : String;
	var geographicRegion : String;
	var includeDay : Windows.Globalization.DateTimeFormatting.DayFormat;
	var includeDayOfWeek : Windows.Globalization.DateTimeFormatting.DayOfWeekFormat;
	var includeHour : Windows.Globalization.DateTimeFormatting.HourFormat;
	var includeMinute : Windows.Globalization.DateTimeFormatting.MinuteFormat;
	var includeMonth : Windows.Globalization.DateTimeFormatting.MonthFormat;
	var includeSecond : Windows.Globalization.DateTimeFormatting.SecondFormat;
	var includeYear : Windows.Globalization.DateTimeFormatting.YearFormat;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var patterns : Windows.Foundation.Collections.IVectorView<String>;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	var template : String;
	function format(value:Date):String;
	static var longDate : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	static var longTime : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	static var shortDate : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	static var shortTime : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
}
typedef IDateTimeFormatterStatics = {
	var longDate : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	var longTime : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	var shortDate : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
	var shortTime : Windows.Globalization.DateTimeFormatting.DateTimeFormatter;
};
