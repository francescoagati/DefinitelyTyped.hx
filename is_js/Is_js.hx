typedef IsStatic = {
	function arguments(value:Dynamic):Bool;
	function array(value:Dynamic):Bool;
	function boolean(value:Dynamic):Bool;
	function date(value:Dynamic):Bool;
	function error(value:Dynamic):Bool;
	function function(value:Dynamic):Bool;
	function nan(value:Dynamic):Bool;
	function null(value:Dynamic):Bool;
	function number(value:Dynamic):Bool;
	function object(value:Dynamic):Bool;
	function json(value:Dynamic):Bool;
	function regexp(value:Dynamic):Bool;
	function string(value:Dynamic):Bool;
	function char(value:Dynamic):Bool;
	function undefined(value:Dynamic):Bool;
	function sameType(value1:Dynamic, value2:Dynamic):Bool;
	function empty(value:Dynamic):Bool;
	function existy(value:Dynamic):Bool;
	function truthy(value:Dynamic):Bool;
	function falsy(value:Dynamic):Bool;
	function space(value:Dynamic):Bool;
	function url(value:Dynamic):Bool;
	function email(value:Dynamic):Bool;
	function creditCard(value:Dynamic):Bool;
	function alphaNumeric(value:Dynamic):Bool;
	function timeString(value:Dynamic):Bool;
	function dateString(value:Dynamic):Bool;
	function usZipCode(value:Dynamic):Bool;
	function caPostalCode(value:Dynamic):Bool;
	function ukPostCode(value:Dynamic):Bool;
	function nanpPhone(value:Dynamic):Bool;
	function eppPhone(value:Dynamic):Bool;
	function socialSecurityNumber(value:Dynamic):Bool;
	function affirmative(value:Dynamic):Bool;
	function hexadecimal(value:Dynamic):Bool;
	function hexColor(value:Dynamic):Bool;
	function ip(value:Dynamic):Bool;
	function ipv4(value:Dynamic):Bool;
	function ipv6(value:Dynamic):Bool;
	function include(value1:String, value2:String):Bool;
	function upperCase(value:String):Bool;
	function lowerCase(value:String):Bool;
	function startWith(value1:String, value2:String):Bool;
	function endWith(value1:String, value2:String):Bool;
	function capitalized(value:String):Bool;
	function palindrome(value:String):Bool;
	function equal(value1:Dynamic, value2:Dynamic):Bool;
	function even(value:Float):Bool;
	function odd(value:Float):Bool;
	function positive(value:Float):Bool;
	function negative(value:Float):Bool;
	function above(value:Float, min:Float):Bool;
	function under(value:Float, max:Float):Bool;
	function within(value:Float, min:Float, max:Float):Bool;
	function decimal(value:Float):Bool;
	function integer(value:Float):Bool;
	function finite(value:Float):Bool;
	function infinite(value:Float):Bool;
	function propertyCount(value:Dynamic, count:Float):Bool;
	function propertyDefined(value:Dynamic, property:String):Bool;
	function windowObject(value:Dynamic):Bool;
	function domNode(value:Dynamic):Bool;
	function inArray<T>(value:T, array:Array<T>):Bool;
	function sorted(value:Array<Dynamic>):Bool;
	function ie(?value:Float):Bool;
	function chrome():Bool;
	function firefox():Bool;
	function opera():Bool;
	function safari():Bool;
	function ios():Bool;
	function iphone():Bool;
	function ipad():Bool;
	function ipod():Bool;
	function android():Bool;
	function androidPhone():Bool;
	function androidTablet():Bool;
	function blackberry():Bool;
	function windowsPhone():Bool;
	function windowsTablet():Bool;
	function windows():Bool;
	function mac():Bool;
	function linux():Bool;
	function desktop():Bool;
	function mobile():Bool;
	function tablet():Bool;
	function online():Bool;
	function offline():Bool;
	function today(value:Date):Bool;
	function yesterday(value:Date):Bool;
	function tomorrow(value:Date):Bool;
	function past(value:Date):Bool;
	function future(value:Date):Bool;
	function day(value:Date, dayString:String):Bool;
	function month(value:Date, monthString:String):Bool;
	function year(value:Date, yearNumber:Float):Bool;
	function leapYear(value:Float):Bool;
	function weekend(value:Date):Bool;
	function weekday(value:Date):Bool;
	function inDateRange(value:Date, start:Date, end:Date):Bool;
	function inLastWeek(value:Date):Bool;
	function inLastMonth(value:Date):Bool;
	function inLastYear(value:Date):Bool;
	function inNextWeek(value:Date):Bool;
	function inNextMonth(value:Date):Bool;
	function inNextYear(value:Date):Bool;
	function quarterOfYear(value:Date, quarter:Float):Bool;
	function dayLightSavingTime(value:Date):Bool;
};
typedef IsStaticApi = {
	@:overload(function(value:Array<Dynamic>):Bool { })
	function arguments(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function array(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function boolean(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function date(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function error(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function function(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function nan(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function null(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function number(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function object(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function json(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function regexp(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function string(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function char(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function undefined(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function empty(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function existy(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function truthy(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function falsy(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function space(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function url(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function email(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function creditCard(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function alphaNumeric(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function timeString(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function dateString(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function usZipCode(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function caPostalCode(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function ukPostCode(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function nanpPhone(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function eppPhone(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function socialSecurityNumber(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function affirmative(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function hexadecimal(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function hexColor(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function ip(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function ipv4(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function ipv6(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<String>):Bool { })
	function upperCase(value:haxe.extern.Rest<String>):Bool;
	@:overload(function(value:Array<String>):Bool { })
	function lowerCase(value:haxe.extern.Rest<String>):Bool;
	@:overload(function(value:Array<String>):Bool { })
	function capitalized(value:haxe.extern.Rest<String>):Bool;
	@:overload(function(value:Array<String>):Bool { })
	function palindrome(value:haxe.extern.Rest<String>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function even(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function odd(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function positive(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function negative(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function decimal(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function integer(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function finite(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function infinite(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function windowObject(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Dynamic>):Bool { })
	function domNode(value:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(value:Array<Array<Float>>):Bool { })
	function sorted(value:haxe.extern.Rest<Array<Float>>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function today(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function yesterday(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function tomorrow(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function past(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function future(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Float>):Bool { })
	function leapYear(value:haxe.extern.Rest<Float>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function weekend(value:haxe.extern.Rest<Date>):Bool;
	@:overload(function(value:Array<Date>):Bool { })
	function weekday(value:haxe.extern.Rest<Date>):Bool;
};
typedef Is = {
	>IsStatic,
	var not : IsStatic;
	var any : IsStaticApi;
	var all : IsStaticApi;
	@:overload(function(value:js.RegExp, regexp:Email):Bool { })
	@:overload(function(value:js.RegExp, regexp:CreditCard):Bool { })
	@:overload(function(value:js.RegExp, regexp:AlphaNumeric):Bool { })
	@:overload(function(value:js.RegExp, regexp:TimeString):Bool { })
	@:overload(function(value:js.RegExp, regexp:DateString):Bool { })
	@:overload(function(value:js.RegExp, regexp:UsZipCode):Bool { })
	@:overload(function(value:js.RegExp, regexp:CaPostalCode):Bool { })
	@:overload(function(value:js.RegExp, regexp:NanpPhone):Bool { })
	@:overload(function(value:js.RegExp, regexp:EppPhone):Bool { })
	@:overload(function(value:js.RegExp, regexp:Affirmative):Bool { })
	@:overload(function(value:js.RegExp, regexp:Hexadecimal):Bool { })
	@:overload(function(value:js.RegExp, regexp:HexColor):Bool { })
	@:overload(function(value:js.RegExp, regexp:Ip):Bool { })
	@:overload(function(value:js.RegExp, regexp:Ipv6):Bool { })
	@:overload(function(value:js.RegExp, regexp:String):Bool { })
	function setRegexp(value:js.RegExp, regexp:Url):Bool;
	function setNamespace():Is;
};
extern class Is_jsTopLevel {
	static var is : Is;
}
