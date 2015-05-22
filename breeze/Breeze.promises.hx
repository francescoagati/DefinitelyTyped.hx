typedef IPromise<T> = {
	@:overload(function<U>(onFulfill:T -> IPromise<U>, ?onReject:Dynamic -> U):IPromise<U> { })
	@:overload(function<U>(onFulfill:T -> U, ?onReject:Dynamic -> IPromise<U>):IPromise<U> { })
	@:overload(function<U>(onFulfill:T -> IPromise<U>, ?onReject:Dynamic -> IPromise<U>):IPromise<U> { })
	function then<U>(onFulfill:T -> U, ?onReject:Dynamic -> U):IPromise<U>;
	@:overload(function<U>(onRejected:Dynamic -> IPromise<U>):IPromise<U> { })
	function catch<U>(onRejected:Dynamic -> U):IPromise<U>;
	function finally(finallyCallback:Void -> Dynamic):IPromise<T>;
};
typedef IDeferred<T> = {
	var promise : IPromise<T>;
	function resolve(value:T):Void;
	function reject(reason:Dynamic):Void;
};
typedef IPromiseService = {
	function defer<T>():IDeferred<T>;
	function reject(?reason:Dynamic):IPromise<Dynamic>;
	@:overload(function<T>(object:IPromise<T>):IPromise<T> { })
	function resolve<T>(object:T):IPromise<T>;
};
