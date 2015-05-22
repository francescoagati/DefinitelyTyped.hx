typedef GlobalizePercent = {
	var pattern : Array<String>;
	var decimals : Float;
	var groupSizes : Array<Float>;
	var symbol : String;
};
typedef GlobalizeCurrency = {
	var pattern : Array<String>;
	var decimals : Float;
	var groupSizes : Array<Float>;
	var symbol : String;
};
typedef GlobalizeNumberFormat = {
	var pattern : Array<String>;
	var decimals : String;
	var groupSizes : Array<Float>;
	var NaN : String;
	var negativeInfinity : String;
	var positiveInfinity : String;
	var percent : GlobalizePercent;
	var currency : GlobalizeCurrency;
};
typedef GlobalizeEra = {
	var name : String;
	var start : Dynamic;
	var offset : Float;
};
typedef GlobalizeDays = {
	var names : Array<String>;
	var namesAbbr : Array<String>;
	var namesShort : Array<String>;
};
typedef GlobalizeMonths = {
	var names : Array<String>;
	var namesAbbr : Array<String>;
};
typedef GlobalizePatterns = {
	var d : String;
	var D : String;
	var t : String;
	var T : String;
	var f : String;
	var F : String;
	var M : String;
	var Y : String;
	var S : String;
};
typedef GlobalizeCalendar = {
	var name : String;
	var firstDay : Float;
	var days : GlobalizeDays;
	var months : GlobalizeMonths;
	var AM : Array<String>;
	var PM : Array<String>;
	var eras : Array<GlobalizeEra>;
	var twoDigitYearMax : Float;
	var patterns : GlobalizePatterns;
};
typedef GlobalizeCalendars = {
	var standard : GlobalizeCalendar;
};
typedef GlobalizeCulture = {
	var name : String;
	var englishName : String;
	var nativeName : String;
	var isRTL : Bool;
	var language : String;
	var numberFormat : GlobalizeNumberFormat;
	var calendar : GlobalizeCalendar;
	var calendars : GlobalizeCalendars;
	var messages : Dynamic;
};
typedef GlobalizeCultures = { };
typedef GlobalizeStatic = {
	var cultures : GlobalizeCultures;
	function init(cultureSelector:String):GlobalizeStatic;
	var cultureSelector : String;
	@:overload(function(cultureSelector:String):GlobalizeCulture { })
	@:overload(function(cultureSelector:Array<String>):GlobalizeCulture { })
	function culture():GlobalizeCulture;
	@:overload(function(cultureName:String, info:Dynamic):Void { })
	@:overload(function(info:Dynamic):Void { })
	function addCultureInfo(cultureName:String, baseCultureName:String, info:Dynamic):Void;
	function findClosestCulture(cultureSelector:String):GlobalizeStatic;
	@:overload(function(value:Date, format:String, ?cultureSelector:String):String { })
	function format(value:Float, format:String, ?cultureSelector:String):String;
	function localize(key:String, ?cultureSelector:String):String;
	@:overload(function(value:String, ?formats:Array<String>, ?cultureSelector:String):Date { })
	function parseDate(value:String, ?format:String, ?cultureSelector:String):Date;
	function parseInt(value:String, ?radix:Float, ?cultureSelector:String):Float;
	function parseFloat(value:String, ?radix:Float, ?cultureSelector:String):Float;
};
extern class GlobalizeTopLevel {
	static var Globalize : GlobalizeStatic;
}
