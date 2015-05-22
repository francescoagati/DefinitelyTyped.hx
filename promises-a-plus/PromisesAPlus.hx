typedef PromiseCtor = { };
typedef PromiseImpl = {
	function new<T>(resolver:T -> Void -> Dynamic -> Void -> Void):Thenable<T>;
};
typedef Thenable<T> = {
	function then<R>(?onFulfill:T -> haxe.extern.EitherType<Thenable<R>, R>, ?onReject:Dynamic -> haxe.extern.EitherType<Thenable<R>, R>):Thenable<R>;
};
