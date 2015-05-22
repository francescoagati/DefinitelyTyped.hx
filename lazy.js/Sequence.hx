extern class SequenceTopLevel {
	static function define(methodName:Array<String>, overrides:Dynamic):haxe.Constraints.Function;
}
typedef Sequence<T> = {
	>SequenceBase<T>,
	function each(eachFn:ValueCallback<T>):Sequence<T>;
};
typedef SequenceBase<T> = {
	>SequenceBaser<T>,
	@:overload(function(count:Float):Sequence<T> { })
	function first():Dynamic;
	function indexOf(value:Dynamic, ?startIndex:Float):Sequence<T>;
	@:overload(function(count:Float):Sequence<T> { })
	function last():Dynamic;
	function lastIndexOf(value:Dynamic):Sequence<T>;
	function reverse():Sequence<T>;
};
typedef SequenceBaser<T> = {
	function async(interval:Float):AsyncSequence<T>;
	function chunk(size:Float):Sequence<T>;
	function compact():Sequence<T>;
	function concat(var_args:Array<T>):Sequence<T>;
	function consecutive(length:Float):Sequence<T>;
	function contains(value:T):Bool;
	@:overload(function(propertyName:String):ObjectLikeSequence<T> { })
	function countBy(keyFn:GetKeyCallback<T>):ObjectLikeSequence<T>;
	function dropWhile(predicateFn:TestCallback<T>):Sequence<T>;
	function every(predicateFn:TestCallback<T>):Bool;
	function filter(predicateFn:TestCallback<T>):Sequence<T>;
	function find(predicateFn:TestCallback<T>):Sequence<T>;
	function findWhere(properties:Dynamic):Sequence<T>;
	function flatten():Sequence<T>;
	function groupBy(keyFn:GetKeyCallback<T>):ObjectLikeSequence<T>;
	function initial(?count:Float):Sequence<T>;
	function intersection(var_args:Array<T>):Sequence<T>;
	function invoke(methodName:String):Sequence<T>;
	function isEmpty():Bool;
	function join(?delimiter:String):String;
	function map<U>(mapFn:MapCallback<T, U>):Sequence<U>;
	function max(?valueFn:NumberCallback<T>):T;
	function min(?valueFn:NumberCallback<T>):T;
	function none(?valueFn:TestCallback<T>):Bool;
	function pluck(propertyName:String):Sequence<T>;
	function reduce<U>(aggregatorFn:MemoCallback<T, U>, ?memo:U):U;
	function reduceRight<U>(aggregatorFn:MemoCallback<T, U>, memo:U):U;
	function reject(predicateFn:TestCallback<T>):Sequence<T>;
	function rest(?count:Float):Sequence<T>;
	function shuffle():Sequence<T>;
	function some(?predicateFn:TestCallback<T>):Bool;
	function sort(?sortFn:CompareCallback, ?descending:Bool):Sequence<T>;
	@:overload(function(sortFn:NumberCallback<T>, ?descending:Bool):Sequence<T> { })
	function sortBy(sortFn:String, ?descending:Bool):Sequence<T>;
	function sortedIndex(value:T):Sequence<T>;
	function size():Float;
	function sum(?valueFn:NumberCallback<T>):Sequence<T>;
	function takeWhile(predicateFn:TestCallback<T>):Sequence<T>;
	function union(var_args:Array<T>):Sequence<T>;
	function uniq():Sequence<T>;
	function where(properties:Dynamic):Sequence<T>;
	@:overload(function(var_args:Array<T>):Sequence<T> { })
	function without(var_args:haxe.extern.Rest<T>):Sequence<T>;
	function zip(var_args:Array<T>):Sequence<T>;
	function toArray():Array<T>;
	function toObject():Dynamic;
};
