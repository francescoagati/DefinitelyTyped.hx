extern class __DeclareCreatedObject {
	function new():Void;
	function createSubclass(mixins:Array<haxe.Constraints.Function>, props:Dynamic):dojo._base.declare.__DeclareCreatedObject;
	function extend(source:Dynamic):Void;
	function getInherited(name:String, args:Dynamic):Dynamic;
	function inherited(name:String, args:Dynamic, newArgs:Dynamic):Dynamic;
	function isInstanceOf(cls:haxe.Constraints.Function):Dynamic;
}
typedef Deferred = { };
typedef Deferred = {
	var fired : Float;
	var promise : Dynamic;
	function addBoth(callback:haxe.Constraints.Function):Dynamic;
	function addCallback(callback:haxe.Constraints.Function):Dynamic;
	function addCallbacks(callback:haxe.Constraints.Function, errback:haxe.Constraints.Function):Dynamic;
	function addErrback(errback:haxe.Constraints.Function):Dynamic;
	function callback(value:Dynamic):Void;
	function cancel():Void;
	function errback(error:Dynamic):Void;
	function isCanceled():Bool;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isResolved():Bool;
	function progress(update:Dynamic):Void;
	function reject(error:Dynamic):Void;
	function resolve(value:Dynamic):Void;
	function then(resolvedCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function, progressCallback:haxe.Constraints.Function):Dynamic;
	function when(valueOrPromise:Dynamic, callback:haxe.Constraints.Function, errback:haxe.Constraints.Function, progback:haxe.Constraints.Function):Dynamic;
};
