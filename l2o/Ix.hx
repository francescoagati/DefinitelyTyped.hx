typedef Disposable = {
	function dispose():Void;
};
typedef Enumerator<T> = {
	>Disposable,
	function moveNext():Bool;
	function getCurrent():T;
};
typedef EnumeratorStatic = {
	function new<T>(moveNext:Void -> Bool, getCurrent:Void -> T, dispose:Void -> Void):Enumerator<T>;
	function create<T>(moveNext:Void -> Bool, getCurrent:Void -> T, ?dispose:Void -> Void):Enumerator<T>;
};
typedef EnumerableFunc<T, TResult> = { };
typedef EnumerablePredicate<T> = {
	>EnumerableFunc<T, Bool>,
};
typedef Predicate<T> = { };
typedef EqualityComparer<TFirst, TSecond> = { };
typedef Comparer<TFirst, TSecond> = { };
typedef Enumerable<T> = {
	function getEnumerator():Enumerator<T>;
	@:overload(function<TAccumulate>(seed:TAccumulate, func:TAccumulate -> T -> Float -> Enumerable<T> -> TAccumulate):TAccumulate { })
	@:overload(function(func:T -> T -> Float -> Enumerable<T> -> T):T { })
	function aggregate<TAccumulate, TResult>(seed:TAccumulate, func:TAccumulate -> T -> Float -> Enumerable<T> -> TAccumulate, resultSelector:TAccumulate -> TResult):TResult;
	@:overload(function<TAccumulate>(func:TAccumulate -> T -> Float -> Enumerable<T> -> TAccumulate, seed:TAccumulate):TAccumulate { })
	function reduce(func:T -> T -> Float -> Enumerable<T> -> T):T;
	function all(predicate:EnumerablePredicate<T>, ?thisArg:Dynamic):Bool;
	function every(predicate:EnumerablePredicate<T>, ?thisArg:Dynamic):Bool;
	function any(?predicate:EnumerablePredicate<T>, ?thisArg:Dynamic):Bool;
	function some(?predicate:EnumerablePredicate<T>, ?thisArg:Dynamic):Bool;
	function average(?selector:EnumerableFunc<T, Float>):Float;
	@:overload(function<TResult>(selector:EnumerableFunc<T, TResult>):TResult { })
	function max():T;
	@:overload(function<TResult>(selector:EnumerableFunc<T, TResult>):TResult { })
	function min():T;
	function sum(?selector:EnumerableFunc<T, Float>):Float;
	function concat<T>(sources:haxe.extern.Rest<Enumerable<T>>):Enumerable<T>;
	@:overload(function(value:T):Bool { })
	function contains<TValue>(value:TValue, comparer:EqualityComparer<T, TValue>):Bool;
	function count(?predicate:EnumerablePredicate<T>, ?thisArg:Dynamic):Float;
	function defaultIfEmpty(?defaultValue:T):Enumerable<T>;
	function distinct(?comparer:EqualityComparer<T, T>):Enumerable<T>;
	function elementAt(index:Float):T;
	function elementAtOrDefault(index:Float):T;
	@:overload(function(second:Enumerable<T>):Enumerable<T> { })
	function except<TOther>(second:Enumerable<TOther>, comparer:EqualityComparer<T, TOther>):Enumerable<T>;
	function first(?predicate:Predicate<T>):T;
	function firstOrDefault(?predicate:Predicate<T>):T;
	function last(?predicate:Predicate<T>):T;
	function lastOrDefault(?predicate:Predicate<T>):T;
	function single(?predicate:Predicate<T>):T;
	function singleOrDefault(?predicate:Predicate<T>):T;
	function forEach(action:EnumerableFunc<T, Void>, ?thisArg:Dynamic):Void;
	@:overload(function<TKey, TElement>(keySelector:T -> TKey, elementSelector:T -> TElement):Enumerable<Grouping<TKey, TElement>> { })
	@:overload(function<TKey>(keySelector:T -> TKey):Enumerable<Grouping<TKey, T>> { })
	@:overload(function<TKey, TElement>(keySelector:T -> TKey, elementSelector:T -> TElement, _:Bool, comparer:EqualityComparer<TKey, TKey>):Enumerable<Grouping<TKey, TElement>> { })
	@:overload(function<TKey, TResult>(keySelector:T -> TKey, _:Bool, resultSelector:TKey -> Enumerable<T> -> TResult, ?comparer:EqualityComparer<TKey, TKey>):Enumerable<TResult> { })
	@:overload(function<TKey>(keySelector:T -> TKey, _:Bool, __:Bool, comparer:EqualityComparer<TKey, TKey>):Enumerable<Grouping<TKey, T>> { })
	function groupBy<TKey, TElement, TResult>(keySelector:T -> TKey, elementSelector:T -> TElement, resultSelector:TKey -> Enumerable<TElement> -> TResult, ?comparer:EqualityComparer<TKey, TKey>):Enumerable<TResult>;
	@:overload(function<TInner, TKey, TResult>(inner:Enumerable<TInner>, outerKeySelector:T -> TKey, innerKeySelector:TInner -> TKey, resultSelector:T -> Enumerable<TInner> -> TResult):Enumerable<TResult> { })
	function groupJoin<TInner, TOuterKey, TInnerKey, TResult>(inner:Enumerable<TInner>, outerKeySelector:T -> TOuterKey, innerKeySelector:TInner -> TInnerKey, resultSelector:T -> Enumerable<TInner> -> TResult, comparer:EqualityComparer<TOuterKey, TInnerKey>):Enumerable<TResult>;
	@:overload(function<TInner, TKey, TResult>(inner:Enumerable<TInner>, outerKeySelector:T -> TKey, innerKeySelector:TInner -> TKey, resultSelector:T -> TInner -> TResult):Enumerable<TResult> { })
	function join<TInner, TOuterKey, TInnerKey, TResult>(inner:Enumerable<TInner>, outerKeySelector:T -> TOuterKey, innerKeySelector:TInner -> TInnerKey, resultSelector:T -> TInner -> TResult, comparer:EqualityComparer<TOuterKey, TInnerKey>):Enumerable<TResult>;
	@:overload(function(second:Enumerable<T>):Enumerable<T> { })
	function intersect<TSecond>(second:Enumerable<TSecond>, comparer:EqualityComparer<T, TSecond>):Enumerable<T>;
	function union(second:Enumerable<T>, ?comparer:EqualityComparer<T, T>):Enumerable<T>;
	function orderBy<TKey>(keySelector:T -> TKey, ?comparer:Comparer<TKey, TKey>):OrderedEnumerable<T>;
	function orderByDescending<TKey>(keySelector:T -> TKey, ?comparer:Comparer<TKey, TKey>):OrderedEnumerable<T>;
	function reverse():Enumerable<T>;
	function select<TResult>(selector:EnumerableFunc<T, TResult>, ?thisArg:Dynamic):Enumerable<TResult>;
	function map<TResult>(selector:EnumerableFunc<T, TResult>, ?thisArg:Dynamic):Enumerable<TResult>;
	@:overload(function<TCollection>(collectionSelector:T -> Float -> Enumerable<TCollection>):Enumerable<TCollection> { })
	function selectMany<TCollection, TResult>(collectionSelector:T -> Float -> Enumerable<TCollection>, resultSelector:T -> TCollection -> TResult):Enumerable<TResult>;
	@:overload(function(second:Enumerable<T>):Bool { })
	function sequenceEqual<TSecond>(second:Enumerable<TSecond>, comparer:EqualityComparer<T, TSecond>):Bool;
	function skip(count:Float):Enumerable<T>;
	function skipWhile(selector:EnumerablePredicate<T>, ?thisArg:Dynamic):Enumerable<T>;
	function take(count:Float):Enumerable<T>;
	function takeWhile(selector:EnumerablePredicate<T>, ?thisArg:Dynamic):Enumerable<T>;
	function toArray():Array<T>;
	@:overload(function<TKey>(keySelector:T -> TKey):Dictionary<TKey, T> { })
	@:overload(function<TKey>(keySelector:T -> TKey, _:Bool, comparer:EqualityComparer<TKey, TKey>):Dictionary<TKey, T> { })
	function toDictionary<TKey, TValue>(keySelector:T -> TKey, elementSelector:T -> TValue, ?comparer:EqualityComparer<TKey, TKey>):Dictionary<TKey, TValue>;
	@:overload(function<TKey>(keySelector:T -> TKey):Lookup<TKey, T> { })
	@:overload(function<TKey>(keySelector:T -> TKey, _:Bool, comparer:EqualityComparer<TKey, TKey>):Lookup<TKey, T> { })
	function toLookup<TKey, TValue>(keySelector:T -> TKey, elementSelector:T -> TValue, ?comparer:EqualityComparer<TKey, TKey>):Lookup<TKey, TValue>;
	function where(selector:EnumerablePredicate<T>, ?thisArg:Dynamic):Enumerable<T>;
	function filter(selector:EnumerablePredicate<T>, ?thisArg:Dynamic):Enumerable<T>;
	function zip<TRight, TResult>(right:Enumerable<TRight>, selector:T -> TRight -> TResult):Enumerable<TResult>;
};
typedef Grouping<TKey, T> = {
	>Enumerable<T>,
	var key : TKey;
};
typedef OrderedEnumerable<T> = {
	>Enumerable<T>,
	function thenBy<TKey>(keySelector:T -> TKey, ?comparer:Comparer<TKey, TKey>):OrderedEnumerable<T>;
	function thenByDescending<TKey>(keySelector:T -> TKey, ?comparer:Comparer<TKey, TKey>):OrderedEnumerable<T>;
};
extern class Dictionary<TKey, TValue> {
	function new(?capacity:Float, ?comparer:EqualityComparer<TKey, TKey>):Void;
	function toEnumerable():Enumerable<KeyValuePair<TKey, TValue>>;
	function add(key:TKey, value:TValue):Void;
	function remove(key:TKey):Bool;
	function clear():Void;
	function length():Float;
	function tryGetValue(key:TKey):TValue;
	function get(key:TKey):TValue;
	function set(key:TKey, value:TValue):Void;
	function getValues():Array<TValue>;
	function has(key:TKey):Bool;
}
typedef KeyValuePair<TKey, TValue> = {
	var key : TKey;
	var value : TValue;
};
typedef Lookup<TKey, TValue> = {
	function toEnumerable():Enumerable<Grouping<TKey, TValue>>;
	function has(key:TKey):Bool;
	function length():Float;
	function get(key:TKey):Enumerable<TValue>;
};
typedef EnumerableStatic = {
	function new<T>(getEnumerator:Void -> Enumerator<T>):Enumerable<T>;
	function create<T>(getEnumerator:Void -> Enumerator<T>):Enumerable<T>;
	function concat<T>(sources:haxe.extern.Rest<Enumerable<T>>):Enumerable<T>;
	function empty<T>():Enumerable<T>;
	function fromArray<T>(array:Array<T>):Enumerable<T>;
	function return<T>(value:T):Enumerable<T>;
	function returnValue<T>(value:T):Enumerable<T>;
	function range(start:Float, count:Float):Enumerable<Float>;
	function repeat<T>(value:T, ?repeatCount:Float):Enumerable<T>;
	@:overload(function<T>(first:Enumerable<T>, second:Enumerable<T>):Bool { })
	function sequenceEqual<TFirst, TSecond>(first:Enumerable<TFirst>, second:Enumerable<TSecond>, comparer:EqualityComparer<TFirst, TSecond>):Bool;
};
extern class IxTopLevel {
	static var Enumerator : EnumeratorStatic;
	static var Enumerable : EnumerableStatic;
}
