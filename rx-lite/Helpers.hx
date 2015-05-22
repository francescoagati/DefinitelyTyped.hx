extern class HelpersTopLevel {
	static function noop():Void;
	static function notDefined(value:Dynamic):Bool;
	static function isScheduler(value:Dynamic):Bool;
	static function identity<T>(value:T):T;
	static function defaultNow():Float;
	static function defaultComparer(left:Dynamic, right:Dynamic):Bool;
	static function defaultSubComparer(left:Dynamic, right:Dynamic):Float;
	static function defaultKeySerializer(key:Dynamic):String;
	static function defaultError(err:Dynamic):Void;
	static function isPromise(p:Dynamic):Bool;
	static function asArray<T>(args:haxe.extern.Rest<T>):Array<T>;
	static function not(value:Dynamic):Bool;
	static function isFunction(value:Dynamic):Bool;
	static var Scheduler : SchedulerStatic;
	static var Observer : ObserverStatic;
	static var Observable : ObservableStatic;
	static var Subject : SubjectStatic;
	static var AsyncSubject : AsyncSubjectStatic;
}
typedef IDisposable = {
	function dispose():Void;
};
extern class CompositeDisposable {
	@:overload(function(disposables:Array<IDisposable>):Void { })
	function new(disposables:haxe.extern.Rest<IDisposable>):Void;
	var isDisposed : Bool;
	var length : Float;
	function dispose():Void;
	function add(item:IDisposable):Void;
	function remove(item:IDisposable):Bool;
	function toArray():Array<IDisposable>;
}
extern class Disposable {
	function new(action:Void -> Void):Void;
	static function create(action:Void -> Void):IDisposable;
	static var empty : IDisposable;
	function dispose():Void;
}
extern class SingleAssignmentDisposable {
	function new():Void;
	var isDisposed : Bool;
	var current : IDisposable;
	function dispose():Void;
	function getDisposable():IDisposable;
	function setDisposable(value:IDisposable):Void;
}
extern class SerialDisposable extends SingleAssignmentDisposable {
	function new():Void;
}
extern class RefCountDisposable {
	function new(disposable:IDisposable):Void;
	function dispose():Void;
	var isDisposed : Bool;
	function getDisposable():IDisposable;
}
typedef IScheduler = {
	function now():Float;
	function schedule(action:Void -> Void):IDisposable;
	function scheduleWithState<TState>(state:TState, action:IScheduler -> TState -> IDisposable):IDisposable;
	function scheduleWithAbsolute(dueTime:Float, action:Void -> Void):IDisposable;
	function scheduleWithAbsoluteAndState<TState>(state:TState, dueTime:Float, action:IScheduler -> TState -> IDisposable):IDisposable;
	function scheduleWithRelative(dueTime:Float, action:Void -> Void):IDisposable;
	function scheduleWithRelativeAndState<TState>(state:TState, dueTime:Float, action:IScheduler -> TState -> IDisposable):IDisposable;
	function scheduleRecursive(action:Void -> Void -> Void):IDisposable;
	function scheduleRecursiveWithState<TState>(state:TState, action:TState -> TState -> Void -> Void):IDisposable;
	function scheduleRecursiveWithAbsolute(dueTime:Float, action:Float -> Void -> Void):IDisposable;
	function scheduleRecursiveWithAbsoluteAndState<TState>(state:TState, dueTime:Float, action:TState -> TState -> Float -> Void -> Void):IDisposable;
	function scheduleRecursiveWithRelative(dueTime:Float, action:Float -> Void -> Void):IDisposable;
	function scheduleRecursiveWithRelativeAndState<TState>(state:TState, dueTime:Float, action:TState -> TState -> Float -> Void -> Void):IDisposable;
	function schedulePeriodic(period:Float, action:Void -> Void):IDisposable;
	function schedulePeriodicWithState<TState>(state:TState, period:Float, action:TState -> TState):IDisposable;
};
typedef Scheduler = {
	>IScheduler,
};
typedef SchedulerStatic = {
	function new(now:Void -> Float, schedule:Dynamic -> IScheduler -> Dynamic -> IDisposable -> IDisposable, scheduleRelative:Dynamic -> Float -> IScheduler -> Dynamic -> IDisposable -> IDisposable, scheduleAbsolute:Dynamic -> Float -> IScheduler -> Dynamic -> IDisposable -> IDisposable):Scheduler;
	function normalize(timeSpan:Float):Float;
	var immediate : IScheduler;
	var currentThread : ICurrentThreadScheduler;
	var timeout : IScheduler;
};
typedef ICurrentThreadScheduler = {
	>IScheduler,
	function scheduleRequired():Bool;
};
extern class Notification<T> {
	@:overload(function<TResult>(onNext:T -> TResult, ?onError:Dynamic -> TResult, ?onCompleted:Void -> TResult):TResult { })
	function accept(observer:IObserver<T>):Void;
	function toObservable(?scheduler:IScheduler):Observable<T>;
	var hasValue : Bool;
	function equals(other:Notification<T>):Bool;
	var kind : String;
	var value : T;
	var exception : Dynamic;
	static function createOnNext<T>(value:T):Notification<T>;
	static function createOnError<T>(exception:Dynamic):Notification<T>;
	static function createOnCompleted<T>():Notification<T>;
}
typedef IPromise<T> = {
	@:overload(function<R>(onFulfilled:T -> IPromise<R>, ?onRejected:Dynamic -> R):IPromise<R> { })
	@:overload(function<R>(onFulfilled:T -> R, onRejected:Dynamic -> IPromise<R>):IPromise<R> { })
	@:overload(function<R>(?onFulfilled:T -> R, ?onRejected:Dynamic -> R):IPromise<R> { })
	function then<R>(onFulfilled:T -> IPromise<R>, onRejected:Dynamic -> IPromise<R>):IPromise<R>;
};
typedef IObserver<T> = {
	function onNext(value:T):Void;
	function onError(exception:Dynamic):Void;
	function onCompleted():Void;
};
typedef Observer<T> = {
	>IObserver<T>,
	function toNotifier():Notification<T> -> Void;
	function asObserver():Observer<T>;
};
typedef ObserverStatic = {
	function create<T>(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):Observer<T>;
	function fromNotifier<T>(handler:Notification<T> -> ?Dynamic -> Void):Observer<T>;
};
typedef IObservable<T> = {
	@:overload(function(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):IDisposable { })
	function subscribe(observer:Observer<T>):IDisposable;
	function subscribeOnNext(onNext:T -> Void, ?thisArg:Dynamic):IDisposable;
	function subscribeOnError(onError:Dynamic -> Void, ?thisArg:Dynamic):IDisposable;
	function subscribeOnCompleted(onCompleted:Void -> Void, ?thisArg:Dynamic):IDisposable;
};
typedef Observable<T> = {
	>IObservable<T>,
	function forEach(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):IDisposable;
	function toArray():Observable<Array<T>>;
	@:overload(function(handler:Dynamic -> IPromise<T>):Observable<T> { })
	@:overload(function(second:Observable<T>):Observable<T> { })
	function catch(handler:Dynamic -> Observable<T>):Observable<T>;
	@:overload(function(handler:Dynamic -> IPromise<T>):Observable<T> { })
	@:overload(function(second:Observable<T>):Observable<T> { })
	function catchException(handler:Dynamic -> Observable<T>):Observable<T>;
	@:overload(function<T2, TResult>(second:IPromise<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:Observable<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:Observable<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:IPromise<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:IPromise<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, T5, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, fifth:Observable<T5>, resultSelector:T -> T2 -> T3 -> T4 -> T5 -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(souces:Array<Observable<TOther>>, resultSelector:T -> haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(souces:Array<IPromise<TOther>>, resultSelector:T -> haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	function combineLatest<T2, TResult>(second:Observable<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult>;
	@:overload(function(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function(sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function(sources:Array<IPromise<T>>):Observable<T> { })
	function concat(sources:haxe.extern.Rest<Observable<T>>):Observable<T>;
	function concatAll():T;
	function concatObservable():T;
	@:overload(function<T2, R>(selector:T -> Float -> IPromise<T2>, resultSelector:T -> T2 -> Float -> R):Observable<R> { })
	@:overload(function<R>(selector:T -> Float -> Observable<R>):Observable<R> { })
	@:overload(function<R>(selector:T -> Float -> IPromise<R>):Observable<R> { })
	@:overload(function<R>(sequence:Observable<R>):Observable<R> { })
	function concatMap<T2, R>(selector:T -> Float -> Observable<T2>, resultSelector:T -> T2 -> Float -> R):Observable<R>;
	@:overload(function(other:Observable<T>):Observable<T> { })
	@:overload(function(other:IPromise<T>):Observable<T> { })
	function merge(maxConcurrent:Float):T;
	function mergeAll():T;
	function mergeObservable():T;
	@:overload(function<T2>(other:IPromise<T2>):Observable<T> { })
	function skipUntil<T2>(other:Observable<T2>):Observable<T>;
	function switch():T;
	function switchLatest():T;
	@:overload(function<T2>(other:IPromise<T2>):Observable<T> { })
	function takeUntil<T2>(other:Observable<T2>):Observable<T>;
	@:overload(function<T2, TResult>(second:IPromise<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:Observable<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:Observable<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:IPromise<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, TResult>(second:IPromise<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:Observable<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, TResult>(second:IPromise<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T2, T3, T4, T5, TResult>(second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, fifth:Observable<T5>, resultSelector:T -> T2 -> T3 -> T4 -> T5 -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(second:Array<Observable<TOther>>, resultSelector:T -> haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(second:Array<IPromise<TOther>>, resultSelector:T -> haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	function zip<T2, TResult>(second:Observable<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult>;
	function asObservable():Observable<T>;
	function dematerialize<TOrigin>():Observable<TOrigin>;
	@:overload(function<TValue>(?keySelector:T -> TValue, ?comparer:TValue -> TValue -> Bool):Observable<T> { })
	function distinctUntilChanged(skipParameter:Bool, comparer:T -> T -> Bool):Observable<T>;
	@:overload(function(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):Observable<T> { })
	function do(observer:Observer<T>):Observable<T>;
	@:overload(function(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):Observable<T> { })
	function doAction(observer:Observer<T>):Observable<T>;
	@:overload(function(?onNext:T -> Void, ?onError:Dynamic -> Void, ?onCompleted:Void -> Void):Observable<T> { })
	function tap(observer:Observer<T>):Observable<T>;
	function doOnNext(onNext:T -> Void, ?thisArg:Dynamic):Observable<T>;
	function doOnError(onError:Dynamic -> Void, ?thisArg:Dynamic):Observable<T>;
	function doOnCompleted(onCompleted:Void -> Void, ?thisArg:Dynamic):Observable<T>;
	function tapOnNext(onNext:T -> Void, ?thisArg:Dynamic):Observable<T>;
	function tapOnError(onError:Dynamic -> Void, ?thisArg:Dynamic):Observable<T>;
	function tapOnCompleted(onCompleted:Void -> Void, ?thisArg:Dynamic):Observable<T>;
	function finally(action:Void -> Void):Observable<T>;
	function finallyAction(action:Void -> Void):Observable<T>;
	function ignoreElements():Observable<T>;
	function materialize():Observable<Notification<T>>;
	function repeat(?repeatCount:Float):Observable<T>;
	function retry(?retryCount:Float):Observable<T>;
	@:overload(function(accumulator:T -> T -> T):Observable<T> { })
	function scan<TAcc>(seed:TAcc, accumulator:TAcc -> T -> TAcc):Observable<TAcc>;
	function skipLast(count:Float):Observable<T>;
	@:overload(function(scheduler:IScheduler, values:haxe.extern.Rest<T>):Observable<T> { })
	function startWith(values:haxe.extern.Rest<T>):Observable<T>;
	function takeLast(count:Float):Observable<T>;
	function takeLastBuffer(count:Float):Observable<Array<T>>;
	function select<TResult>(selector:T -> Float -> Observable<T> -> TResult, ?thisArg:Dynamic):Observable<TResult>;
	function map<TResult>(selector:T -> Float -> Observable<T> -> TResult, ?thisArg:Dynamic):Observable<TResult>;
	function pluck<TResult>(prop:String):Observable<TResult>;
	@:overload(function<TOther, TResult>(selector:T -> IPromise<TOther>, resultSelector:T -> TOther -> TResult):Observable<TResult> { })
	@:overload(function<TResult>(selector:T -> Observable<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(selector:T -> IPromise<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(other:Observable<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(other:IPromise<TResult>):Observable<TResult> { })
	function selectMany<TOther, TResult>(selector:T -> Observable<TOther>, resultSelector:T -> TOther -> TResult):Observable<TResult>;
	@:overload(function<TOther, TResult>(selector:T -> IPromise<TOther>, resultSelector:T -> TOther -> TResult):Observable<TResult> { })
	@:overload(function<TResult>(selector:T -> Observable<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(selector:T -> IPromise<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(other:Observable<TResult>):Observable<TResult> { })
	@:overload(function<TResult>(other:IPromise<TResult>):Observable<TResult> { })
	function flatMap<TOther, TResult>(selector:T -> Observable<TOther>, resultSelector:T -> TOther -> TResult):Observable<TResult>;
	@:overload(function<T2, R>(selector:T -> Float -> IPromise<T2>, resultSelector:T -> T2 -> Float -> R):Observable<R> { })
	@:overload(function<R>(selector:T -> Float -> Observable<R>):Observable<R> { })
	@:overload(function<R>(selector:T -> Float -> IPromise<R>):Observable<R> { })
	@:overload(function<R>(sequence:Observable<R>):Observable<R> { })
	function selectConcat<T2, R>(selector:T -> Float -> Observable<T2>, resultSelector:T -> T2 -> Float -> R):Observable<R>;
	function selectSwitch<TResult>(selector:T -> Float -> Observable<T> -> Observable<TResult>, ?thisArg:Dynamic):Observable<TResult>;
	function flatMapLatest<TResult>(selector:T -> Float -> Observable<T> -> Observable<TResult>, ?thisArg:Dynamic):Observable<TResult>;
	function switchMap<TResult>(selector:T -> Float -> Observable<T> -> TResult, ?thisArg:Dynamic):Observable<TResult>;
	function skip(count:Float):Observable<T>;
	function skipWhile(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function take(count:Float, ?scheduler:IScheduler):Observable<T>;
	function takeWhile(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function where(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function filter(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	@:overload(function(?promiseCtor:{ function new(resolver:T -> Void -> Dynamic -> Void -> Void):IPromise<T>; }):IPromise<T> { })
	function toPromise<TPromise:(IPromise<T>)>(promiseCtor:{ function new(resolver:T -> Void -> Dynamic -> Void -> Void):TPromise; }):TPromise;
	function exclusive<R>():Observable<R>;
	function exclusiveMap<I, R>(selector:I -> Float -> Observable<I> -> R, ?thisArg:Dynamic):Observable<R>;
};
typedef ObservableStatic = {
	@:overload(function<T>(subscribe:Observer<T> -> Void -> Void):Observable<T> { })
	@:overload(function<T>(subscribe:Observer<T> -> Void):Observable<T> { })
	function create<T>(subscribe:Observer<T> -> IDisposable):Observable<T>;
	function createWithDisposable<T>(subscribe:Observer<T> -> IDisposable):Observable<T>;
	@:overload(function<T>(observableFactory:Void -> IPromise<T>):Observable<T> { })
	function defer<T>(observableFactory:Void -> Observable<T>):Observable<T>;
	function empty<T>(?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(array:Array<T>, ?mapFn:T -> Float -> T, ?thisArg:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T, TResult>(array:{ var length : Float; }, mapFn:T -> Float -> TResult, ?thisArg:Dynamic, ?scheduler:IScheduler):Observable<TResult> { })
	@:overload(function<T>(array:{ var length : Float; }, ?mapFn:T -> Float -> T, ?thisArg:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(iterable:Dynamic, ?mapFn:Dynamic -> Float -> T, ?thisArg:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	function from<T, TResult>(array:Array<T>, mapFn:T -> Float -> TResult, ?thisArg:Dynamic, ?scheduler:IScheduler):Observable<TResult>;
	@:overload(function<T>(array:{ var length : Float; }, ?scheduler:IScheduler):Observable<T> { })
	function fromArray<T>(array:Array<T>, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(iterable:{ }, ?scheduler:IScheduler):Observable<T> { })
	function fromItreable<T>(generator:Void -> { function next():{ var done : Bool; @:optional
	var value : T; }; }, ?scheduler:IScheduler):Observable<T>;
	function generate<TState, TResult>(initialState:TState, condition:TState -> Bool, iterate:TState -> TState, resultSelector:TState -> TResult, ?scheduler:IScheduler):Observable<TResult>;
	function never<T>():Observable<T>;
	function of<T>(values:haxe.extern.Rest<T>):Observable<T>;
	function ofWithScheduler<T>(?scheduler:IScheduler, values:haxe.extern.Rest<T>):Observable<T>;
	function range(start:Float, count:Float, ?scheduler:IScheduler):Observable<Float>;
	function repeat<T>(value:T, ?repeatCount:Float, ?scheduler:IScheduler):Observable<T>;
	function return<T>(value:T, ?scheduler:IScheduler):Observable<T>;
	function just<T>(value:T, ?scheduler:IScheduler):Observable<T>;
	function returnValue<T>(value:T, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(exception:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	function throw<T>(exception:Error, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(exception:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	function throwException<T>(exception:Error, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(error:Dynamic, ?scheduler:IScheduler):Observable<T> { })
	function throwError<T>(error:Error, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	function catch<T>(sources:Array<Observable<T>>):Observable<T>;
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	function catchException<T>(sources:Array<Observable<T>>):Observable<T>;
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	function catchError<T>(sources:Array<Observable<T>>):Observable<T>;
	@:overload(function<T, T2, TResult>(first:IPromise<T>, second:Observable<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, TResult>(first:Observable<T>, second:IPromise<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, TResult>(first:IPromise<T>, second:IPromise<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:Observable<T>, second:Observable<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:Observable<T>, second:Observable<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:Observable<T>, second:IPromise<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:Observable<T>, second:IPromise<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:IPromise<T>, second:Observable<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:IPromise<T>, second:Observable<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:IPromise<T>, second:IPromise<T2>, third:Observable<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, TResult>(first:IPromise<T>, second:IPromise<T2>, third:IPromise<T3>, resultSelector:T -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:Observable<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:Observable<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:Observable<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:IPromise<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:IPromise<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:IPromise<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:Observable<T>, second:IPromise<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:Observable<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:Observable<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:Observable<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:IPromise<T2>, third:Observable<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:IPromise<T2>, third:Observable<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:IPromise<T2>, third:IPromise<T3>, fourth:Observable<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, TResult>(first:IPromise<T>, second:IPromise<T2>, third:IPromise<T3>, fourth:IPromise<T4>, resultSelector:T -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T, T2, T3, T4, T5, TResult>(first:Observable<T>, second:Observable<T2>, third:Observable<T3>, fourth:Observable<T4>, fifth:Observable<T5>, resultSelector:T -> T2 -> T3 -> T4 -> T5 -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(souces:Array<Observable<TOther>>, resultSelector:haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	@:overload(function<TOther, TResult>(souces:Array<IPromise<TOther>>, resultSelector:haxe.extern.Rest<TOther> -> TResult):Observable<TResult> { })
	function combineLatest<T, T2, TResult>(first:Observable<T>, second:Observable<T2>, resultSelector:T -> T2 -> TResult):Observable<TResult>;
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	function concat<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T>;
	@:overload(function<T>(sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(scheduler:IScheduler, sources:haxe.extern.Rest<Observable<T>>):Observable<T> { })
	@:overload(function<T>(scheduler:IScheduler, sources:haxe.extern.Rest<IPromise<T>>):Observable<T> { })
	@:overload(function<T>(scheduler:IScheduler, sources:Array<Observable<T>>):Observable<T> { })
	@:overload(function<T>(scheduler:IScheduler, sources:Array<IPromise<T>>):Observable<T> { })
	function merge<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<T>;
	@:overload(function<T1, T2, TResult>(first:Observable<T1>, sources:Array<IPromise<T2>>, resultSelector:T1 -> haxe.extern.Rest<T2> -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, TResult>(source1:Observable<T1>, source2:Observable<T2>, resultSelector:T1 -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, TResult>(source1:Observable<T1>, source2:IPromise<T2>, resultSelector:T1 -> T2 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:Observable<T3>, resultSelector:T1 -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:IPromise<T3>, resultSelector:T1 -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:Observable<T3>, resultSelector:T1 -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:IPromise<T3>, resultSelector:T1 -> T2 -> T3 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:Observable<T3>, source4:Observable<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:Observable<T3>, source4:IPromise<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:IPromise<T3>, source4:Observable<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:IPromise<T3>, source4:IPromise<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:Observable<T3>, source4:Observable<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:Observable<T3>, source4:IPromise<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:IPromise<T3>, source4:Observable<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(source1:Observable<T1>, source2:IPromise<T2>, source3:IPromise<T3>, source4:IPromise<T4>, resultSelector:T1 -> T2 -> T3 -> T4 -> TResult):Observable<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(source1:Observable<T1>, source2:Observable<T2>, source3:Observable<T3>, source4:Observable<T4>, source5:Observable<T5>, resultSelector:T1 -> T2 -> T3 -> T4 -> T5 -> TResult):Observable<TResult> { })
	function zip<T1, T2, TResult>(first:Observable<T1>, sources:Array<Observable<T2>>, resultSelector:T1 -> haxe.extern.Rest<T2> -> TResult):Observable<TResult>;
	@:overload(function<T>(sources:Array<Observable<T>>):Observable<Array<T>> { })
	function zipArray<T>(sources:haxe.extern.Rest<Observable<T>>):Observable<Array<T>>;
	function fromPromise<T>(promise:IPromise<T>):Observable<T>;
};
typedef ISubject<T> = {
	>Observable<T>,
	>Observer<T>,
	>IDisposable,
	function hasObservers():Bool;
};
typedef Subject<T> = {
	>ISubject<T>,
};
typedef SubjectStatic = {
	function new<T>():Subject<T>;
	function create<T>(?observer:Observer<T>, ?observable:Observable<T>):ISubject<T>;
};
typedef AsyncSubject<T> = {
	>Subject<T>,
};
typedef AsyncSubjectStatic = {
	function new<T>():AsyncSubject<T>;
};
