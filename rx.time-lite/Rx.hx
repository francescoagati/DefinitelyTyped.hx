typedef TimeInterval<T> = {
	var value : T;
	var interval : Float;
};
typedef Timestamp<T> = {
	var value : T;
	var timestamp : Float;
};
typedef Observable<T> = {
	@:overload(function(dueTime:Float, ?scheduler:IScheduler):Observable<T> { })
	function delay(dueTime:Date, ?scheduler:IScheduler):Observable<T>;
	function throttle(dueTime:Float, ?scheduler:IScheduler):Observable<T>;
	function timeInterval(?scheduler:IScheduler):Observable<TimeInterval<T>>;
	function timestamp(?scheduler:IScheduler):Observable<Timestamp<T>>;
	@:overload(function<TSample>(sampler:Observable<TSample>, ?scheduler:IScheduler):Observable<T> { })
	function sample(interval:Float, ?scheduler:IScheduler):Observable<T>;
	@:overload(function(dueTime:Float, ?other:Observable<T>, ?scheduler:IScheduler):Observable<T> { })
	function timeout(dueTime:Date, ?other:Observable<T>, ?scheduler:IScheduler):Observable<T>;
};
typedef ObservableStatic = {
	@:overload(function(dutTime:Float, period:Float, ?scheduler:IScheduler):Observable<Float> { })
	function interval(period:Float, ?scheduler:IScheduler):Observable<Float>;
	@:overload(function(dueTime:Float, ?scheduler:IScheduler):Observable<Float> { })
	function timer(dueTime:Float, period:Float, ?scheduler:IScheduler):Observable<Float>;
};
