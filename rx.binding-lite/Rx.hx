typedef BehaviorSubject<T> = {
	>Subject<T>,
};
typedef BehaviorSubjectStatic = {
	function new<T>(initialValue:T):BehaviorSubject<T>;
};
typedef ReplaySubject<T> = {
	>Subject<T>,
};
typedef ReplaySubjectStatic = {
	function new<T>(?bufferSize:Float, ?window:Float, ?scheduler:IScheduler):ReplaySubject<T>;
};
typedef ConnectableObservable<T> = {
	>Observable<T>,
	function connect():IDisposable;
	function refCount():Observable<T>;
};
typedef ConnectableObservableStatic = {
	function new<T>():ConnectableObservable<T>;
};
typedef Observable<T> = {
	@:overload(function<TResult>(subjectSelector:Void -> ISubject<T>, selector:ConnectableObservable<T> -> Observable<T>):Observable<T> { })
	function multicast(subject:Observable<T>):ConnectableObservable<T>;
	@:overload(function<TResult>(selector:ConnectableObservable<T> -> Observable<TResult>):Observable<TResult> { })
	function publish():ConnectableObservable<T>;
	function share():Observable<T>;
	@:overload(function<TResult>(selector:ConnectableObservable<T> -> Observable<TResult>):Observable<TResult> { })
	function publishLast():ConnectableObservable<T>;
	@:overload(function<TResult>(selector:ConnectableObservable<T> -> Observable<TResult>, initialValue:T):Observable<TResult> { })
	function publishValue(initialValue:T):ConnectableObservable<T>;
	function shareValue(initialValue:T):Observable<T>;
	@:overload(function(selector:ConnectableObservable<T> -> Observable<T>, ?bufferSize:Float, ?window:Float, ?scheduler:IScheduler):Observable<T> { })
	function replay(?selector:Bool, ?bufferSize:Float, ?window:Float, ?scheduler:IScheduler):ConnectableObservable<T>;
	function shareReplay(?bufferSize:Float, ?window:Float, ?scheduler:IScheduler):Observable<T>;
};
extern class RxTopLevel {
	static var BehaviorSubject : BehaviorSubjectStatic;
	static var ReplaySubject : ReplaySubjectStatic;
	static var ConnectableObservable : ConnectableObservableStatic;
}
