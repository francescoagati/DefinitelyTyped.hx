typedef VirtualTimeScheduler<TAbsolute, TRelative> = {
	>Scheduler,
	function advanceBy(time:TRelative):Void;
	function advanceTo(time:TAbsolute):Void;
	function scheduleAbsolute(dueTime:TAbsolute, action:Void -> Void):IDisposable;
	function scheduleAbsoluteWithState<TState>(state:TState, dueTime:TAbsolute, action:IScheduler -> TState -> IDisposable):IDisposable;
	function scheduleRelative(dueTime:TRelative, action:Void -> Void):IDisposable;
	function scheduleRelativeWithState<TState>(state:TState, dueTime:TRelative, action:IScheduler -> TState -> IDisposable):IDisposable;
	function sleep(time:TRelative):Void;
	function start():IDisposable;
	function stop():Void;
	var isEnabled : Bool;
	function add(from:TAbsolute, by:TRelative):TAbsolute;
	function toDateTimeOffset(duetime:TAbsolute):Float;
	function toRelative(duetime:Float):TRelative;
	function getNext():internals.ScheduledItem<TAbsolute>;
};
typedef HistoricalScheduler = {
	>VirtualTimeScheduler<Float, Float>,
};
extern class RxTopLevel {
	static var HistoricalScheduler : { function new(initialClock:Float, comparer:Float -> Float -> Float):HistoricalScheduler; };
}
