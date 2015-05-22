typedef Observable<T> = {
	function delaySubscription(dueTime:Float, ?scheduler:IScheduler):Observable<T>;
	@:overload(function(subscriptionDelay:Float, delayDurationSelector:T -> Float):Observable<T> { })
	function delayWithSelector(delayDurationSelector:T -> Float):Observable<T>;
	function timeoutWithSelector<TTimeout>(firstTimeout:Observable<TTimeout>, ?timeoutdurationSelector:T -> Observable<TTimeout>, ?other:Observable<T>):Observable<T>;
	function throttleWithSelector<TTimeout>(throttleDurationSelector:T -> Observable<TTimeout>):Observable<T>;
	function skipLastWithTime(duration:Float, ?scheduler:IScheduler):Observable<T>;
	function takeLastWithTime(duration:Float, ?timerScheduler:IScheduler, ?loopScheduler:IScheduler):Observable<T>;
	function takeLastBufferWithTime(duration:Float, ?scheduler:IScheduler):Observable<Array<T>>;
	function takeWithTime(duration:Float, ?scheduler:IScheduler):Observable<T>;
	function skipWithTime(duration:Float, ?scheduler:IScheduler):Observable<T>;
	@:overload(function(duration:Float, ?scheduler:IScheduler):Observable<T> { })
	function skipUntilWithTime(startTime:Date, ?scheduler:IScheduler):Observable<T>;
	@:overload(function(duration:Float, ?scheduler:IScheduler):Observable<T> { })
	function takeUntilWithTime(endTime:Date, ?scheduler:IScheduler):Observable<T>;
	@:overload(function(timeSpan:Float, ?scheduler:IScheduler):Observable<Observable<T>> { })
	function windowWithTime(timeSpan:Float, timeShift:Float, ?scheduler:IScheduler):Observable<Observable<T>>;
	function windowWithTimeOrCount(timeSpan:Float, count:Float, ?scheduler:IScheduler):Observable<Observable<T>>;
	@:overload(function(timeSpan:Float, ?scheduler:IScheduler):Observable<Array<T>> { })
	function bufferWithTime(timeSpan:Float, timeShift:Float, ?scheduler:IScheduler):Observable<Array<T>>;
	function bufferWithTimeOrCount(timeSpan:Float, count:Float, ?scheduler:IScheduler):Observable<Array<T>>;
};
typedef ObservableStatic = {
	@:overload(function(dueTime:Date, ?scheduler:IScheduler):Observable<Float> { })
	function timer(dueTime:Date, period:Float, ?scheduler:IScheduler):Observable<Float>;
	function generateWithRelativeTime<TState, TResult>(initialState:TState, condition:TState -> Bool, iterate:TState -> TState, resultSelector:TState -> TResult, timeSelector:TState -> Float, ?scheduler:IScheduler):Observable<TResult>;
	function generateWithAbsoluteTime<TState, TResult>(initialState:TState, condition:TState -> Bool, iterate:TState -> TState, resultSelector:TState -> TResult, timeSelector:TState -> Date, ?scheduler:IScheduler):Observable<TResult>;
};
