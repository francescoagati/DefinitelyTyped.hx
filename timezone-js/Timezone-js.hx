extern class Date {
	@:overload(function(date:Dynamic, ?timezone:String):Void { })
	@:overload(function(utcMillis:Float, ?timezone:String):Void { })
	@:overload(function(time:String, ?timezone:String):Void { })
	@:overload(function(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float, ?timezone:String):Void { })
	function new(?timezone:String):Void;
	var setTimezone : String -> Void;
	function toString():String;
	function toDateString():String;
	function toTimeString():String;
	function toLocaleString():String;
	function toLocaleDateString():String;
	function toLocaleTimeString():String;
	function valueOf():Float;
	function getTime():Float;
	function getFullYear():Float;
	function getUTCFullYear():Float;
	function getMonth():Float;
	function getUTCMonth():Float;
	function getDate():Float;
	function getUTCDate():Float;
	function getDay():Float;
	function getUTCDay():Float;
	function getHours():Float;
	function getUTCHours():Float;
	function getMinutes():Float;
	function getUTCMinutes():Float;
	function getSeconds():Float;
	function getUTCSeconds():Float;
	function getMilliseconds():Float;
	function getUTCMilliseconds():Float;
	function getTimezoneOffset():Float;
	function setTime(time:Float):Float;
	function setMilliseconds(ms:Float):Float;
	function setUTCMilliseconds(ms:Float):Float;
	function setSeconds(sec:Float, ?ms:Float):Float;
	function setUTCSeconds(sec:Float, ?ms:Float):Float;
	function setMinutes(min:Float, ?sec:Float, ?ms:Float):Float;
	function setUTCMinutes(min:Float, ?sec:Float, ?ms:Float):Float;
	function setHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Float;
	function setUTCHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Float;
	function setDate(date:Float):Float;
	function setUTCDate(date:Float):Float;
	function setMonth(month:Float, ?date:Float):Float;
	function setUTCMonth(month:Float, ?date:Float):Float;
	function setFullYear(year:Float, ?month:Float, ?date:Float):Float;
	function setUTCFullYear(year:Float, ?month:Float, ?date:Float):Float;
	function toUTCString():String;
	function toISOString():String;
	function toJSON(?key:Dynamic):String;
}
typedef TimezoneJs = {
	var zoneFileBasePath : String;
	var loadingScheme : Float;
	var loadingSchemes : TimezoneJsLoadingSchemes;
	function transport(opts:TimezoneJsOptions):Dynamic;
	function init(?opts:TimezoneJsOptions):Dynamic;
	function getAllZones():Array<String>;
	function loadZoneDataFromObject(obj:Dynamic):Void;
};
typedef TimezoneJsOptions = {
	@:optional
	var async : Bool;
	@:optional
	var success : String -> Void;
	@:optional
	var error : Error -> Void;
	@:optional
	var url : String;
};
extern class TimezoneJsLoadingSchemes {
	var PRELOAD_ALL : Float;
	var LAZY_LOAD : Float;
	var MANUAL_LOAD : Float;
}
extern class Timezone-jsTopLevel {
	static var timezone : TimezoneJs;
}
extern class Timezone-jsTopLevel {
	static var timezone : TimezoneJs;
}
