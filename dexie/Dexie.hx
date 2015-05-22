extern class Promise<R> {
	@:overload(function(callback:?R -> Void -> ?Dynamic -> Void -> Void):Void { })
	function new(callback:?Thenable<R> -> Void -> ?Dynamic -> Void -> Void):Void;
	@:overload(function<U>(onFulfilled:R -> Thenable<U>, ?onRejected:Dynamic -> U):Promise<U> { })
	@:overload(function<U>(onFulfilled:R -> U, onRejected:Dynamic -> Thenable<U>):Promise<U> { })
	@:overload(function<U>(?onFulfilled:R -> U, ?onRejected:Dynamic -> U):Promise<U> { })
	function then<U>(onFulfilled:R -> Thenable<U>, onRejected:Dynamic -> Thenable<U>):Promise<U>;
	@:overload(function<U>(ExceptionType:haxe.Constraints.Function, onRejected:Dynamic -> Promise<U>):Promise<U> { })
	@:overload(function<U>(errorName:String, onRejected:Dynamic -> Promise<U>):Promise<U> { })
	function catch<U>(onRejected:Dynamic -> Promise<U>):Promise<U>;
	function finally<R>(onFinally:Void -> Dynamic):Promise<R>;
	var onuncatched : Void -> Dynamic;
}
