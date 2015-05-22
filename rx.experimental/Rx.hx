typedef Observable<T> = {
	function let<TResult>(selector:Observable<T> -> Observable<TResult>):Observable<TResult>;
	function letBind<TResult>(selector:Observable<T> -> Observable<TResult>):Observable<TResult>;
	function doWhile(condition:Void -> Bool):Observable<T>;
	function expand(selector:T -> Observable<T>, ?scheduler:IScheduler):Observable<T>;
	@:overload(function<TSecond, TResult>(second:IPromise<TSecond>, resultSelector:T -> TSecond -> TResult):Observable<TResult> { })
	function forkJoin<TSecond, TResult>(second:Observable<TSecond>, resultSelector:T -> TSecond -> TResult):Observable<TResult>;
	function manySelect<TResult>(selector:Observable<T> -> Float -> Observable<T> -> TResult, ?scheduler:IScheduler):Observable<TResult>;
};
typedef ObservableStatic = {
	@:overload(function<T>(condition:Void -> Bool, thenSource:Observable<T>, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:Observable<T>, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, ?scheduler:IScheduler):Observable<T> { })
	function if<T>(condition:Void -> Bool, thenSource:Observable<T>, elseSource:Observable<T>):Observable<T>;
	@:overload(function<T>(condition:Void -> Bool, thenSource:Observable<T>, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:Observable<T>, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(condition:Void -> Bool, thenSource:IPromise<T>, ?scheduler:IScheduler):Observable<T> { })
	function ifThen<T>(condition:Void -> Bool, thenSource:Observable<T>, elseSource:Observable<T>):Observable<T>;
	function for<T, TResult>(sources:Array<T>, resultSelector:T -> Observable<TResult>):Observable<TResult>;
	function forIn<T, TResult>(sources:Array<T>, resultSelector:T -> Observable<TResult>):Observable<TResult>;
	@:overload(function<T>(condition:Void -> Bool, source:IPromise<T>):Observable<T> { })
	function while<T>(condition:Void -> Bool, source:Observable<T>):Observable<T>;
	@:overload(function<T>(condition:Void -> Bool, source:IPromise<T>):Observable<T> { })
	function whileDo<T>(condition:Void -> Bool, source:Observable<T>):Observable<T>;
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	function case<T>(selector:Void -> String, sources:{ }, elseSource:Observable<T>):Observable<T>;
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:Observable<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, elseSource:IPromise<T>):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	@:overload(function<T>(selector:Void -> Float, sources:{ }, ?scheduler:IScheduler):Observable<T> { })
	function switchCase<T>(selector:Void -> String, sources:{ }, elseSource:Observable<T>):Observable<T>;
	@:overload(function<T>(sources:Array<IPromise<T>>):Observable<Array<T>> { })
	@:overload(function<T>(args:haxe.extern.Rest<Observable<T>>):Observable<Array<T>> { })
	@:overload(function<T>(args:haxe.extern.Rest<IPromise<T>>):Observable<Array<T>> { })
	function forkJoin<T>(sources:Array<Observable<T>>):Observable<Array<T>>;
};
