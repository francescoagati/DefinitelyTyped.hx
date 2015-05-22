typedef MomentInput = {
	@:optional
	var years : Float;
	@:optional
	var y : Float;
	@:optional
	var months : Float;
	@:optional
	var M : Float;
	@:optional
	var weeks : Float;
	@:optional
	var w : Float;
	@:optional
	var days : Float;
	@:optional
	var d : Float;
	@:optional
	var hours : Float;
	@:optional
	var h : Float;
	@:optional
	var minutes : Float;
	@:optional
	var m : Float;
	@:optional
	var seconds : Float;
	@:optional
	var s : Float;
	@:optional
	var milliseconds : Float;
	@:optional
	var ms : Float;
};
typedef Duration = {
	function humanize(?withSuffix:Bool):String;
	function as(units:String):Float;
	function milliseconds():Float;
	function asMilliseconds():Float;
	function seconds():Float;
	function asSeconds():Float;
	function minutes():Float;
	function asMinutes():Float;
	function hours():Float;
	function asHours():Float;
	function days():Float;
	function asDays():Float;
	function months():Float;
	function asMonths():Float;
	function years():Float;
	function asYears():Float;
	@:overload(function(n:Float):Duration { })
	@:overload(function(d:Duration):Duration { })
	function add(n:Float, p:String):Duration;
	@:overload(function(n:Float):Duration { })
	@:overload(function(d:Duration):Duration { })
	function subtract(n:Float, p:String):Duration;
	function toISOString():String;
};
typedef Moment = {
	@:overload(function():String { })
	function format(format:String):String;
	function fromNow(?withoutSuffix:Bool):String;
	function startOf(unitOfTime:String):Moment;
	function endOf(unitOfTime:String):Moment;
	@:overload(function(amount:Float, unitOfTime:String):Moment { })
	@:overload(function(amount:String, unitOfTime:String):Moment { })
	@:overload(function(objectLiteral:MomentInput):Moment { })
	@:overload(function(duration:Duration):Moment { })
	function add(unitOfTime:String, amount:Float):Moment;
	@:overload(function(amount:Float, unitOfTime:String):Moment { })
	@:overload(function(amount:String, unitOfTime:String):Moment { })
	@:overload(function(objectLiteral:MomentInput):Moment { })
	@:overload(function(duration:Duration):Moment { })
	function subtract(unitOfTime:String, amount:Float):Moment;
	@:overload(function(start:Moment):String { })
	function calendar():String;
	function clone():Moment;
	function valueOf():Float;
	function local():Moment;
	function utc():Moment;
	function isValid():Bool;
	@:overload(function():Float { })
	function year(y:Float):Moment;
	@:overload(function(q:Float):Moment { })
	function quarter():Float;
	@:overload(function(M:String):Moment { })
	@:overload(function():Float { })
	function month(M:Float):Moment;
	@:overload(function(d:String):Moment { })
	@:overload(function():Float { })
	function day(d:Float):Moment;
	@:overload(function():Float { })
	function date(d:Float):Moment;
	@:overload(function():Float { })
	function hour(h:Float):Moment;
	@:overload(function():Float { })
	function hours(h:Float):Moment;
	@:overload(function():Float { })
	function minute(m:Float):Moment;
	@:overload(function():Float { })
	function minutes(m:Float):Moment;
	@:overload(function():Float { })
	function second(s:Float):Moment;
	@:overload(function():Float { })
	function seconds(s:Float):Moment;
	@:overload(function():Float { })
	function millisecond(ms:Float):Moment;
	@:overload(function():Float { })
	function milliseconds(ms:Float):Moment;
	@:overload(function(d:Float):Moment { })
	function weekday():Float;
	@:overload(function(d:Float):Moment { })
	function isoWeekday():Float;
	@:overload(function(d:Float):Moment { })
	function weekYear():Float;
	@:overload(function(d:Float):Moment { })
	function isoWeekYear():Float;
	@:overload(function(d:Float):Moment { })
	function week():Float;
	@:overload(function(d:Float):Moment { })
	function weeks():Float;
	@:overload(function(d:Float):Moment { })
	function isoWeek():Float;
	@:overload(function(d:Float):Moment { })
	function isoWeeks():Float;
	function weeksInYear():Float;
	function isoWeeksInYear():Float;
	@:overload(function(d:Float):Moment { })
	function dayOfYear():Float;
	@:overload(function(f:Moment, suffix:Bool):String { })
	@:overload(function(d:Date):String { })
	@:overload(function(s:String):String { })
	@:overload(function(date:Array<Float>):String { })
	function from(f:Moment):String;
	@:overload(function(b:Moment, unitOfTime:String):Float { })
	@:overload(function(b:Moment, unitOfTime:String, round:Bool):Float { })
	function diff(b:Moment):Float;
	function toArray():Array<Float>;
	function toDate():Date;
	function toISOString():String;
	function toJSON():String;
	function unix():Float;
	function isLeapYear():Bool;
	@:overload(function(b:Float):Moment { })
	@:overload(function(b:String):Moment { })
	function zone():Float;
	@:overload(function(b:Float):Moment { })
	@:overload(function(b:String):Moment { })
	function utcOffset():Float;
	function daysInMonth():Float;
	function isDST():Bool;
	@:overload(function(b:Moment):Bool { })
	@:overload(function(b:String):Bool { })
	@:overload(function(b:Number):Bool { })
	@:overload(function(b:Date):Bool { })
	@:overload(function(b:Array<Float>):Bool { })
	@:overload(function(b:Moment, granularity:String):Bool { })
	@:overload(function(b:String, granularity:String):Bool { })
	@:overload(function(b:Number, granularity:String):Bool { })
	@:overload(function(b:Date, granularity:String):Bool { })
	@:overload(function(b:Array<Float>, granularity:String):Bool { })
	function isBefore():Bool;
	@:overload(function(b:Moment):Bool { })
	@:overload(function(b:String):Bool { })
	@:overload(function(b:Number):Bool { })
	@:overload(function(b:Date):Bool { })
	@:overload(function(b:Array<Float>):Bool { })
	@:overload(function(b:Moment, granularity:String):Bool { })
	@:overload(function(b:String, granularity:String):Bool { })
	@:overload(function(b:Number, granularity:String):Bool { })
	@:overload(function(b:Date, granularity:String):Bool { })
	@:overload(function(b:Array<Float>, granularity:String):Bool { })
	function isAfter():Bool;
	@:overload(function(b:String):Bool { })
	@:overload(function(b:Number):Bool { })
	@:overload(function(b:Date):Bool { })
	@:overload(function(b:Array<Float>):Bool { })
	@:overload(function(b:Moment, granularity:String):Bool { })
	@:overload(function(b:String, granularity:String):Bool { })
	@:overload(function(b:Number, granularity:String):Bool { })
	@:overload(function(b:Date, granularity:String):Bool { })
	@:overload(function(b:Array<Float>, granularity:String):Bool { })
	function isSame(b:Moment):Bool;
	@:overload(function(reset:Bool):Moment { })
	@:overload(function():MomentLanguage { })
	function lang(language:String):Moment;
	@:overload(function(reset:Bool):Moment { })
	@:overload(function():String { })
	function locale(language:String):Moment;
	@:overload(function(reset:Bool):Moment { })
	@:overload(function():MomentLanguage { })
	function localeData(language:String):Moment;
	@:overload(function(date:Float):Moment { })
	@:overload(function(date:Array<Dynamic>):Moment { })
	@:overload(function(date:String):Moment { })
	@:overload(function(date:String, format:String):Moment { })
	@:overload(function(clone:Moment):Moment { })
	function max(date:Date):Moment;
	@:overload(function(date:Float):Moment { })
	@:overload(function(date:Array<Dynamic>):Moment { })
	@:overload(function(date:String):Moment { })
	@:overload(function(date:String, format:String):Moment { })
	@:overload(function(clone:Moment):Moment { })
	function min(date:Date):Moment;
	function get(unit:String):Float;
	function set(unit:String, value:Float):Moment;
};
typedef MomentCalendar = {
	var lastDay : Dynamic;
	var sameDay : Dynamic;
	var nextDay : Dynamic;
	var lastWeek : Dynamic;
	var nextWeek : Dynamic;
	var sameElse : Dynamic;
};
typedef BaseMomentLanguage = {
	@:optional
	var months : Dynamic;
	@:optional
	var monthsShort : Dynamic;
	@:optional
	var weekdays : Dynamic;
	@:optional
	var weekdaysShort : Dynamic;
	@:optional
	var weekdaysMin : Dynamic;
	@:optional
	var relativeTime : MomentRelativeTime;
	@:optional
	var meridiem : Float -> Float -> Bool -> String;
	@:optional
	var calendar : MomentCalendar;
	@:optional
	var ordinal : Float -> String;
};
typedef MomentLanguage = {
	>BaseMomentLanguage,
	@:optional
	var longDateFormat : MomentLongDateFormat;
};
typedef MomentLanguageData = {
	>BaseMomentLanguage,
	function longDateFormat(formatType:String):String;
};
typedef MomentLongDateFormat = {
	var L : String;
	var LL : String;
	var LLL : String;
	var LLLL : String;
	var LT : String;
	@:optional
	var l : String;
	@:optional
	var ll : String;
	@:optional
	var lll : String;
	@:optional
	var llll : String;
	@:optional
	var lt : String;
};
typedef MomentRelativeTime = {
	var future : Dynamic;
	var past : Dynamic;
	var s : Dynamic;
	var m : Dynamic;
	var mm : Dynamic;
	var h : Dynamic;
	var hh : Dynamic;
	var d : Dynamic;
	var dd : Dynamic;
	var M : Dynamic;
	var MM : Dynamic;
	var y : Dynamic;
	var yy : Dynamic;
};
typedef MomentStatic = {
	var version : String;
	@:overload(function(date:Float):Moment { })
	@:overload(function(date:Array<Float>):Moment { })
	@:overload(function(date:String, ?format:String, ?strict:Bool):Moment { })
	@:overload(function(date:String, ?format:String, ?language:String, ?strict:Bool):Moment { })
	@:overload(function(date:String, formats:Array<String>, ?strict:Bool):Moment { })
	@:overload(function(date:String, formats:Array<String>, ?language:String, ?strict:Bool):Moment { })
	@:overload(function(date:Date):Moment { })
	@:overload(function(date:Moment):Moment { })
	@:overload(function(date:Dynamic):Moment { })
	function utc():Moment;
	function unix(timestamp:Float):Moment;
	function invalid(?parsingFlags:Dynamic):Moment;
	@:overload(function(m:Dynamic):Bool { })
	function isMoment():Bool;
	@:overload(function(d:Dynamic):Bool { })
	function isDuration():Bool;
	@:overload(function(?language:String, ?definition:MomentLanguage):String { })
	function lang(?language:String):String;
	@:overload(function(?language:Array<String>):String { })
	@:overload(function(?language:String, ?definition:MomentLanguage):String { })
	function locale(?language:String):String;
	function localeData(?language:String):MomentLanguageData;
	var longDateFormat : Dynamic;
	var relativeTime : Dynamic;
	var meridiem : Float -> Float -> Bool -> String;
	var calendar : Dynamic;
	var ordinal : Float -> String;
	@:overload(function(num:Number, unitOfTime:String):Duration { })
	@:overload(function(input:MomentInput):Duration { })
	@:overload(function(object:Dynamic):Duration { })
	@:overload(function():Duration { })
	function duration(milliseconds:Number):Duration;
	function parseZone(date:String):Moment;
	@:overload(function(index:Float):String { })
	@:overload(function(format:String):Array<String> { })
	@:overload(function(format:String, index:Float):String { })
	function months():Array<String>;
	@:overload(function(index:Float):String { })
	@:overload(function(format:String):Array<String> { })
	@:overload(function(format:String, index:Float):String { })
	function monthsShort():Array<String>;
	@:overload(function(index:Float):String { })
	@:overload(function(format:String):Array<String> { })
	@:overload(function(format:String, index:Float):String { })
	function weekdays():Array<String>;
	@:overload(function(index:Float):String { })
	@:overload(function(format:String):Array<String> { })
	@:overload(function(format:String, index:Float):String { })
	function weekdaysShort():Array<String>;
	@:overload(function(index:Float):String { })
	@:overload(function(format:String):Array<String> { })
	@:overload(function(format:String, index:Float):String { })
	function weekdaysMin():Array<String>;
	function min(moments:Array<Moment>):Moment;
	function max(moments:Array<Moment>):Moment;
	function normalizeUnits(unit:String):String;
	function relativeTimeThreshold(threshold:String, limit:Float):Void;
	function ISO_8601():Void;
};
extern class MomentTopLevel {
	static var moment : moment.MomentStatic;
}
extern class MomentTopLevel {
	static var moment : moment.MomentStatic;
}
