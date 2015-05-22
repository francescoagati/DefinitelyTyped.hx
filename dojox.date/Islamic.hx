extern class Date {
	function new():Void;
	function fromGregorian(gdate:Date):haxe.Constraints.Function;
	function getDate():Dynamic;
	function getDay():Dynamic;
	@:overload(function(month:dojox.date.islamic.Date):Void { })
	function getDaysInIslamicMonth(month:Float, year:Float):Float;
	function getFullYear():Dynamic;
	function getHours():Dynamic;
	function getMilliseconds():Dynamic;
	function getMinutes():Dynamic;
	function getMonth():Dynamic;
	function getSeconds():Dynamic;
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
	function format(dateObject:dojox.date.islamic.Date, options:Dynamic):Void;
	function getNames(item:String, type:String, context:String, locale:String, date:dojox.date.islamic.Date):Dynamic;
	function parse(value:String, options:Dynamic):Void;
	function regexp(options:Dynamic):Void;
};
typedef Persian = {
	var locale : Dynamic;
	function add(date:dojox.date.persian.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.persian.Date, date2:dojox.date.persian.Date, portion:String):Void;
	function difference(date1:dojox.date.persian.Date, date2:dojox.date.persian.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.persian.Date):Void;
};
