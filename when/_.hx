typedef Fn0<T> = { };
typedef Fn1<A1, T> = { };
typedef Fn2<A1, A2, T> = { };
typedef Fn3<A1, A2, A3, T> = { };
typedef Fn4<A1, A2, A3, A4, T> = { };
typedef Fn5<A1, A2, A3, A4, A5, T> = { };
typedef Fn6<A1, A2, A3, A4, A5, A6, T> = { };
typedef LiftedFn0<T> = {
	>Fn0<Promise<T>>,
};
typedef LiftedFn1<A1, T> = {
	>Fn1<haxe.extern.EitherType<A1, Promise<A1>>, Promise<T>>,
};
typedef LiftedFn2<A1, A2, T> = {
	>Fn2<haxe.extern.EitherType<A1, Promise<A1>>, haxe.extern.EitherType<A2, Promise<A2>>, Promise<T>>,
};
typedef LiftedFn3<A1, A2, A3, T> = {
	>Fn3<haxe.extern.EitherType<A1, Promise<A1>>, haxe.extern.EitherType<A2, Promise<A2>>, haxe.extern.EitherType<A3, Promise<A3>>, Promise<T>>,
};
typedef LiftedFn4<A1, A2, A3, A4, T> = {
	>Fn4<haxe.extern.EitherType<A1, Promise<A1>>, haxe.extern.EitherType<A2, Promise<A2>>, haxe.extern.EitherType<A3, Promise<A3>>, haxe.extern.EitherType<A4, Promise<A4>>, Promise<T>>,
};
typedef LiftedFn5<A1, A2, A3, A4, A5, T> = {
	>Fn5<haxe.extern.EitherType<A1, Promise<A1>>, haxe.extern.EitherType<A2, Promise<A2>>, haxe.extern.EitherType<A3, Promise<A3>>, haxe.extern.EitherType<A4, Promise<A4>>, haxe.extern.EitherType<A5, Promise<A5>>, Promise<T>>,
};
typedef NodeCallback<T> = { };
typedef NodeFn0<T> = {
	>_.Fn1<NodeCallback<T>, Void>,
};
typedef NodeFn1<A1, T> = {
	>_.Fn2<A1, NodeCallback<T>, Void>,
};
typedef NodeFn2<A1, A2, T> = {
	>_.Fn3<A1, A2, NodeCallback<T>, Void>,
};
typedef NodeFn3<A1, A2, A3, T> = {
	>_.Fn4<A1, A2, A3, NodeCallback<T>, Void>,
};
typedef NodeFn4<A1, A2, A3, A4, T> = {
	>_.Fn5<A1, A2, A3, A4, NodeCallback<T>, Void>,
};
typedef NodeFn5<A1, A2, A3, A4, A5, T> = {
	>_.Fn6<A1, A2, A3, A4, A5, NodeCallback<T>, Void>,
};
typedef Deferred<T> = {
	function notify(update:Dynamic):Void;
	var promise : Promise<T>;
	function reject(reason:Dynamic):Void;
	@:overload(function(?value:Promise<T>):Void { })
	function resolve(?value:T):Void;
};
typedef Promise<T> = {
	@:overload(function<U>(filter:Dynamic -> Bool, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>):Promise<U> { })
	@:overload(function<U>(exceptionType:Dynamic, ?onRejected:Dynamic -> Promise<U>):Promise<U> { })
	function catch<U>(?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>):Promise<U>;
	function finally(onFulfilledOrRejected:haxe.Constraints.Function):Promise<T>;
	function ensure(onFulfilledOrRejected:haxe.Constraints.Function):Promise<T>;
	function inspect():Snapshot<T>;
	function yield<U>(value:haxe.extern.EitherType<U, Promise<U>>):Promise<U>;
	function else(value:T):Promise<T>;
	function orElse(value:T):Promise<T>;
	function tap(onFulfilledSideEffect:T -> Void):Promise<T>;
	function delay(milliseconds:Float):Promise<T>;
	function timeout(milliseconds:Float, ?reason:Dynamic):Promise<T>;
	function with(thisArg:Dynamic):Promise<T>;
	function withThis(thisArg:Dynamic):Promise<T>;
	@:overload(function<U>(predicate:Dynamic -> Bool, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>):Promise<U> { })
	@:overload(function<U>(exceptionType:Dynamic, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>):Promise<U> { })
	function otherwise<U>(?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>):Promise<U>;
	function then<U>(onFulfilled:T -> haxe.extern.EitherType<U, Promise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Promise<U>>, ?onProgress:Dynamic -> Void):Promise<U>;
	function done<U>(onFulfilled:T -> Void, ?onRejected:Dynamic -> Void):Void;
	function fold<U, V>(combine:T -> V -> haxe.extern.EitherType<U, Promise<U>>, value2:haxe.extern.EitherType<V, Promise<V>>):Promise<U>;
};
typedef Thenable<T> = {
	function then<U>(onFulfilled:T -> U, ?onRejected:Dynamic -> U):Thenable<U>;
};
typedef Snapshot<T> = {
	var state : String;
	@:optional
	var value : T;
	@:optional
	var reason : Dynamic;
};
