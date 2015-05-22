typedef Date = {
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
	function setTime(time:Float):Void;
	function setMilliseconds(ms:Float):Void;
	function setUTCMilliseconds(ms:Float):Void;
	function setSeconds(sec:Float, ?ms:Float):Void;
	function setUTCSeconds(sec:Float, ?ms:Float):Void;
	function setMinutes(min:Float, ?sec:Float, ?ms:Float):Void;
	function setUTCMinutes(min:Float, ?sec:Float, ?ms:Float):Void;
	function setHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Void;
	function setUTCHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Void;
	function setDate(date:Float):Void;
	function setUTCDate(date:Float):Void;
	function setMonth(month:Float, ?date:Float):Void;
	function setUTCMonth(month:Float, ?date:Float):Void;
	function setFullYear(year:Float, ?month:Float, ?date:Float):Void;
	function setUTCFullYear(year:Float, ?month:Float, ?date:Float):Void;
	function toUTCString():String;
	function toISOString():String;
	function toJSON(?key:Dynamic):String;
	function format(?mask:String, ?utc:Bool):String;
};
typedef DateFormatMasks = {
	var default : String;
	var shortDate : String;
	var mediumDate : String;
	var longDate : String;
	var fullDate : String;
	var shortTime : String;
	var mediumTime : String;
	var longTime : String;
	var isoDate : String;
	var isoTime : String;
	var isoDateTime : String;
	var isoUtcDateTime : String;
};
typedef DateFormatI18n = {
	var dayNames : Array<String>;
	var monthNames : Array<String>;
};
extern class Date.formatTopLevel {
	static var Date : { @:overload(function(value:Float):Date { })
	@:overload(function(value:String):Date { })
	@:overload(function(year:Float, month:Float, ?date:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?ms:Float):Date { })
	function new():Date; var prototype : Date; function parse(s:String):Float; function UTC(year:Float, month:Float, ?date:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?ms:Float):Float; function now():Float; };
	static var dateFormat : { var masks : DateFormatMasks; var i18n : DateFormatI18n; };
}
