typedef Thenable<R> = {
	@:overload(function<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> Void):Thenable<U> { })
	function then<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Thenable<U>;
};
extern class Promise<R> {
	function new(callback:?haxe.extern.EitherType<R, Thenable<R>> -> Void -> ?Dynamic -> Void -> Void):Void;
	@:overload(function<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> Void):Promise<U> { })
	function then<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Promise<U>;
	function catch<U>(?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Promise<U>;
}
extern class Es6-promiseTopLevel {
	static var foo : Dynamic;
}
extern class Es6-promiseTopLevel {
	static var foo : Dynamic;
}
