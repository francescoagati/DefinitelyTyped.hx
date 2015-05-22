typedef RangeError = {
	>Error,
};
typedef CancellationError = {
	>Error,
};
typedef TimeoutError = {
	>Error,
};
typedef TypeError = {
	>Error,
};
typedef RejectionError = {
	>Error,
};
typedef Thenable<R> = {
	@:overload(function<U>(onFulfilled:R -> Thenable<U>, ?onRejected:Dynamic -> U):Thenable<U> { })
	@:overload(function<U>(onFulfilled:R -> U, onRejected:Dynamic -> Thenable<U>):Thenable<U> { })
	@:overload(function<U>(?onFulfilled:R -> U, ?onRejected:Dynamic -> U):Thenable<U> { })
	function then<U>(onFulfilled:R -> Thenable<U>, onRejected:Dynamic -> Thenable<U>):Thenable<U>;
};
typedef Resolver<R> = {
	var promise : Promise<R>;
	@:overload(function():Void { })
	function resolve(value:R):Void;
	function reject(reason:Dynamic):Void;
	function progress(value:Dynamic):Void;
	var callback : Dynamic -> R -> haxe.extern.Rest<R> -> Void;
};
typedef Inspection<R> = {
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isPending():Bool;
	function value():R;
	function error():Dynamic;
};
