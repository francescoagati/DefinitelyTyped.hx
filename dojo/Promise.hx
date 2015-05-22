typedef All = { };
typedef All = { };
typedef First = { };
typedef First = { };
typedef Instrumentation = { };
typedef Callback<T, U> = { };
typedef Promise<T> = {
	function always<U>(callbackOrErrback:Callback<Dynamic, U>):Promise<U>;
	function cancel(reason:Dynamic, strict:Bool):Dynamic;
	function isCanceled():Bool;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isResolved():Bool;
	function otherwise<U>(errback:Callback<Dynamic, U>):Promise<U>;
	function then<U>(callback:Callback<T, U>, ?errback:Callback<Dynamic, U>, ?progback:Callback<Dynamic, U>):Promise<U>;
	function toString():String;
	function trace():Promise<T>;
	function traceRejected():Promise<T>;
};
typedef Tracer = {
	function on(type:String, listener:haxe.Constraints.Function):Void;
};
