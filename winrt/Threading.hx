@:enum abstract WorkItemPriority(Int) {
	var low = 0;
	var normal = 1;
	var high = 2;
}
@:enum abstract WorkItemOptions(Int) {
	var none = 0;
	var timeSliced = 1;
}
typedef TimerElapsedHandler = { };
extern class ThreadPoolTimer {
	var delay : Float;
	var period : Float;
	function cancel():Void;
	@:overload(function(handler:Windows.System.Threading.TimerElapsedHandler, period:Float, destroyed:Windows.System.Threading.TimerDestroyedHandler):Windows.System.Threading.ThreadPoolTimer { })
	static function createPeriodicTimer(handler:Windows.System.Threading.TimerElapsedHandler, period:Float):Windows.System.Threading.ThreadPoolTimer;
	@:overload(function(handler:Windows.System.Threading.TimerElapsedHandler, delay:Float, destroyed:Windows.System.Threading.TimerDestroyedHandler):Windows.System.Threading.ThreadPoolTimer { })
	static function createTimer(handler:Windows.System.Threading.TimerElapsedHandler, delay:Float):Windows.System.Threading.ThreadPoolTimer;
}
typedef TimerDestroyedHandler = { };
typedef WorkItemHandler = { };
typedef IThreadPoolStatics = {
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority):Windows.Foundation.IAsyncAction { })
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority, options:Windows.System.Threading.WorkItemOptions):Windows.Foundation.IAsyncAction { })
	function runAsync(handler:Windows.System.Threading.WorkItemHandler):Windows.Foundation.IAsyncAction;
};
typedef IThreadPoolTimer = {
	var delay : Float;
	var period : Float;
	function cancel():Void;
};
typedef IThreadPoolTimerStatics = {
	@:overload(function(handler:Windows.System.Threading.TimerElapsedHandler, period:Float, destroyed:Windows.System.Threading.TimerDestroyedHandler):Windows.System.Threading.ThreadPoolTimer { })
	function createPeriodicTimer(handler:Windows.System.Threading.TimerElapsedHandler, period:Float):Windows.System.Threading.ThreadPoolTimer;
	@:overload(function(handler:Windows.System.Threading.TimerElapsedHandler, delay:Float, destroyed:Windows.System.Threading.TimerDestroyedHandler):Windows.System.Threading.ThreadPoolTimer { })
	function createTimer(handler:Windows.System.Threading.TimerElapsedHandler, delay:Float):Windows.System.Threading.ThreadPoolTimer;
};
extern class ThreadPool {
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority):Windows.Foundation.IAsyncAction { })
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority, options:Windows.System.Threading.WorkItemOptions):Windows.Foundation.IAsyncAction { })
	static function runAsync(handler:Windows.System.Threading.WorkItemHandler):Windows.Foundation.IAsyncAction;
}
