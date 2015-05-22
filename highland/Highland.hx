typedef Thenable<R> = {
	@:overload(function<U>(onFulfilled:R -> Thenable<U>, ?onRejected:Dynamic -> U):Thenable<U> { })
	@:overload(function<U>(onFulfilled:R -> U, onRejected:Dynamic -> Thenable<U>):Thenable<U> { })
	@:overload(function<U>(?onFulfilled:R -> U, ?onRejected:Dynamic -> U):Thenable<U> { })
	function then<U>(onFulfilled:R -> Thenable<U>, onRejected:Dynamic -> Thenable<U>):Thenable<U>;
};
typedef Nil = {
	var Highland_NIL : Nil;
};
extern class StreamError {
	function new(err:Error):Void;
	var error : Error;
}
extern class StreamRedirect<R> {
	function new(to:Stream<R>):Void;
	var to : Stream<R>;
}
typedef Stream<R> = {
	>NodeJS.EventEmitter,
	function pause():Void;
	function resume():Void;
	function end():Void;
	@:overload(function<U>(dest:NodeJS.ReadWriteStream):Stream<U> { })
	@:overload(function(dest:NodeJS.WritableStream):Void { })
	function pipe<U>(dest:Stream<U>):Stream<U>;
	function destroy():Void;
	function consume<U>(f:Error -> R -> Error -> ?U -> Void -> Void -> Void -> Void):Stream<U>;
	function pull(f:Error -> R -> Void):Void;
	function write(x:R):Bool;
	function fork():Stream<R>;
	function observe():Stream<R>;
	function errors(f:Error -> Error -> ?R -> Void -> Void):Stream<R>;
	function stopOnError(f:Error -> Void):Stream<R>;
	function each(f:R -> Void):Void;
	function apply(f:haxe.Constraints.Function):Void;
	function toArray(f:Array<R> -> Void):Void;
	function map<U>(f:R -> U):Stream<U>;
	@:overload(function<U>(f:R -> U):Stream<U> { })
	function flatMap<U>(f:R -> Stream<U>):Stream<U>;
	function pluck<U>(prop:String):Stream<U>;
	function filter(f:R -> Bool):Stream<R>;
	function flatFilter(f:R -> Stream<Bool>):Stream<R>;
	function reject(f:R -> Bool):Stream<R>;
	function find(f:R -> Bool):Stream<R>;
	@:overload(function(prop:String):Stream<{ }> { })
	function group(f:R -> String):Stream<{ }>;
	function compact():Stream<R>;
	function where(props:Dynamic):Stream<R>;
	@:overload(function(ys:Stream<R>):Stream<R> { })
	function zip(ys:Array<R>):Stream<R>;
	function take(n:Float):Stream<R>;
	function head():Stream<R>;
	function last():Stream<R>;
	function sequence<U>():Stream<U>;
	function series<U>():Stream<U>;
	@:overload(function():Stream<R> { })
	function flatten<U>():Stream<U>;
	function parallel(n:Float):Stream<R>;
	function otherwise(ys:Stream<R>):Stream<R>;
	function append(y:R):Stream<R>;
	function reduce<U>(memo:U, f:U -> R -> U):Stream<U>;
	function reduce1<U>(memo:U, f:U -> R -> U):Stream<U>;
	function collect():Stream<Array<R>>;
	function scan<U>(memo:U, x:U -> R -> U):Stream<U>;
	function scan1<U>(memo:U, x:U -> R -> U):Stream<U>;
	@:overload(function(ys:Array<R>):Stream<R> { })
	function concat(ys:Stream<R>):Stream<R>;
	function merge(ys:Stream<Stream<R>>):Stream<R>;
	function invoke<U>(method:String, args:Array<Dynamic>):Stream<U>;
	function throttle(ms:Float):Stream<R>;
	function debounce(ms:Float):Stream<R>;
	function latest():Stream<R>;
};
