typedef LazyStatic = {
	function strict():LazyStatic;
	function generate<T>(generatorFn:GeneratorCallback<T>, ?length:Float):GeneratedSequence<T>;
	@:overload(function(from:Float, to:Float, ?step:Float):GeneratedSequence<Float> { })
	function range(to:Float):GeneratedSequence<Float>;
	function repeat<T>(value:T, ?count:Float):GeneratedSequence<T>;
	function on<T>(eventType:String):Sequence<T>;
	function readFile(path:String):StringLikeSequence;
	function makeHttpRequest(path:String):StringLikeSequence;
};
typedef ArrayLike<T> = {
	var length : Float;
};
typedef Callback = { };
typedef ErrorCallback = { };
typedef ValueCallback<T> = { };
typedef GetKeyCallback<T> = { };
typedef TestCallback<T> = { };
typedef MapCallback<T, U> = { };
typedef MapStringCallback = { };
typedef NumberCallback<T> = { };
typedef MemoCallback<T, U> = { };
typedef GeneratorCallback<T> = { };
typedef CompareCallback = { };
typedef Iterator<T> = {
	function new(sequence:Sequence<T>):Iterator<T>;
	function current():T;
	function moveNext():Bool;
};
typedef GeneratedSequence<T> = {
	>Sequence<T>,
	function new(generatorFn:GeneratorCallback<T>, length:Float):GeneratedSequence<T>;
	function length():Float;
};
typedef AsyncSequence<T> = {
	>SequenceBase<T>,
	function each(callback:ValueCallback<T>):AsyncHandle<T>;
};
typedef AsyncHandle<T> = {
	function cancel():Void;
	function onComplete(callback:Callback):Void;
	function onError(callback:ErrorCallback):Void;
};
