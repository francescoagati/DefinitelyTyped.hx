extern class Date {
	function new():Void;
	function fromGregorian(gdate:Date):haxe.Constraints.Function;
	function getDate(isNumber:Bool):Dynamic;
	function getDay():Dynamic;
	function getFullYear():Dynamic;
	function getHours():Dynamic;
	function getMilliseconds():Dynamic;
	function getMinutes():Dynamic;
	function getMonth():Dynamic;
	function getSeconds():Dynamic;
	function setDate(date:Float):haxe.Constraints.Function;
	function setFullYear(year:Float, month:Float, date:Float):Void;
	function setHours():Void;
	function setMilliseconds(milliseconds:Float):haxe.Constraints.Function;
	function setMinutes(minutes:Float):haxe.Constraints.Function;
	function setMonth(month:Float):Void;
	function setSeconds(seconds:Float):haxe.Constraints.Function;
	function toGregorian():Dynamic;
	function toString():String;
	function valueOf():Void;
}
typedef Locale = {
	function addCustomFormats(packageName:String, bundleName:String):Void;
	function format(dateObject:dojox.date.buddhist.Date, options:Dynamic):Void;
	function getNames(item:String, type:String, context:String, locale:String, date:dojox.date.buddhist.Date):Void;
	function parse(value:String, options:Dynamic):Void;
	function regexp(options:Dynamic):Void;
};
typedef Hebrew = {
	var locale : Dynamic;
	var numerals : Dynamic;
	function add(date:dojox.date.hebrew.Date, interval:String, amount:Float):Void;
	function compare(dateheb1:dojox.date.hebrew.Date, dateheb2:dojox.date.hebrew.Date, portion:String):Void;
	function difference(date1:dojox.date.hebrew.Date, date2:dojox.date.hebrew.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.hebrew.Date):Void;
};
