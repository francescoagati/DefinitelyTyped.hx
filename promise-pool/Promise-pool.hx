typedef IResult = {
	var fulfilled : Float;
	var rejected : Float;
	var total : Float;
};
typedef IProgress = {
	var index : Float;
	var success : Bool;
	var error : Dynamic;
	var retries : Float;
	var fulfilled : Float;
	var rejected : Float;
	var pending : Float;
	var total : Float;
};
extern class Pool<T> {
	var concurrency : Float;
	var _tasksData : Dynamic;
	var processor : T -> Float -> Q.IPromise<Void>;
	var _deferred : Dynamic;
	var _pauseDeferred : Dynamic;
	var fulfilled : Float;
	var rejected : Float;
	var pending : Float;
	var total : Float;
	var endless : Bool;
	var retries : Float;
	var retryInterval : Float;
	var maxRetryInterval : Float;
	var retryIntervalMultiplier : Float;
	var _index : Dynamic;
	var _currentConcurrency : Dynamic;
	var onProgress : IProgress -> Void;
	function new(processor:T -> Float -> Q.IPromise<Void>, concurrency:Float, ?endless:Bool, ?tasksData:Array<T>):Void;
	@:overload(function(tasksData:Array<T>):Void { })
	function add(taskData:T):Void;
	function start(?onProgress:IProgress -> Void):Q.Promise<IResult>;
	function _start():Dynamic;
	function _process(data:Dynamic, index:Dynamic):Dynamic;
	function _notifyProgress(index:Dynamic, success:Dynamic, err:Dynamic, retries:Dynamic):Dynamic;
	function _next():Dynamic;
	function pause():Q.Promise<Void>;
	function resume():Void;
	function reset():Q.Promise<Void>;
}
