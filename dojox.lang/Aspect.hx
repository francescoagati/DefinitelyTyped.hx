typedef Counter = { };
typedef Cflow = { };
typedef Cflow = { };
typedef Cflow = { };
typedef Memoizer = { };
typedef MemoizerGuard = { };
typedef MemoizerGuard = { };
typedef Profiler = { };
typedef Timer = { };
typedef Tracer = { };
typedef Async = {
	function any(x:Dynamic):Void;
	function ifThen(cond:Dynamic, ifTrue:Dynamic, ifFalse:Dynamic):Void;
	function loop(cond:Dynamic, body:Dynamic):Void;
	function par(x:Dynamic):Void;
	function select(cond:Dynamic, x:Dynamic):Void;
	function seq(x:Dynamic):Void;
};
