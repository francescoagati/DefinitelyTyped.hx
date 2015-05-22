typedef Observer<T> = {
	@:optional
	function onNext(value:T):Void;
	@:optional
	function onError(error:Error):Void;
	@:optional
	function onCompleted():Void;
};
typedef Enumerable<T> = {
	function isEmpty():Bool;
	@:overload(function(keySelector:T -> Float):Enumerable<T> { })
	function minBy<TKey>(keySelector:T -> TKey, comparer:Comparer<TKey, TKey>):Enumerable<T>;
	@:overload(function(keySelector:T -> Float):Enumerable<T> { })
	function maxBy<TKey>(keySelector:T -> TKey, comparer:Comparer<TKey, TKey>):Enumerable<T>;
	@:overload(function():Enumerable<T> { })
	function share<TResult>(selector:Enumerable<T> -> Enumerable<TResult>):Enumerable<TResult>;
	@:overload(function():Enumerable<T> { })
	function publish<TResult>(selector:Enumerable<T> -> Enumerable<TResult>):Enumerable<TResult>;
	function memoize():Enumerable<T>;
	@:overload(function(onbserver:Observer<T>):Enumerable<T> { })
	function do(onNext:T -> Void, ?onError:Error -> Void, ?onCompleted:Void -> Void):Enumerable<T>;
	@:overload(function(onbserver:Observer<T>):Enumerable<T> { })
	function doAction(onNext:T -> Void, ?onError:Error -> Void, ?onCompleted:Void -> Void):Enumerable<T>;
	function bufferWithCount(count:Float, ?skip:Float):Enumerable<T>;
	function ignoreElements():Enumerable<T>;
	function distinctBy<TKey>(keySelector:T -> TKey, ?comparer:EqualityComparer<TKey, TKey>):Enumerable<T>;
	@:overload(function():Enumerable<T> { })
	@:overload(function(_:Bool, comparer:EqualityComparer<T, T>):Enumerable<T> { })
	function distinctUntilChanged<TKey>(keySelector:T -> TKey, ?comparer:EqualityComparer<TKey, TKey>):Enumerable<T>;
	function expand(selector:T -> Enumerable<T>):Enumerable<T>;
	function startWith(values:haxe.extern.Rest<T>):Enumerable<T>;
	@:overload(function(accumulate:T -> T -> T):Enumerable<T> { })
	function scan<TAccumulate>(seed:TAccumulate, accumulate:TAccumulate -> T -> TAccumulate):Enumerable<TAccumulate>;
	function takeLast(count:Float):Enumerable<T>;
	function skipLast(count:Float):Enumerable<T>;
	function repeat(?count:Float):Enumerable<T>;
	@:overload(function(second:Enumerable<T>, other:haxe.extern.Rest<Enumerable<T>>):Enumerable<T> { })
	function catch(handler:Error -> Enumerable<T>):Enumerable<T>;
	@:overload(function(second:Enumerable<T>, other:haxe.extern.Rest<Enumerable<T>>):Enumerable<T> { })
	function catchException(handler:Error -> Enumerable<T>):Enumerable<T>;
	function finally(finallyAction:Void -> Void):Enumerable<T>;
	function finallyDo(finallyAction:Void -> Void):Enumerable<T>;
	function onErrorResumeNext(second:Enumerable<T>):Enumerable<T>;
	function retry(?retryCount:Float):Enumerable<T>;
};
typedef EnumerableStatic = {
	function throw<T>(error:Error):Enumerable<T>;
	function throwException<T>(error:Error):Enumerable<T>;
	function defer<T>(enumerableFactory:Void -> Enumerable<T>):Enumerable<T>;
	function generate<TState, TResult>(initialState:TState, condition:Predicate<TState>, iterate:TState -> TState, resultSelector:TState -> TResult):Enumerable<TResult>;
	function using<TResource:(Disposable), T>(resourceFactory:Void -> TResource, enumerableFactory:TResource -> Enumerable<T>):Enumerable<T>;
	function catch<T>(sources:haxe.extern.Rest<Enumerable<T>>):Enumerable<T>;
	function catchException<T>(sources:haxe.extern.Rest<Enumerable<T>>):Enumerable<T>;
	function onErrorResumeNext<T>(sources:haxe.extern.Rest<Enumerable<T>>):Enumerable<T>;
	function while<T>(condition:EnumerablePredicate<Enumerable<T>>, source:Enumerable<T>):Enumerable<T>;
	function whileDo<T>(condition:EnumerablePredicate<Enumerable<T>>, source:Enumerable<T>):Enumerable<T>;
	function if<T>(condition:Void -> Bool, thenSource:Enumerable<T>, ?elseSource:Enumerable<T>):Enumerable<T>;
	function ifThen<T>(condition:Void -> Bool, thenSource:Enumerable<T>, ?elseSource:Enumerable<T>):Enumerable<T>;
	function doWhile<T>(source:Enumerable<T>, condition:EnumerablePredicate<Enumerable<T>>):Enumerable<T>;
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?defaultSource:Enumerable<T>):Enumerable<T> { })
	function case<T>(selector:Void -> Float, sources:{ }, ?defaultSource:Enumerable<T>):Enumerable<T>;
	@:overload(function<T>(selector:Void -> String, sources:{ }, ?defaultSource:Enumerable<T>):Enumerable<T> { })
	function switchCase<T>(selector:Void -> Float, sources:{ }, ?defaultSource:Enumerable<T>):Enumerable<T>;
	function for<T, TResult>(source:Enumerable<T>, resultSelector:EnumerableFunc<T, TResult>):Enumerable<TResult>;
	function forIn<T, TResult>(source:Enumerable<T>, resultSelector:EnumerableFunc<T, TResult>):Enumerable<TResult>;
};
