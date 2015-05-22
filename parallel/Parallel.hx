typedef ParallelOptions = {
	@:optional
	var evalPath : String;
	@:optional
	var maxWorkers : Float;
	@:optional
	var synchronous : Bool;
};
extern class Parallel<T> {
	function new(data:T, ?opts:ParallelOptions):Void;
	var data : T;
	function spawn(fn:T -> T):Parallel<T>;
	function map<N>(fn:N -> N):Parallel<T>;
	function reduce<N>(fn:Array<N> -> N):Parallel<T>;
	function then(success:T -> Void, ?fail:Error -> Void):Parallel<T>;
	@:overload(function(fn:haxe.Constraints.Function):Parallel<T> { })
	function require(file:String):Parallel<T>;
}
