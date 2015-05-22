typedef Moment = {
	@:overload(function(date:Date, allDay:Bool):Twix { })
	@:overload(function(date:Date, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Date, format:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Moment):Twix { })
	@:overload(function(date:Moment, allDay:Bool):Twix { })
	@:overload(function(date:Moment, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Moment, format:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:MomentInput):Twix { })
	@:overload(function(date:MomentInput, allDay:Bool):Twix { })
	@:overload(function(date:MomentInput, options:TwixFormatOptions):Twix { })
	@:overload(function(date:MomentInput, format:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Float):Twix { })
	@:overload(function(date:Float, allDay:Bool):Twix { })
	@:overload(function(date:Float, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Float, format:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Array<Float>):Twix { })
	@:overload(function(date:Array<Float>, allDay:Bool):Twix { })
	@:overload(function(date:Array<Float>, options:TwixFormatOptions):Twix { })
	@:overload(function(date:Array<Float>, format:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:String):Twix { })
	@:overload(function(date:String, allDay:Bool):Twix { })
	@:overload(function(date:String, options:TwixFormatOptions):Twix { })
	@:overload(function(date:String, format:String, options:TwixFormatOptions):Twix { })
	function twix(date:Date):Twix;
};
typedef MomentStatic = {
	function twix(start:Moment, end:Moment):Twix;
	var twixClass : TwixStatic;
};
typedef TwixFormatOptions = {
	@:optional
	var groupMeridiems : Bool;
	@:optional
	var spaceBeforeMeridiem : Bool;
	@:optional
	var showDate : Bool;
	@:optional
	var showDayOfWeek : Bool;
	@:optional
	var twentyFourHour : Bool;
	@:optional
	var implicitMinutes : Bool;
	@:optional
	var implicitYear : Bool;
	@:optional
	var yearFormat : String;
	@:optional
	var monthFormat : String;
	@:optional
	var weekdayFormat : String;
	@:optional
	var dayFormat : String;
	@:optional
	var meridiemFormat : String;
	@:optional
	var hourFormat : String;
	@:optional
	var minuteFormat : String;
	@:optional
	var allDay : Dynamic;
	@:optional
	var explicitAllDay : Bool;
	@:optional
	var lastNightEndsAt : Float;
};
typedef TwixSimpleFormatOptions = {
	@:optional
	var allDay : String;
	@:optional
	var template : Dynamic -> Dynamic -> Dynamic;
};
typedef TwixIter = {
	function hasNext():Bool;
	function next():Twix;
};
typedef Duration = {
	function afterMoment(date:String):String;
	function beforeMoment(date:String):String;
};
typedef Twix = {
	function isPast():Bool;
	function isFuture():Bool;
	function isCurrent():Bool;
	function isSame(period:String):Bool;
	@:overload(function(date:Date):Bool { })
	@:overload(function(date:Moment):Bool { })
	function contains(date:String):Bool;
	function length(period:String):Float;
	function count(period:String):Float;
	function countInner(period:String):Float;
	@:overload(function(num:Float, period:String):TwixIter { })
	@:overload(function(duration:Duration):TwixIter { })
	function iterate(period:String):TwixIter;
	@:overload(function(num:Float, period:String):TwixIter { })
	function iterateInner(period:String):TwixIter;
	function overlaps(other:Twix):Bool;
	function engulfs(other:Twix):Bool;
	function equals(other:Twix):Bool;
	function union(other:Twix):String;
	function intersection(other:Twix):String;
	function xor(other:Twix):Array<Twix>;
	function difference(other:Twix):Array<Twix>;
	@:overload(function(other:Moment):Array<Twix> { })
	@:overload(function(start:Moment, end:Moment):Array<Twix> { })
	@:overload(function(duration:Duration):Array<Twix> { })
	function split(num:Float, period:String):Array<Twix>;
	function humanizeLength():String;
	@:overload(function(format:String):String { })
	@:overload(function(format:String, options:TwixSimpleFormatOptions):String { })
	function simpleFormat():String;
	@:overload(function(options:TwixFormatOptions):String { })
	function format():String;
	function asDuration(period:String):Duration;
	function isValid():Bool;
};
typedef TwixStatic = {
	@:optional
	var formatTemplate : Dynamic -> Dynamic -> Dynamic;
};
