typedef Observable<T> = {
	function finalValue():Observable<T>;
	@:overload(function<TAcc>(seed:TAcc, accumulator:TAcc -> T -> TAcc):Observable<TAcc> { })
	function aggregate(accumulator:T -> T -> T):Observable<T>;
	@:overload(function<TAcc>(accumulator:TAcc -> T -> TAcc, seed:TAcc):Observable<TAcc> { })
	function reduce(accumulator:T -> T -> T):Observable<T>;
	function any(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<Bool>;
	function some(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<Bool>;
	function isEmpty():Observable<Bool>;
	function all(?predicate:T -> Bool, ?thisArg:Dynamic):Observable<Bool>;
	function every(?predicate:T -> Bool, ?thisArg:Dynamic):Observable<Bool>;
	@:overload(function<TOther>(value:TOther, comparer:T -> TOther -> Bool):Observable<Bool> { })
	function contains(value:T):Observable<Bool>;
	function count(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<Float>;
	function sum(?keySelector:T -> Float -> Observable<T> -> Float, ?thisArg:Dynamic):Observable<Float>;
	@:overload(function(keySelector:T -> Float):Observable<T> { })
	function minBy<TKey>(keySelector:T -> TKey, comparer:TKey -> TKey -> Float):Observable<T>;
	function min(?comparer:T -> T -> Float):Observable<T>;
	@:overload(function(keySelector:T -> Float):Observable<T> { })
	function maxBy<TKey>(keySelector:T -> TKey, comparer:TKey -> TKey -> Float):Observable<T>;
	function max(?comparer:T -> T -> Float):Observable<Float>;
	function average(?keySelector:T -> Float -> Observable<T> -> Float, ?thisArg:Dynamic):Observable<Float>;
	@:overload(function<TOther>(second:IPromise<TOther>, comparer:T -> TOther -> Float):Observable<Bool> { })
	@:overload(function(second:Observable<T>):Observable<Bool> { })
	@:overload(function(second:IPromise<T>):Observable<Bool> { })
	@:overload(function<TOther>(second:Array<TOther>, comparer:T -> TOther -> Float):Observable<Bool> { })
	@:overload(function(second:Array<T>):Observable<Bool> { })
	function sequenceEqual<TOther>(second:Observable<TOther>, comparer:T -> TOther -> Float):Observable<Bool>;
	function elementAt(index:Float):Observable<T>;
	function elementAtOrDefault(index:Float, ?defaultValue:T):Observable<T>;
	function single(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function singleOrDefault(?predicate:T -> Float -> Observable<T> -> Bool, ?defaultValue:T, ?thisArg:Dynamic):Observable<T>;
	function first(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function firstOrDefault(?predicate:T -> Float -> Observable<T> -> Bool, ?defaultValue:T, ?thisArg:Dynamic):Observable<T>;
	function last(?predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function lastOrDefault(?predicate:T -> Float -> Observable<T> -> Bool, ?defaultValue:T, ?thisArg:Dynamic):Observable<T>;
	function find(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<T>;
	function findIndex(predicate:T -> Float -> Observable<T> -> Bool, ?thisArg:Dynamic):Observable<Float>;
};
