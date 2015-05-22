typedef IScheduler = {
	function catch(handler:Dynamic -> Bool):IScheduler;
	function catchException(handler:Dynamic -> Bool):IScheduler;
};
typedef Observer<T> = {
	function checked():Observer<Dynamic>;
};
typedef ObserverStatic = {
	function notifyOn<T>(scheduler:IScheduler):Observer<T>;
};
typedef Observable<T> = {
	function observeOn(scheduler:IScheduler):Observable<T>;
	function subscribeOn(scheduler:IScheduler):Observable<T>;
	@:overload(function(rightSource:IPromise<T>):Observable<T> { })
	function amb(rightSource:Observable<T>):Observable<T>;
	@:overload(function(second:IPromise<T>):Observable<T> { })
	function onErrorResumeNext(second:Observable<T>):Observable<T>;
	function bufferWithCount(count:Float, ?skip:Float):Observable<Array<T>>;
	function windowWithCount(count:Float, ?skip:Float):Observable<Observable<T>>;
	function defaultIfEmpty(?defaultValue:T):Observable<T>;
	@:overload(function<TKey>(?keySelector:T -> TKey, ?keySerializer:TKey -> String):Observable<T> { })
	function distinct(skipParameter:Bool, valueSerializer:T -> String):Observable<T>;
	@:overload(function<TKey, TElement>(keySelector:T -> TKey, elementSelector:T -> TElement, ?keySerializer:TKey -> String):Observable<GroupedObservable<TKey, T>> { })
	function groupBy<TKey, TElement>(keySelector:T -> TKey, ?skipElementSelector:Bool, ?keySerializer:TKey -> String):Observable<GroupedObservable<TKey, T>>;
	@:overload(function<TKey, TElement, TDuration>(keySelector:T -> TKey, elementSelector:T -> TElement, durationSelector:GroupedObservable<TKey, TElement> -> Observable<TDuration>, ?keySerializer:TKey -> String):Observable<GroupedObservable<TKey, TElement>> { })
	function groupByUntil<TKey, TDuration>(keySelector:T -> TKey, skipElementSelector:Bool, durationSelector:GroupedObservable<TKey, T> -> Observable<TDuration>, ?keySerializer:TKey -> String):Observable<GroupedObservable<TKey, T>>;
};
typedef ObservableStatic = {
	function using<TSource, TResource:(IDisposable)>(resourceFactory:Void -> TResource, observableFactory:TResource -> Observable<TSource>):Observable<TSource>;
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	function amb<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T>;
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	function onErrorResumeNext<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T>;
};
typedef GroupedObservable<TKey, TElement> = {
	>Observable<TElement>,
	var key : TKey;
	var underlyingObservable : Observable<TElement>;
};
