@:enum abstract WeekDay(Int) {
	var Sunday = 0;
	var Monday = 1;
	var Tuesday = 2;
	var Wednesday = 3;
	var Thursday = 4;
	var Friday = 5;
	var Saturday = 6;
}
@:enum abstract TimeUnit(Int) {
	var Millisecond = 0;
	var Second = 1;
	var Minute = 2;
	var Hour = 3;
	var Day = 4;
	var Week = 5;
	var Month = 6;
	var Year = 7;
	var MAX = 8;
}
extern class TimeStruct {
	var year : Float;
	var month : Float;
	var day : Float;
	var hour : Float;
	var minute : Float;
	var second : Float;
	var milli : Float;
	static function fromUnix(unixMillis:Float):TimeStruct;
	static function fromDate(d:Date, df:DateFunctions):TimeStruct;
	static function fromString(s:String):TimeStruct;
	function new(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?milli:Float):Void;
	function validate():Bool;
	function yearDay():Float;
	function toUnixNoLeapSecs():Float;
	function equals(other:TimeStruct):Bool;
	function lessThan(other:TimeStruct):Bool;
	function clone():TimeStruct;
	function valueOf():Float;
	function toString():String;
	function inspect():String;
}
extern class __timezonecomplete_basicsTopLevel {
	static function timeUnitToMilliseconds(unit:TimeUnit):Float;
	static function timeUnitToString(unit:TimeUnit, ?amount:Float):String;
	static function stringToTimeUnit(s:String):TimeUnit;
	static function isLeapYear(year:Float):Bool;
	static function daysInYear(year:Float):Float;
	static function daysInMonth(year:Float, month:Float):Float;
	static function dayOfYear(year:Float, month:Float, day:Float):Float;
	static function lastWeekDayOfMonth(year:Float, month:Float, weekDay:WeekDay):Float;
	static function firstWeekDayOfMonth(year:Float, month:Float, weekDay:WeekDay):Float;
	static function weekDayOnOrAfter(year:Float, month:Float, day:Float, weekDay:WeekDay):Float;
	static function weekDayOnOrBefore(year:Float, month:Float, day:Float, weekDay:WeekDay):Float;
	static function weekOfMonth(year:Float, month:Float, day:Float):Float;
	static function weekNumber(year:Float, month:Float, day:Float):Float;
	static function unixToTimeNoLeapSecs(unixMillis:Float):TimeStruct;
	static function timeToUnixNoLeapSecs(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?milli:Float):Float;
	static function timeToUnixNoLeapSecs(tm:TimeStruct):Float;
	static function weekDayNoLeapSecs(unixMillis:Float):WeekDay;
	static function secondOfDay(hour:Float, minute:Float, second:Float):Float;
}
