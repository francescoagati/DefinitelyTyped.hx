extern class DateTime {
	static var timeSource : TimeSource;
	static function nowLocal():DateTime;
	static function nowUtc():DateTime;
	static function now(?timeZone:TimeZone):DateTime;
	static function fromExcel(n:Float, ?timeZone:TimeZone):DateTime;
	@:overload(function(isoString:String, ?timeZone:TimeZone):Void { })
	@:overload(function(date:Date, getFuncs:DateFunctions, ?timeZone:TimeZone):Void { })
	@:overload(function(year:Float, month:Float, day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float, ?timeZone:TimeZone):Void { })
	@:overload(function(unixTimestamp:Float, ?timeZone:TimeZone):Void { })
	function new():Void;
	function clone():DateTime;
	function zone():TimeZone;
	function zoneAbbreviation(?dstDependent:Bool):String;
	function offset():Float;
	function year():Float;
	function month():Float;
	function day():Float;
	function hour():Float;
	function minute():Float;
	function second():Float;
	function millisecond():Float;
	function weekDay():WeekDay;
	function dayOfYear():Float;
	function weekNumber():Float;
	function weekOfMonth():Float;
	function secondOfDay():Float;
	function unixUtcMillis():Float;
	function utcYear():Float;
	function utcMonth():Float;
	function utcDay():Float;
	function utcHour():Float;
	function utcMinute():Float;
	function utcSecond():Float;
	function utcDayOfYear():Float;
	function utcMillisecond():Float;
	function utcWeekDay():WeekDay;
	function utcWeekNumber():Float;
	function utcWeekOfMonth():Float;
	function utcSecondOfDay():Float;
	function convert(?zone:TimeZone):DateTime;
	function toZone(?zone:TimeZone):DateTime;
	function toDate():Date;
	@:overload(function(amount:Float, unit:TimeUnit):DateTime { })
	function add(duration:Duration):DateTime;
	@:overload(function(amount:Float, unit:TimeUnit):DateTime { })
	function addLocal(duration:Duration):DateTime;
	@:overload(function(amount:Float, unit:TimeUnit):DateTime { })
	function sub(duration:Duration):DateTime;
	@:overload(function(amount:Float, unit:TimeUnit):DateTime { })
	function subLocal(duration:Duration):DateTime;
	function diff(other:DateTime):Duration;
	function startOfDay():DateTime;
	function lessThan(other:DateTime):Bool;
	function lessEqual(other:DateTime):Bool;
	function equals(other:DateTime):Bool;
	function identical(other:DateTime):Bool;
	function greaterThan(other:DateTime):Bool;
	function greaterEqual(other:DateTime):Bool;
	function min(other:DateTime):DateTime;
	function max(other:DateTime):DateTime;
	function toIsoString():String;
	function format(formatString:String):String;
	function toString():String;
	function inspect():String;
	function valueOf():Dynamic;
	function toUtcString():String;
}
extern class __timezonecomplete_datetimeTopLevel {
	static function nowLocal():DateTime;
	static function nowUtc():DateTime;
	static function now(?timeZone:TimeZone):DateTime;
}
