extern class Promise<R> {
	@:overload(function(callback:R -> Void -> Dynamic -> Void -> Void):Void { })
	function new(callback:Promise.Thenable<R> -> Void -> Dynamic -> Void -> Void):Void;
	@:overload(function<U>(onFulfill:R -> Promise.Thenable<U>, ?onReject:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	@:overload(function<U>(onFulfill:R -> U, onReject:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	@:overload(function<U>(?onFulfill:R -> U, ?onReject:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	function then<U>(onFulfill:R -> Promise.Thenable<U>, onReject:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Promise<U>;
	@:overload(function<U>(?onReject:Dynamic -> U):Promise<U> { })
	@:overload(function<U>(predicate:Dynamic -> Bool, onReject:Dynamic -> Promise.Thenable<U>):Promise<U> { })
	@:overload(function<U>(predicate:Dynamic -> Bool, onReject:Dynamic -> U):Promise<U> { })
	@:overload(function<U>(ErrorClass:haxe.Constraints.Function, onReject:Dynamic -> Promise.Thenable<U>):Promise<U> { })
	@:overload(function<U>(ErrorClass:haxe.Constraints.Function, onReject:Dynamic -> U):Promise<U> { })
	function catch<U>(?onReject:Dynamic -> Promise.Thenable<U>):Promise<U>;
	@:overload(function<U>(?onReject:Dynamic -> U):Promise<U> { })
	@:overload(function<U>(predicate:Dynamic -> Bool, onReject:Dynamic -> Promise.Thenable<U>):Promise<U> { })
	@:overload(function<U>(predicate:Dynamic -> Bool, onReject:Dynamic -> U):Promise<U> { })
	@:overload(function<U>(ErrorClass:haxe.Constraints.Function, onReject:Dynamic -> Promise.Thenable<U>):Promise<U> { })
	@:overload(function<U>(ErrorClass:haxe.Constraints.Function, onReject:Dynamic -> U):Promise<U> { })
	function caught<U>(?onReject:Dynamic -> Promise.Thenable<U>):Promise<U>;
	@:overload(function<U>(onReject:Dynamic -> U):Promise<U> { })
	function error<U>(onReject:Dynamic -> Promise.Thenable<U>):Promise<U>;
	@:overload(function<U>(handler:Void -> U):Promise<R> { })
	function finally<U>(handler:Void -> Promise.Thenable<U>):Promise<R>;
	@:overload(function<U>(handler:Void -> U):Promise<R> { })
	function lastly<U>(handler:Void -> Promise.Thenable<U>):Promise<R>;
	@:overload(function(thisArg:Dynamic):Promise<Void> { })
	function bind(thisArg:Dynamic):Promise<R>;
	@:overload(function<U>(onFulfilled:R -> Promise.Thenable<U>, ?onRejected:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Void { })
	@:overload(function<U>(onFulfilled:R -> U, onRejected:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Void { })
	@:overload(function<U>(?onFulfilled:R -> U, ?onRejected:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Void { })
	function done<U>(onFulfilled:R -> Promise.Thenable<U>, onRejected:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Void;
	@:overload(function<U>(onFulfill:R -> U):Promise<R> { })
	function tap<U>(onFulFill:R -> Promise.Thenable<U>):Promise<R>;
	function progressed(handler:Dynamic -> Dynamic):Promise<R>;
	@:overload(function<R>(value:Promise.Thenable<R>, ms:Float):Promise<R> { })
	@:overload(function<R>(value:R, ms:Float):Promise<R> { })
	@:overload(function(ms:Float):Promise<Void> { })
	function delay(ms:Float):Promise<R>;
	function timeout(ms:Float, ?message:String):Promise<R>;
	@:overload(function(sink:haxe.extern.Rest<Dynamic>):Void { })
	function nodeify(callback:Dynamic -> ?R -> Void):Promise<R>;
	function cancellable():Promise<R>;
	function cancel<U>():Promise<U>;
	@:overload(function<U>(onFulfilled:R -> Promise.Thenable<U>, ?onRejected:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	@:overload(function<U>(onFulfilled:R -> U, onRejected:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	@:overload(function<U>(?onFulfilled:R -> U, ?onRejected:Dynamic -> U, ?onProgress:Dynamic -> Dynamic):Promise<U> { })
	function fork<U>(onFulfilled:R -> Promise.Thenable<U>, onRejected:Dynamic -> Promise.Thenable<U>, ?onProgress:Dynamic -> Dynamic):Promise<U>;
	function uncancellable():Promise<R>;
	function isCancellable():Bool;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isPending():Bool;
	function isResolved():Bool;
	function value():R;
	function reason():Dynamic;
	function inspect():Promise.Inspection<R>;
	function call(propertyName:String, args:haxe.extern.Rest<Dynamic>):Promise<Dynamic>;
	@:overload(function<U>(value:U):Promise<U> { })
	function return():Promise<Dynamic>;
	@:overload(function<U>(value:U):Promise<U> { })
	function thenReturn():Promise<Dynamic>;
	function throw(reason:Error):Promise<R>;
	function thenThrow(reason:Error):Promise<R>;
	function toString():String;
	function toJSON():Dynamic;
	@:overload(function<U>(onFulfill:haxe.Constraints.Function, ?onReject:Dynamic -> U):Promise<U> { })
	function spread<U>(onFulfill:haxe.Constraints.Function, ?onReject:Dynamic -> Promise.Thenable<U>):Promise<U>;
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>):Promise<Array<R>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<R>):Promise<Array<R>> { })
	function all<U>():Promise<Array<U>>;
	@:overload(function(object:Promise<Dynamic>):Promise<Dynamic> { })
	@:overload(function(object:Dynamic):Promise<Dynamic> { })
	function props():Promise<Dynamic>;
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>):Promise<Array<Promise.Inspection<R>>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>):Promise<Array<Promise.Inspection<R>>> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>):Promise<Array<Promise.Inspection<R>>> { })
	@:overload(function<R>(values:Array<R>):Promise<Array<Promise.Inspection<R>>> { })
	function settle<U>():Promise<Array<Promise.Inspection<U>>>;
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>):Promise<R> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>):Promise<R> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>):Promise<R> { })
	@:overload(function<R>(values:Array<R>):Promise<R> { })
	function any<U>():Promise<U>;
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, count:Float):Promise<Array<R>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>, count:Float):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>, count:Float):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<R>, count:Float):Promise<Array<R>> { })
	function some<U>(count:Float):Promise<Array<U>>;
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>):Promise<R> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>):Promise<R> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>):Promise<R> { })
	@:overload(function<R>(values:Array<R>):Promise<R> { })
	function race<U>():Promise<U>;
	@:overload(function<Q, U>(mapper:Q -> Float -> Float -> U):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, mapper:R -> Float -> Float -> Promise.Thenable<U>):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, mapper:R -> Float -> Float -> U):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<R>>, mapper:R -> Float -> Float -> Promise.Thenable<U>):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<R>>, mapper:R -> Float -> Float -> U):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Array<Promise.Thenable<R>>, mapper:R -> Float -> Float -> Promise.Thenable<U>):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Array<Promise.Thenable<R>>, mapper:R -> Float -> Float -> U):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Array<R>, mapper:R -> Float -> Float -> Promise.Thenable<U>):Promise<Array<U>> { })
	@:overload(function<R, U>(values:Array<R>, mapper:R -> Float -> Float -> U):Promise<Array<U>> { })
	function map<Q, U>(mapper:Q -> Float -> Float -> Promise.Thenable<U>):Promise<Array<U>>;
	@:overload(function<Q, U>(reducer:U -> Q -> Float -> Float -> U, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, reducer:U -> R -> Float -> Float -> Promise.Thenable<U>, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, reducer:U -> R -> Float -> Float -> U, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<R>>, reducer:U -> R -> Float -> Float -> Promise.Thenable<U>, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Promise.Thenable<Array<R>>, reducer:U -> R -> Float -> Float -> U, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Array<Promise.Thenable<R>>, reducer:U -> R -> Float -> Float -> Promise.Thenable<U>, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Array<Promise.Thenable<R>>, reducer:U -> R -> Float -> Float -> U, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Array<R>, reducer:U -> R -> Float -> Float -> Promise.Thenable<U>, ?initialValue:U):Promise<U> { })
	@:overload(function<R, U>(values:Array<R>, reducer:U -> R -> Float -> Float -> U, ?initialValue:U):Promise<U> { })
	function reduce<Q, U>(reducer:U -> Q -> Float -> Float -> Promise.Thenable<U>, ?initialValue:U):Promise<U>;
	@:overload(function<U>(filterer:U -> Float -> Float -> Bool):Promise<Array<U>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, filterer:R -> Float -> Float -> Promise.Thenable<Bool>):Promise<Array<R>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<Promise.Thenable<R>>>, filterer:R -> Float -> Float -> Bool):Promise<Array<R>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>, filterer:R -> Float -> Float -> Promise.Thenable<Bool>):Promise<Array<R>> { })
	@:overload(function<R>(values:Promise.Thenable<Array<R>>, filterer:R -> Float -> Float -> Bool):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>, filterer:R -> Float -> Float -> Promise.Thenable<Bool>):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<Promise.Thenable<R>>, filterer:R -> Float -> Float -> Bool):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<R>, filterer:R -> Float -> Float -> Promise.Thenable<Bool>):Promise<Array<R>> { })
	@:overload(function<R>(values:Array<R>, filterer:R -> Float -> Float -> Bool):Promise<Array<R>> { })
	function filter<U>(filterer:U -> Float -> Float -> Promise.Thenable<Bool>):Promise<Array<U>>;
	@:overload(function<R>(fn:Void -> R, ?args:Array<Dynamic>, ?ctx:Dynamic):Promise<R> { })
	static function try<R>(fn:Void -> Promise.Thenable<R>, ?args:Array<Dynamic>, ?ctx:Dynamic):Promise<R>;
	@:overload(function<R>(fn:Void -> R, ?args:Array<Dynamic>, ?ctx:Dynamic):Promise<R> { })
	static function attempt<R>(fn:Void -> Promise.Thenable<R>, ?args:Array<Dynamic>, ?ctx:Dynamic):Promise<R>;
	static function method(fn:haxe.Constraints.Function):haxe.Constraints.Function;
	@:overload(function<R>(value:Promise.Thenable<R>):Promise<R> { })
	@:overload(function<R>(value:R):Promise<R> { })
	static function resolve():Promise<Void>;
	@:overload(function<R>(reason:Dynamic):Promise<R> { })
	static function reject(reason:Dynamic):Promise<Dynamic>;
	static function defer<R>():Promise.Resolver<R>;
	@:overload(function<R>(value:R):Promise<R> { })
	static function cast<R>(value:Promise.Thenable<R>):Promise<R>;
	static function is(value:Dynamic):Bool;
	static function longStackTraces():Void;
	@:overload(function<T, A1>(func:A1 -> Dynamic -> T -> Void -> Void, ?receiver:Dynamic):A1 -> Promise<T> { })
	@:overload(function<T, A1, A2>(func:A1 -> A2 -> Dynamic -> T -> Void -> Void, ?receiver:Dynamic):A1 -> A2 -> Promise<T> { })
	@:overload(function<T, A1, A2, A3>(func:A1 -> A2 -> A3 -> Dynamic -> T -> Void -> Void, ?receiver:Dynamic):A1 -> A2 -> A3 -> Promise<T> { })
	@:overload(function<T, A1, A2, A3, A4>(func:A1 -> A2 -> A3 -> A4 -> Dynamic -> T -> Void -> Void, ?receiver:Dynamic):A1 -> A2 -> A3 -> A4 -> Promise<T> { })
	@:overload(function<T, A1, A2, A3, A4, A5>(func:A1 -> A2 -> A3 -> A4 -> A5 -> Dynamic -> T -> Void -> Void, ?receiver:Dynamic):A1 -> A2 -> A3 -> A4 -> A5 -> Promise<T> { })
	@:overload(function(nodeFunction:haxe.Constraints.Function, ?receiver:Dynamic):haxe.Constraints.Function { })
	static function promisify<T>(func:Dynamic -> T -> Void -> Void, ?receiver:Dynamic):Void -> Promise<T>;
	static function promisifyAll(target:Dynamic):Dynamic;
	static function coroutine<R>(generatorFunction:haxe.Constraints.Function):haxe.Constraints.Function;
	static function spawn<R>(generatorFunction:haxe.Constraints.Function):Promise<R>;
	static function noConflict():Dynamic;
	static function onPossiblyUnhandledRejection(handler:Dynamic -> Dynamic):Void;
	@:overload(function<R>(values:haxe.extern.Rest<R>):Promise<Array<R>> { })
	static function join<R>(values:haxe.extern.Rest<Promise.Thenable<R>>):Promise<Array<R>>;
}
