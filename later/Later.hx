typedef IScheduleData = {
	var schedules : Array<IRecurrence>;
	var exceptions : Array<IRecurrence>;
	var error : Float;
};
typedef IRecurrence = {
	@:optional
	var t : Array<Float>;
	@:optional
	var s : Array<Float>;
	@:optional
	var m : Array<Float>;
	@:optional
	var h : Array<Float>;
	@:optional
	var D : Array<Float>;
	@:optional
	var dw : Array<Float>;
	@:optional
	var dc : Array<Float>;
	@:optional
	var dy : Array<Float>;
	@:optional
	var wm : Array<Float>;
	@:optional
	var wy : Array<Float>;
	@:optional
	var M : Array<Float>;
	@:optional
	var Y : Array<Float>;
	@:optional
	var t_a : Array<Float>;
	@:optional
	var s_a : Array<Float>;
	@:optional
	var m_a : Array<Float>;
	@:optional
	var h_a : Array<Float>;
	@:optional
	var D_a : Array<Float>;
	@:optional
	var dw_a : Array<Float>;
	@:optional
	var dc_a : Array<Float>;
	@:optional
	var dy_a : Array<Float>;
	@:optional
	var wm_a : Array<Float>;
	@:optional
	var wy_a : Array<Float>;
	@:optional
	var M_a : Array<Float>;
	@:optional
	var Y_a : Array<Float>;
	@:optional
	var t_b : Array<Float>;
	@:optional
	var s_b : Array<Float>;
	@:optional
	var m_b : Array<Float>;
	@:optional
	var h_b : Array<Float>;
	@:optional
	var D_b : Array<Float>;
	@:optional
	var dw_b : Array<Float>;
	@:optional
	var dc_b : Array<Float>;
	@:optional
	var dy_b : Array<Float>;
	@:optional
	var wm_b : Array<Float>;
	@:optional
	var wy_b : Array<Float>;
	@:optional
	var M_b : Array<Float>;
	@:optional
	var Y_b : Array<Float>;
};
typedef IParseStatic = {
	function recur():IRecurrenceBuilder;
	function cron(?input:String):IScheduleData;
	function text(?input:String):IScheduleData;
};
typedef ITimer = {
	function clear():Void;
};
typedef ISchedule = {
	function next(numberOfInst:Float, ?dateFrom:Date, ?dateTo:Date):Array<Date>;
	function nextRange(numberOfInst:Float, ?dateFrom:Date, ?dateTo:Date):Array<Date>;
	function prev(numberOfInst:Float, ?dateFrom:Date, ?dateTo:Date):Array<Date>;
	function prevRange(numberOfInst:Float, ?dateFrom:Date, ?dateTo:Date):Array<Date>;
};
typedef IRecurrenceBuilder = {
	>IScheduleData,
	function second():IRecurrenceBuilder;
	function minute():IRecurrenceBuilder;
	function hour():IRecurrenceBuilder;
	function time():IRecurrenceBuilder;
	function dayOfWeek():IRecurrenceBuilder;
	function dayOfWeekCount():IRecurrenceBuilder;
	function dayOfMonth():IRecurrenceBuilder;
	function dayOfYear():IRecurrenceBuilder;
	function weekOfMonth():IRecurrenceBuilder;
	function weekOfYear():IRecurrenceBuilder;
	function month():IRecurrenceBuilder;
	function year():IRecurrenceBuilder;
	function fullDate():IRecurrenceBuilder;
	@:overload(function(value:String):IRecurrenceBuilder { })
	@:overload(function(date:Date):IRecurrenceBuilder { })
	function on(values:haxe.extern.Rest<Float>):IRecurrenceBuilder;
	@:overload(function(?value:String):IRecurrenceBuilder { })
	function every(?value:Float):IRecurrenceBuilder;
	@:overload(function(start:String, end:String):IRecurrenceBuilder { })
	function between(start:Float, end:Float):IRecurrenceBuilder;
	@:overload(function(value:String):IRecurrenceBuilder { })
	function after(value:Float):IRecurrenceBuilder;
	@:overload(function(value:String):IRecurrenceBuilder { })
	function before(value:Float):IRecurrenceBuilder;
	@:overload(function(value:String):IRecurrenceBuilder { })
	function startingOn(value:Float):IRecurrenceBuilder;
	function first():IRecurrenceBuilder;
	function last():IRecurrenceBuilder;
	function onWeekend():IRecurrenceBuilder;
	function onWeekday():IRecurrenceBuilder;
	function and():IRecurrenceBuilder;
	function except():IRecurrenceBuilder;
	function customPeriod(key:String):IRecurrenceBuilder;
	function customModifier(key:String, values:Float):IRecurrenceBuilder;
};
typedef IDateProvider = {
	function UTC():Void;
	function localTime():Void;
	function next(?Y:Float, ?M:Float, ?D:Float, ?h:Float, ?m:Float, ?s:Float):Date;
	function prev(?Y:Float, ?M:Float, ?D:Float, ?h:Float, ?m:Float, ?s:Float):Date;
	function nextRollover(d:Date, val:Float, constraint:IModifier, period:ITimePeriod):Date;
	function prevRollover(d:Date, val:Float, constraint:IModifier, period:ITimePeriod):Date;
};
typedef ITimePeriod = {
	var name : String;
	var range : Float;
	function val(date:Date):Float;
	function isValid(date:Date, value:Dynamic):Bool;
	function extent(?date:Date):Array<Float>;
	function start(date:Date):Date;
	function end(date:Date):Date;
	function next(date:Date, value:Dynamic):Date;
	function prev(date:Date, value:Dynamic):Date;
};
typedef IModifier = {
	>ITimePeriod,
};
typedef IModifierStatic = {
	var after : IModifier;
	var before : IModifier;
};
typedef IStatic = {
	function schedule(input:Dynamic):ISchedule;
	var parse : IParseStatic;
	var date : IDateProvider;
	function setTimeout(callback:Void -> Void, time:IScheduleData):ITimer;
	function setInterval(callback:Void -> Void, time:IScheduleData):ITimer;
	var time : ITimePeriod;
	var second : ITimePeriod;
	var minute : ITimePeriod;
	var hour : ITimePeriod;
	var day : ITimePeriod;
	var dayOfWeek : ITimePeriod;
	var dayOfWeekCount : ITimePeriod;
	var dayOfYear : ITimePeriod;
	var weekOfMonth : ITimePeriod;
	var weekOfYear : ITimePeriod;
	var month : ITimePeriod;
	var year : ITimePeriod;
	var modifier : IModifierStatic;
};
