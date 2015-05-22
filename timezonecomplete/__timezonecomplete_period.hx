@:enum abstract PeriodDst(Int) {
	var RegularIntervals = 0;
	var RegularLocalTime = 1;
	var MAX = 2;
}
extern class Period {
	@:overload(function(start:DateTime, amount:Float, unit:TimeUnit, ?dst:PeriodDst):Void { })
	function new(start:DateTime, interval:Duration, ?dst:PeriodDst):Void;
	function start():DateTime;
	function interval():Duration;
	function amount():Float;
	function unit():TimeUnit;
	function dst():PeriodDst;
	function findFirst(fromDate:DateTime):DateTime;
	function findNext(prev:DateTime, ?count:Float):DateTime;
	function isBoundary(occurrence:DateTime):Bool;
	function equals(other:Period):Bool;
	function identical(other:Period):Bool;
	function toIsoString():String;
	function toString():String;
	function inspect():String;
}
extern class __timezonecomplete_periodTopLevel {
	static function periodDstToString(p:PeriodDst):String;
}
