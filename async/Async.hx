typedef Dictionary<T> = { };
typedef ErrorCallback = { };
typedef AsyncResultCallback<T> = { };
typedef AsyncResultArrayCallback<T> = { };
typedef AsyncResultObjectCallback<T> = { };
typedef AsyncIterator<T> = { };
typedef AsyncResultIterator<T, R> = { };
typedef AsyncMemoIterator<T, R> = { };
typedef AsyncWorker<T> = { };
typedef AsyncFunction<T> = { };
typedef AsyncVoidFunction = { };
typedef AsyncQueue<T> = {
	function length():Float;
	var concurrency : Float;
	var started : Bool;
	var paused : Bool;
	@:overload(function(task:Array<T>, ?callback:ErrorCallback):Void { })
	function push(task:T, ?callback:ErrorCallback):Void;
	@:overload(function(task:Array<T>, ?callback:ErrorCallback):Void { })
	function unshift(task:T, ?callback:ErrorCallback):Void;
	var saturated : Void -> Dynamic;
	var empty : Void -> Dynamic;
	var drain : Void -> Dynamic;
	function running():Float;
	function idle():Bool;
	function pause():Void;
	function resume():Void;
	function kill():Void;
};
typedef AsyncPriorityQueue<T> = {
	function length():Float;
	var concurrency : Float;
	var started : Bool;
	var paused : Bool;
	@:overload(function(task:Array<T>, priority:Float, ?callback:AsyncResultArrayCallback<T>):Void { })
	function push(task:T, priority:Float, ?callback:AsyncResultArrayCallback<T>):Void;
	var saturated : Void -> Dynamic;
	var empty : Void -> Dynamic;
	var drain : Void -> Dynamic;
	function running():Float;
	function idle():Bool;
	function pause():Void;
	function resume():Void;
	function kill():Void;
};
typedef Async = {
	function each<T>(arr:Array<T>, iterator:AsyncIterator<T>, callback:ErrorCallback):Void;
	function eachSeries<T>(arr:Array<T>, iterator:AsyncIterator<T>, callback:ErrorCallback):Void;
	function eachLimit<T>(arr:Array<T>, limit:Float, iterator:AsyncIterator<T>, callback:ErrorCallback):Void;
	function map<T, R>(arr:Array<T>, iterator:AsyncResultIterator<T, R>, callback:AsyncResultArrayCallback<R>):Dynamic;
	function mapSeries<T, R>(arr:Array<T>, iterator:AsyncResultIterator<T, R>, callback:AsyncResultArrayCallback<R>):Dynamic;
	function mapLimit<T, R>(arr:Array<T>, limit:Float, iterator:AsyncResultIterator<T, R>, callback:AsyncResultArrayCallback<R>):Dynamic;
	function filter<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function select<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function filterSeries<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function selectSeries<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function reject<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function rejectSeries<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Array<T> -> Dynamic):Dynamic;
	function reduce<T, R>(arr:Array<T>, memo:R, iterator:AsyncMemoIterator<T, R>, callback:AsyncResultCallback<R>):Dynamic;
	function inject<T, R>(arr:Array<T>, memo:R, iterator:AsyncMemoIterator<T, R>, callback:AsyncResultCallback<R>):Dynamic;
	function foldl<T, R>(arr:Array<T>, memo:R, iterator:AsyncMemoIterator<T, R>, callback:AsyncResultCallback<R>):Dynamic;
	function reduceRight<T, R>(arr:Array<T>, memo:R, iterator:AsyncMemoIterator<T, R>, callback:AsyncResultCallback<R>):Dynamic;
	function foldr<T, R>(arr:Array<T>, memo:R, iterator:AsyncMemoIterator<T, R>, callback:AsyncResultCallback<R>):Dynamic;
	function detect<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:AsyncResultArrayCallback<T>):Dynamic;
	function detectSeries<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:AsyncResultArrayCallback<T>):Dynamic;
	function sortBy<T, V>(arr:Array<T>, iterator:AsyncResultIterator<T, V>, callback:AsyncResultArrayCallback<T>):Dynamic;
	function some<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:AsyncResultArrayCallback<T>):Dynamic;
	function any<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:AsyncResultArrayCallback<T>):Dynamic;
	function every<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Bool -> Dynamic):Dynamic;
	function all<T>(arr:Array<T>, iterator:AsyncResultIterator<T, Bool>, callback:Bool -> Dynamic):Dynamic;
	function concat<T, R>(arr:Array<T>, iterator:AsyncResultIterator<T, Array<R>>, callback:AsyncResultArrayCallback<R>):Dynamic;
	function concatSeries<T, R>(arr:Array<T>, iterator:AsyncResultIterator<T, Array<R>>, callback:AsyncResultArrayCallback<R>):Dynamic;
	@:overload(function<T>(tasks:Dictionary<AsyncFunction<T>>, ?callback:AsyncResultObjectCallback<T>):Void { })
	function series<T>(tasks:Array<AsyncFunction<T>>, ?callback:AsyncResultArrayCallback<T>):Void;
	@:overload(function<T>(tasks:Dictionary<AsyncFunction<T>>, ?callback:AsyncResultObjectCallback<T>):Void { })
	function parallel<T>(tasks:Array<AsyncFunction<T>>, ?callback:AsyncResultArrayCallback<T>):Void;
	@:overload(function<T>(tasks:Dictionary<AsyncFunction<T>>, limit:Float, ?callback:AsyncResultObjectCallback<T>):Void { })
	function parallelLimit<T>(tasks:Array<AsyncFunction<T>>, limit:Float, ?callback:AsyncResultArrayCallback<T>):Void;
	function whilst(test:Void -> Bool, fn:AsyncVoidFunction, callback:Dynamic -> Void):Void;
	function doWhilst(fn:AsyncVoidFunction, test:Void -> Bool, callback:Dynamic -> Void):Void;
	function until(test:Void -> Bool, fn:AsyncVoidFunction, callback:Dynamic -> Void):Void;
	function doUntil(fn:AsyncVoidFunction, test:Void -> Bool, callback:Dynamic -> Void):Void;
	function waterfall(tasks:Array<haxe.Constraints.Function>, ?callback:AsyncResultArrayCallback<Dynamic>):Void;
	function queue<T>(worker:AsyncWorker<T>, concurrency:Float):AsyncQueue<T>;
	function priorityQueue<T>(worker:AsyncWorker<T>, concurrency:Float):AsyncPriorityQueue<T>;
	function auto(tasks:Dynamic, ?callback:AsyncResultArrayCallback<Dynamic>):Void;
	function iterator(tasks:Array<haxe.Constraints.Function>):haxe.Constraints.Function;
	function apply(fn:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):AsyncFunction<Dynamic>;
	function nextTick(callback:haxe.Constraints.Function):Void;
	function times<R>(n:Float, iterator:AsyncResultIterator<Float, R>, callback:AsyncResultArrayCallback<R>):Void;
	function timesSeries<R>(n:Float, iterator:AsyncResultIterator<Float, R>, callback:AsyncResultArrayCallback<R>):Void;
	function memoize(fn:haxe.Constraints.Function, ?hasher:haxe.Constraints.Function):haxe.Constraints.Function;
	function unmemoize(fn:haxe.Constraints.Function):haxe.Constraints.Function;
	function log(fn:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):Void;
	function dir(fn:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):Void;
	function noConflict():Async;
};
extern class AsyncTopLevel {
	static var async : Async;
}
extern class AsyncTopLevel {
	static var async : Async;
}
