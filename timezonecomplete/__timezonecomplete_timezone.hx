@:enum abstract TimeZoneKind(Int) {
	var Local = 0;
	var Offset = 1;
	var Proper = 2;
}
@:enum abstract NormalizeOption(Int) {
	var Up = 0;
	var Down = 1;
}
extern class TimeZone {
	static function local():TimeZone;
	static function utc():TimeZone;
	@:overload(function(s:String, ?dst:Bool):TimeZone { })
	static function zone(offset:Float):TimeZone;
	function new(name:String, ?dst:Bool):Void;
	function name():String;
	function dst():Bool;
	function kind():TimeZoneKind;
	function equals(other:TimeZone):Bool;
	function identical(other:TimeZone):Bool;
	function isUtc():Bool;
	function hasDst():Bool;
	function offsetForUtc(year:Float, month:Float, day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Float;
	function offsetForZone(year:Float, month:Float, day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Float;
	function offsetForUtcDate(date:Date, funcs:DateFunctions):Float;
	function offsetForZoneDate(date:Date, funcs:DateFunctions):Float;
	function abbreviationForUtc(year:Float, month:Float, day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float, ?dstDependent:Bool):String;
	function normalizeZoneTime(localUnixMillis:Float, ?opt:NormalizeOption):Float;
	function toString():String;
	function inspect():String;
	static function offsetToString(offset:Float):String;
	static function stringToOffset(s:String):Float;
}
extern class __timezonecomplete_timezoneTopLevel {
	static function local():TimeZone;
	static function utc():TimeZone;
	static function zone(offset:Float):TimeZone;
	static function zone(name:String, ?dst:Bool):TimeZone;
}
