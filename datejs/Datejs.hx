typedef IDateJSLiteral = {
	var milliseconds : Float;
	var seconds : Float;
	var minutes : Float;
	var hours : Float;
	var days : Float;
	var months : Float;
	var years : Float;
};
typedef DateConstructor = {
	function today():Date;
	function compare(date1:Date, date2:Date):Float;
	function equals(date1:Date, ?date2:Date):Bool;
	function getDayNumberFromName(dayName:String):Float;
	function getMonthNumberFromName(monthName:String):Float;
	function isLeapYear(year:Float):Bool;
	function getDaysInMonth(year:Float, month:Float):Float;
	function getTimezoneAbbreviation(timezoneOffset:Float, isDayLightSavingsTime:Bool):String;
	function getTimezoneOffset(?timezoneAbbreviation:String, ?isDayLightSavingsTime:Bool):Float;
	function parse(dateString:String):Date;
	@:overload(function(dateString:String, formatArray:Array<String>):Date { })
	function parseExact(dateString:String, formatString:String):Date;
	function validateDay(day:Float, fullYear:Float, monthNumber:Float):Bool;
	function validateHour(hour:Float):Bool;
	function validateMillisecond(milliseconds:Float):Bool;
	function validateMinute(minutes:Float):Bool;
	function validateMonth(month:Float):Bool;
	function validateSecond(second:Float):Bool;
	function validateYear(year:Float):Bool;
};
typedef Date = {
	function add(?config:IDateJSLiteral):Date;
	function addMilliseconds(milliseconds:Float):Date;
	function addSeconds(seconds:Float):Date;
	function addMinutes(minutes:Float):Date;
	function addHours(hours:Float):Date;
	function addDays(days:Float):Date;
	function addWeeks(weeks:Float):Date;
	function addMonths(months:Float):Date;
	function addYears(years:Float):Date;
	function clearTime():Date;
	function setTimeToNow():Date;
	function clone():Date;
	function between(startDate:Date, endDate:Date):Bool;
	function compareTo(date:Date):Float;
	function equals(date:Date):Bool;
	function isAfter(date:Date):Bool;
	function isBefore(date:Date):Bool;
	function isToday(date:Date):Bool;
	function getElapsed(date:Date):Float;
	function getOrdinalNumber():Float;
	function getTimezone():String;
	function getUTCOffset():String;
	function getWeek():Float;
	function getISOWeek():String;
	function setWeek(week:Float):Date;
	function hasDaylightSavingTime():Bool;
	function isDaylightSavingTime():Bool;
	function moveToDayOfWeek(dayOfWeek:Float, direction:Float):Date;
	function moveToFirstDayOfMonth():Date;
	function moveToLastDayOfMonth():Date;
	function moveToMonth(month:Float, direction:Float):Date;
	function moveToNthOccurrence(dayOfWeek:Float, occurrence:Float):Date;
	function set(config:IDateJSLiteral):Date;
	function setTimezone(timezoneAbbreviation:String):Date;
	function setTimezoneOffset(timezoneOffset:Float):Date;
	function toISOString():String;
	function toString(?format:String):String;
};
typedef IDateJS = {
	>Date,
};
typedef IDateJSStatic = {
	>DateConstructor,
};
