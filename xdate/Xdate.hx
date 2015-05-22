typedef Formatters_info = {
	@:optional
	var i : String;
	@:optional
	var u : String;
	@:optional
	var xxx : String;
	@:optional
	var vvv : XDate -> Bool -> String;
};
typedef Locale_detail = {
	@:optional
	var monthNames : Array<String>;
	@:optional
	var monthNamesShort : Array<String>;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var dayNamesShort : Array<String>;
	@:optional
	var amDesignator : String;
	@:optional
	var pmDesignator : String;
};
extern class XDate {
	@:overload(function(utcmode:Bool):Void { })
	@:overload(function(xdate:XDate, ?utcmode:Bool):Void { })
	@:overload(function(nativeDate:Date, ?utcmode:Bool):Void { })
	@:overload(function(milliseconds:Float, ?utcmode:Bool):Void { })
	@:overload(function(year:Float, month:Float, date:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?milliseconds:Float, ?utcmode:Bool):Void { })
	@:overload(function(dateString:String, ?utcmode:Bool):Void { })
	function new():Void;
	function getFullYear():Float;
	function getMonth():Float;
	function getWeek():Float;
	function getDate():Float;
	function getDay():Float;
	function getHours():Float;
	function getMinutes():Float;
	function getSeconds():Float;
	function getMilliseconds():Float;
	function getTime():Float;
	function valueOf():Float;
	function setFullYear(year:Float, ?preventOverflow:Bool):XDate;
	function setMonth(month:Float, ?preventOverflow:Bool):XDate;
	function setWeek(week:Float, ?year:Float):XDate;
	function setDate(date:Float):XDate;
	function setHours(hours:Float):XDate;
	function setMinutes(minutes:Float):XDate;
	function setSeconds(seconds:Float):XDate;
	function setMilliseconds(milliseconds:Float):XDate;
	function setTime(milliseconds:Float):XDate;
	function addYears(years:Float, ?preventOverflow:Bool):XDate;
	function addMonths(months:Float, ?preventOverflow:Bool):XDate;
	function addWeeks(weeks:Float):XDate;
	function addDays(days:Float):XDate;
	function addHours(hours:Float):XDate;
	function addMinutes(minutes:Float):XDate;
	function addSeconds(seconds:Float):XDate;
	function addMilliseconds(milliseconds:Float):XDate;
	@:overload(function(otherDate:XDate):Float { })
	function diffYears(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffMonths(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffWeeks(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffDays(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffHours(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffMinutes(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffSeconds(otherDate:String):Float;
	@:overload(function(otherDate:XDate):Float { })
	function diffMilliseconds(otherDate:String):Float;
	function toString(?formatString:String, ?settings:Dynamic):String;
	function toUTCString(?formatString:String, ?settings:Dynamic):String;
	function toGMTString(?formatString:String, ?settings:Dynamic):String;
	function toISOString():String;
	function toDateString():String;
	function toTimeString():String;
	function toLocaleString():String;
	function toLocaleDateString():String;
	function toLocaleTimeString():String;
	function getUTCFullYear():Float;
	function getUTCMonth():Float;
	function getUTCWeek():Float;
	function getUTCDate():Float;
	function getUTCDay():Float;
	function getUTCHours():Float;
	function getUTCMinutes():Float;
	function getUTCSeconds():Float;
	function getUTCMilliseconds():Float;
	function setUTCFullYear(year:Float):XDate;
	function setUTCMonth(month:Float):XDate;
	function setUTCWeek(week:Float, ?year:Float):XDate;
	function setUTCDate(date:Float):XDate;
	function setUTCHours(hours:Float):XDate;
	function setUTCMinutes(minutes:Float):XDate;
	function setUTCSeconds(seconds:Float):XDate;
	function setUTCMilliseconds(milliseconds:Float):XDate;
	function getUTCMode():Bool;
	function setUTCMode(utcMode:Bool, ?doCoercion:Bool):XDate;
	function getTimezoneOffset():Float;
	function clone():XDate;
	function clearTime():XDate;
	function valid():Bool;
	function toDate():Date;
	@:overload(function(year:Float, month:Float):Float { })
	static function getDaysInMonth(year:Float, month:Float):Float;
	static function parse(dateString:String):Float;
	static function now():Float;
	static function today():XDate;
	@:overload(function(year:Float, month:Float, day:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?ms:Float):Float { })
	static function UTC(year:Float, month:Float, date:Float, hours:Float, minutes:Float, seconds:Float, milliseconds:Float):XDate;
	static var locales : { };
	static var defaultLocale : String;
	static var formatters : Formatters_info;
}
