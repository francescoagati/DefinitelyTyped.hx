typedef KnockoutObservableArrayFunctions<T> = {
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function each<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function forEach<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function map<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function collect<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	function reduce<TResult>(iterator:_.MemoIterator<T, TResult>, memo:TResult, ?context:Dynamic):TResult;
	function inject<TResult>(iterator:_.MemoIterator<T, TResult>, memo:TResult, ?context:Dynamic):TResult;
	function foldl<TResult>(iterator:_.MemoIterator<T, TResult>, memo:TResult, ?context:Dynamic):TResult;
	function reduceRight<TResult>(iterator:_.MemoIterator<T, TResult>, memo:TResult, ?context:Dynamic):TResult;
	function foldr<TResult>(iterator:_.MemoIterator<T, TResult>, memo:TResult, ?context:Dynamic):TResult;
	function find(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	function detect(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	function filter(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function filter_(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function select(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function select_(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function where<U:({ })>(properties:U):Array<T>;
	function reject(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function reject_(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function all(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function every(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function any(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function some(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function contains(value:T):Bool;
	function include(value:T):Bool;
	function invoke(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function invoke_(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function pluck(propertyName:String):Array<T>;
	function max(iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):Dynamic;
	function min(iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):Dynamic;
	@:overload(function(iterator:String, ?context:Dynamic):Array<T> { })
	function sortBy<TSort>(iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T>;
	@:overload(function(iterator:String, ?context:Dynamic):Array<T> { })
	function sortBy_<TSort>(iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T>;
	@:overload(function(iterator:String):_.Dictionary<Array<T>> { })
	function groupBy<TSort>(iterator:_.ListIterator<T, TSort>):_.Dictionary<Array<T>>;
	@:overload(function(iterator:String):_.Dictionary<Array<T>> { })
	function groupBy_<TSort>(iterator:_.ListIterator<T, TSort>):_.Dictionary<Array<T>>;
	@:overload(function(iterator:String):_.Dictionary<Array<Float>> { })
	function countBy(iterator:_.ListIterator<T, Dynamic>):_.Dictionary<Array<Float>>;
	function shuffle():Array<T>;
	function shuffle_():Array<T>;
	function size():Float;
	@:overload(function(n:Float):Array<T> { })
	function first():T;
	@:overload(function(n:Float):Array<T> { })
	function head():T;
	@:overload(function(n:Float):Array<T> { })
	function take():T;
	function initial(?n:Float):Array<T>;
	@:overload(function(n:Float):Array<T> { })
	function last():T;
	function rest(?n:Float):Array<T>;
	function rest_(?n:Float):Array<T>;
	function tail(?n:Float):Array<T>;
	function tail_(?n:Float):Array<T>;
	function drop(?n:Float):Array<T>;
	function drop_(?n:Float):Array<T>;
	function compact():Array<T>;
	function compact_():Array<T>;
	function flatten(?shallow:Bool):Array<Dynamic>;
	function flatten_(?shallow:Bool):Array<Dynamic>;
	function without(values:haxe.extern.Rest<T>):Array<T>;
	function without_(values:haxe.extern.Rest<T>):Array<T>;
	function union(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
	function union_(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
	function intersection(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
	function intersection_(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
	function difference(others:haxe.extern.Rest<Array<T>>):Array<T>;
	function difference_(others:haxe.extern.Rest<Array<T>>):Array<T>;
	function uniq<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):Array<T>;
	function uniq_<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):Array<T>;
	function unique<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):Array<T>;
	function unique_<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):Array<T>;
	function zip(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function zip_(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function object():Dynamic;
	function indexOf(value:T, ?isSorted:Bool):Float;
	@:overload(function(value:T, ?isSorted:Bool):Float { })
	function lastIndexOf(value:T, ?fromIndex:Float):Float;
	function sortedIndex<TSort>(value:T, ?iterator:_.ListIterator<T, TSort>):Float;
	@:overload(function(start:Float, stop:Float, ?step:Float):Array<Dynamic> { })
	function range(stop:Float):Array<Dynamic>;
	function chain(object:Dynamic):Dynamic;
};
