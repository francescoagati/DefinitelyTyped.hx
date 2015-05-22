extern class Date {
	function new():Void;
	function fromGregorian(gdate:Date):haxe.Constraints.Function;
	function getDate():Dynamic;
	function getDateLocalized(locale:String):Dynamic;
	function getDay():Float;
	function getDaysInHebrewMonth(month:Float, year:Float):Dynamic;
	function getFullYear():Dynamic;
	function getHours():Dynamic;
	function getMilliseconds():Dynamic;
	function getMinutes():Dynamic;
	function getMonth():Dynamic;
	function getSeconds():Dynamic;
	function isLeapYear(year:Float):Bool;
	function setDate(date:Float):haxe.Constraints.Function;
	function setFullYear(year:Float, month:Float, date:Float):haxe.Constraints.Function;
	function setHours():haxe.Constraints.Function;
	function setMilliseconds(milliseconds:Float):haxe.Constraints.Function;
	function setMinutes(minutes:Float):haxe.Constraints.Function;
	function setMonth(month:Float):haxe.Constraints.Function;
	function setSeconds(seconds:Float):haxe.Constraints.Function;
	function toGregorian():Dynamic;
	function toString():String;
	function valueOf():Void;
}
typedef Locale = {
	function addCustomFormats(packageName:String, bundleName:String):Void;
	function format(dateObject:dojox.date.Hebrew, options:Dynamic):Void;
	function getNames(item:String, type:String, context:String, locale:String, date:dojox.date.hebrew.Date):Void;
	function parse(value:String, options:Dynamic):Void;
	function regexp(options:Dynamic):Void;
};
typedef Numerals = {
	function getDayHebrewLetters(day:Dynamic, nogrsh:Bool):Void;
	function getMonthHebrewLetters(month:Float):Void;
	function getYearHebrewLetters(year:Float):Void;
	function parseDayHebrewLetters(day:String):Void;
	function parseMonthHebrewLetters(monthStr:String):Void;
	function parseYearHebrewLetters(year:String):Void;
};
typedef Islamic = {
	var locale : Dynamic;
	function add(date:dojox.date.islamic.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.islamic.Date, date2:dojox.date.islamic.Date, portion:String):Void;
	function difference(date1:dojox.date.islamic.Date, date2:dojox.date.islamic.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.islamic.Date):Void;
};
