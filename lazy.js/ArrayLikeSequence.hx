extern class ArrayLikeSequenceTopLevel {
	static function define(methodName:Array<String>, overrides:Dynamic):haxe.Constraints.Function;
}
typedef ArrayLikeSequence<T> = {
	>Sequence<T>,
	function concat(var_args:Array<T>):ArrayLikeSequence<T>;
	function first(?count:Float):ArrayLikeSequence<T>;
	function get(index:Float):T;
	function length():Float;
	function map<U>(mapFn:MapCallback<T, U>):ArrayLikeSequence<U>;
	function pop():ArrayLikeSequence<T>;
	function rest(?count:Float):ArrayLikeSequence<T>;
	function reverse():ArrayLikeSequence<T>;
	function shift():ArrayLikeSequence<T>;
	function slice(begin:Float, ?end:Float):ArrayLikeSequence<T>;
};
