extern class Duration {
	@:overload(function():Float { })
	static function years(n:Float):Duration;
	@:overload(function():Float { })
	static function months(n:Float):Duration;
	@:overload(function():Float { })
	static function days(n:Float):Duration;
	@:overload(function():Float { })
	static function hours(n:Float):Duration;
	@:overload(function():Float { })
	static function minutes(n:Float):Duration;
	@:overload(function():Float { })
	static function seconds(n:Float):Duration;
	@:overload(function():Float { })
	static function milliseconds(n:Float):Duration;
	@:overload(function(input:String):Void { })
	@:overload(function(amount:Float, ?unit:TimeUnit):Void { })
	function new():Void;
	function clone():Duration;
	function as(unit:TimeUnit):Float;
	function convert(unit:TimeUnit):Duration;
	function millisecond():Float;
	function second():Float;
	function minute():Float;
	function hour():Float;
	function wholeHours():Float;
	function day():Float;
	function month():Float;
	function wholeYears():Float;
	function amount():Float;
	function unit():TimeUnit;
	function sign():String;
	function lessThan(other:Duration):Bool;
	function lessEqual(other:Duration):Bool;
	function equals(other:Duration):Bool;
	function equalsExact(other:Duration):Bool;
	function identical(other:Duration):Bool;
	function greaterThan(other:Duration):Bool;
	function greaterEqual(other:Duration):Bool;
	function min(other:Duration):Duration;
	function max(other:Duration):Duration;
	function multiply(value:Float):Duration;
	function divide(value:Float):Duration;
	function add(value:Duration):Duration;
	function sub(value:Duration):Duration;
	function abs():Duration;
	function toFullString():String;
	function toHmsString(?full:Bool):String;
	function toIsoString():String;
	function toString():String;
	function inspect():String;
	function valueOf():Dynamic;
}
extern class __timezonecomplete_durationTopLevel {
	static function years(n:Float):Duration;
	static function months(n:Float):Duration;
	static function days(n:Float):Duration;
	static function hours(n:Float):Duration;
	static function minutes(n:Float):Duration;
	static function seconds(n:Float):Duration;
	static function milliseconds(n:Float):Duration;
}
