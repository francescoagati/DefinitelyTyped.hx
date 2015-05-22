extern class Date {
	function new():Void;
	function fromGregorian(gdate:Date):haxe.Constraints.Function;
	function getDate():Dynamic;
	function getDay():Dynamic;
	@:overload(function(month:dojox.date.umalqura.Date):Void { })
	function getDaysInIslamicMonth(month:Float, year:Float):Dynamic;
	function getFullYear():Dynamic;
	function getHours():Dynamic;
	function getMilliseconds():Dynamic;
	function getMinutes():Dynamic;
	function getMonth():Dynamic;
	function getSeconds():Dynamic;
	function setDate(date:Float):haxe.Constraints.Function;
	function setFullYear(year:Float):Void;
	function setHours():Void;
	function setMilliseconds(milliseconds:Float):Void;
	function setMinutes(minutes:Float):Void;
	function setMonth(month:Float):Void;
	function setSeconds(seconds:Float):Void;
	function toGregorian():Dynamic;
	function toString():String;
	function valueOf():Dynamic;
}
typedef Locale = {
	var months : Dynamic;
	var weekDays : Dynamic;
	function addCustomFormats(packageName:String, bundleName:String):Void;
	function format(dateObject:dojox.date.umalqura.Date, options:Dynamic):Void;
	function getNames(item:String, type:String, context:String, locale:String, date:dojox.date.umalqura.Date):Dynamic;
	function parse(value:String, options:Dynamic):Void;
	function regexp(options:Dynamic):Void;
};
typedef Php = {
	function DateFormat(format:String):Void;
	function format(date:Date, format:String):Void;
};
typedef Relative = {
	function format(dateObject:Date, options:Dynamic):Void;
};
typedef Posix = {
	function getIsoWeekOfYear(dateObject:Date):Void;
	function getIsoWeeksInYear(dateObject:Date):Void;
	function getStartOfWeek(dateObject:Date, firstDay:Float):Void;
	function setIsoWeekOfYear(dateObject:Date, week:Float):Void;
	function strftime(dateObject:Date, format:String, locale:String):Void;
};
