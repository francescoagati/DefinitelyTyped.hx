extern class Date {
	function new():Void;
	var daysInMonth : Array<Dynamic>;
	function calcGregorian(year:Dynamic, month:Dynamic, day:Dynamic):Dynamic;
	function fromGregorian(gdate:Date):haxe.Constraints.Function;
	function getDate():Dynamic;
	function getDay():Dynamic;
	@:overload(function(month:dojox.date.persian.Date):Void { })
	function getDaysInPersianMonth(month:Float, year:Float):Dynamic;
	function getFullYear():Dynamic;
	function getHours():Dynamic;
	function getMilliseconds():Dynamic;
	function getMinutes():Dynamic;
	function getMonth():Dynamic;
	function getSeconds():Dynamic;
	function gregorian_to_jd(year:Dynamic, month:Dynamic, day:Dynamic):Float;
	function isLeapYear(j_y:Dynamic, j_m:Dynamic, j_d:Dynamic):Bool;
	function jd_to_gregorian(jd:Dynamic, jmonth:Dynamic):Dynamic;
	function jd_to_persian(jd:Dynamic):Dynamic;
	function jwday(j:Dynamic):Dynamic;
	function leap_gregorian(year:Dynamic):Bool;
	function persian_to_jd(year:Dynamic, month:Dynamic, day:Dynamic):Float;
	function setDate(date:Float):haxe.Constraints.Function;
	function setFullYear(year:Float):Void;
	function setHours():Void;
	function setMilliseconds(milliseconds:Float):haxe.Constraints.Function;
	function setMinutes(minutes:Float):haxe.Constraints.Function;
	function setMonth(month:Float):Void;
	function setSeconds(seconds:Float):haxe.Constraints.Function;
	function toGregorian():Dynamic;
	function toString():String;
	function valueOf():Dynamic;
}
typedef Locale = {
	var months : Dynamic;
	var weekDays : Dynamic;
	function addCustomFormats(packageName:String, bundleName:String):Void;
	function format(dateObject:dojox.date.persian.Date, options:Dynamic):Void;
	function getNames(item:String, type:String, context:String, locale:String, date:dojox.date.persian.Date):Dynamic;
	function parse(value:String, options:Dynamic):Void;
	function regexp(options:Dynamic):Void;
};
typedef Umalqura = {
	var locale : Dynamic;
	function add(date:dojox.date.umalqura.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.umalqura.Date, date2:dojox.date.umalqura.Date, portion:String):Void;
	function difference(date1:dojox.date.umalqura.Date, date2:dojox.date.umalqura.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.umalqura.Date):Void;
};
