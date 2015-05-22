typedef Selector<T> = { };
typedef CrossFilterStatic = {
	var version : String;
	function permute<T>(array:Array<T>, index:Array<Float>):Array<T>;
	var bisect : { function by<T>(value:Selector<T>):Bisector<T>; };
	var heap : { function by<T>(value:Selector<T>):Heap<T>; };
	var heapselect : { function by<T>(value:Selector<T>):HeapSelect<T>; };
	var insertionsort : { function by<T>(value:Selector<T>):Sort<T>; };
	var quicksort : { function by<T>(value:Selector<T>):Sort<T>; };
};
typedef Bisection<T> = { };
typedef Bisector<T> = {
	>Bisection<T>,
	var left : Bisection<T>;
	var right : Bisection<T>;
};
typedef Heap<T> = {
	function sort(array:Array<T>, lo:Float, hi:Float):Array<T>;
};
typedef HeapSelect<T> = { };
typedef Sort<T> = { };
typedef GroupAll<T> = {
	function reduce<TValue>(add:TValue -> T -> TValue, remove:TValue -> T -> TValue, initial:Void -> TValue):GroupAll<T>;
	function reduceCount():GroupAll<T>;
	function reduceSum(value:Selector<T>):GroupAll<T>;
	function dispose():GroupAll<T>;
	function value():T;
};
typedef Grouping<TKey, TValue> = {
	var key : TKey;
	var value : TValue;
};
typedef Group<T, TKey, TValue> = {
	function top(k:Float):Array<Grouping<TKey, TValue>>;
	function all():Array<Grouping<TKey, TValue>>;
	function reduce<TGroup>(add:TGroup -> T -> TGroup, remove:TGroup -> T -> TGroup, initial:Void -> TGroup):Group<T, TKey, TGroup>;
	function reduceCount():Group<T, TKey, Float>;
	function reduceSum<TGroup>(value:T -> TGroup):Group<T, TKey, TGroup>;
	function order(?value:Selector<TValue>):Group<T, TKey, TValue>;
	function orderNatural():Group<T, TKey, TValue>;
	function size():Float;
	function dispose():Group<T, TKey, TValue>;
};
typedef CrossFilter<T> = {
	function add(records:Array<T>):CrossFilter<T>;
	function remove():CrossFilter<T>;
	function size():Float;
	function groupAll():GroupAll<T>;
	function dimension<TDimension>(value:T -> TDimension):Dimension<T, TDimension>;
};
typedef Dimension<T, TDimension> = {
	@:overload(function(value:TDimension):Dimension<T, TDimension> { })
	@:overload(function(value:Selector<TDimension>):Dimension<T, TDimension> { })
	function filter(value:Array<TDimension>):Dimension<T, TDimension>;
	function filterExact(value:TDimension):Dimension<T, TDimension>;
	function filterRange(value:Array<TDimension>):Dimension<T, TDimension>;
	function filterFunction(value:Selector<TDimension>):Dimension<T, TDimension>;
	function filterAll():Dimension<T, TDimension>;
	function top(k:Float):Array<T>;
	function bottom(k:Float):Array<T>;
	function dispose():Void;
	@:overload(function<TGroup>(groupValue:TDimension -> TGroup):Group<T, TDimension, TGroup> { })
	function group():Group<T, TDimension, TDimension>;
	function groupAll():GroupAll<T>;
};
