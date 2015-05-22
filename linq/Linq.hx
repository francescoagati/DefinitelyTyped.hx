typedef EnumerableStatic = {
	@:overload(function<T>(contents:Array<T>):Enumerable<T> { })
	function Choice<T>(contents:haxe.extern.Rest<T>):Enumerable<T>;
	@:overload(function<T>(contents:Array<T>):Enumerable<T> { })
	function Cycle<T>(contents:haxe.extern.Rest<T>):Enumerable<T>;
	function Empty<T>():Enumerable<T>;
	@:overload(function(obj:Float):Enumerable<Float> { })
	@:overload(function(obj:String):Enumerable<String> { })
	@:overload(function(obj:NodeList):Enumerable<Node> { })
	@:overload(function(obj:Dynamic):Enumerable<KeyValuePair<String, Dynamic>> { })
	function From<T>(obj:Array<T>):Enumerable<T>;
	function Return<T>(element:T):Enumerable<T>;
	@:overload(function<T>(input:String, pattern:String, ?flags:String):Enumerable<String> { })
	function Matches<T>(input:String, pattern:js.RegExp):Enumerable<String>;
	function Range(start:Float, count:Float, ?step:Float):Enumerable<Float>;
	function RangeDown(start:Float, count:Float, ?step:Float):Enumerable<Float>;
	function RangeTo(start:Float, to:Float, ?step:Float):Enumerable<Float>;
	function Repeat<T>(obj:Dynamic, ?count:Float):Enumerable<T>;
	function RepeatWithFinalize<T>(initializer:Void -> T, finalizer:T -> Void):Enumerable<T>;
	@:overload(function(func:String, ?count:Float):Enumerable<Dynamic> { })
	function Generate<T>(func:Void -> T, ?count:Float):Enumerable<T>;
	function ToInfinity(?start:Float, ?step:Float):Enumerable<Float>;
	function ToNegativeInfinity(?start:Float, ?step:Float):Enumerable<Float>;
	@:overload(function(seed:Dynamic, func:String):Enumerable<Dynamic> { })
	function Unfold<T>(seed:Dynamic, func:Dynamic -> T):Enumerable<T>;
};
typedef Enumerable<T> = {
	@:overload(function(func:String, resultSelector:String):Enumerable<Dynamic> { })
	function CascadeBreadthFirst(func:Dynamic -> Array<Dynamic>, resultSelector:Dynamic -> Float -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(func:String, resultSelector:String):Enumerable<Dynamic> { })
	function CascadeDepthFirst(func:Dynamic -> Array<Dynamic>, resultSelector:Dynamic -> Float -> Dynamic):Enumerable<Dynamic>;
	function Flatten(items:haxe.extern.Rest<Dynamic>):Enumerable<Dynamic>;
	@:overload(function(selector:String):Enumerable<Dynamic> { })
	function Pairwise(selector:Dynamic -> Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(func:String):Enumerable<Dynamic> { })
	@:overload(function(seed:Dynamic, func:Dynamic -> Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(seed:Dynamic, func:String, ?resultSelector:String):Enumerable<Dynamic> { })
	function Scan(func:Dynamic -> Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(selector:String):Enumerable<Dynamic> { })
	function Select<TResult>(selector:T -> Float -> TResult):Enumerable<TResult>;
	@:overload(function(collectionSelector:Dynamic -> Float -> Enumerable<Dynamic>, ?resultSelector:Dynamic -> Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(collectionSelector:String, ?resultSelector:String):Enumerable<Dynamic> { })
	function SelectMany(collectionSelector:Dynamic -> Float -> Array<Dynamic>, ?resultSelector:Dynamic -> Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(predicate:String):Enumerable<Dynamic> { })
	function Where(predicate:T -> Float -> Bool):Enumerable<T>;
	function OfType(type:haxe.Constraints.Function):Enumerable<Dynamic>;
	@:overload(function(second:Array<Dynamic>, selector:String):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, selector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, selector:String):Enumerable<Dynamic> { })
	function Zip(second:Array<Dynamic>, selector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(inner:Array<Dynamic>, outerKeySelector:String, innerKeySelector:String, resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	@:overload(function(inner:Enumerable<Dynamic>, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(inner:Enumerable<Dynamic>, outerKeySelector:String, innerKeySelector:String, resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	function Join(inner:Array<Dynamic>, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(inner:Array<Dynamic>, outerKeySelector:String, innerKeySelector:String, resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	@:overload(function(inner:Enumerable<Dynamic>, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Enumerable<Dynamic> -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(inner:Enumerable<Dynamic>, outerKeySelector:String, innerKeySelector:String, resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	function GroupJoin(inner:Array<Dynamic>, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Enumerable<Dynamic> -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(predicate:String):Bool { })
	function All(predicate:T -> Bool):Bool;
	@:overload(function(?predicate:String):Bool { })
	function Any(?predicate:T -> Bool):Bool;
	@:overload(function(second:Enumerable<Dynamic>):Enumerable<Dynamic> { })
	function Concat(second:Array<Dynamic>):Enumerable<Dynamic>;
	@:overload(function(index:Float, second:Enumerable<Dynamic>):Enumerable<Dynamic> { })
	function Insert(index:Float, second:Array<Dynamic>):Enumerable<Dynamic>;
	function Alternate(value:Dynamic):Enumerable<Dynamic>;
	@:overload(function(value:Dynamic, ?compareSelector:String):Bool { })
	function Contains(value:Dynamic, ?compareSelector:Dynamic -> Dynamic):Bool;
	function DefaultIfEmpty(defaultValue:Dynamic):Enumerable<Dynamic>;
	@:overload(function(?compareSelector:String):Enumerable<Dynamic> { })
	function Distinct(?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(second:Array<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	function Except(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(second:Array<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	function Intersect(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(second:Array<Dynamic>, ?compareSelector:String):Bool { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Bool { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:String):Bool { })
	function SequenceEqual(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Bool;
	@:overload(function(second:Array<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic> { })
	@:overload(function(second:Enumerable<Dynamic>, ?compareSelector:String):Enumerable<Dynamic> { })
	function Union(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(?keySelector:String):OrderedEnumerable<T> { })
	function OrderBy(?keySelector:T -> Dynamic):OrderedEnumerable<T>;
	@:overload(function(?keySelector:String):OrderedEnumerable<T> { })
	function OrderByDescending(?keySelector:Dynamic -> Dynamic):OrderedEnumerable<T>;
	function Reverse():Enumerable<T>;
	function Shuffle():Enumerable<T>;
	@:overload(function(keySelector:String, ?elementSelector:String, ?resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	function GroupBy(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	@:overload(function(keySelector:String, ?elementSelector:String, ?resultSelector:String, ?compareSelector:String):Enumerable<Dynamic> { })
	function PartitionBy(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable<Dynamic>;
	function BufferWithCount(count:Float):Enumerable<Dynamic>;
	@:overload(function(seed:Dynamic, func:Dynamic -> Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic):Dynamic { })
	@:overload(function(func:String):Dynamic { })
	@:overload(function(seed:Dynamic, func:String, ?resultSelector:String):Dynamic { })
	function Aggregate(func:Dynamic -> Dynamic -> Dynamic):Dynamic;
	@:overload(function(?selector:String):Float { })
	function Average(?selector:Dynamic -> Float):Float;
	@:overload(function(?predicate:String):Float { })
	function Count(?predicate:Dynamic -> Bool):Float;
	@:overload(function(?selector:T -> Date):Date { })
	@:overload(function(?selector:T -> Float):Float { })
	@:overload(function(selector:T -> String):String { })
	@:overload(function(?selector:String):Dynamic { })
	function Max(?selector:T -> Dynamic):Dynamic;
	@:overload(function(?selector:T -> Date):Date { })
	@:overload(function(selector:T -> String):String { })
	@:overload(function(?selector:T -> Float):Float { })
	@:overload(function(?selector:String):Dynamic { })
	function Min(?selector:T -> Dynamic):Dynamic;
	@:overload(function(selector:T -> String):String { })
	@:overload(function(selector:T -> Date):Date { })
	@:overload(function(selector:T -> Float):Float { })
	@:overload(function(selector:String):Dynamic { })
	function MaxBy(selector:T -> Dynamic):Dynamic;
	@:overload(function(selector:T -> Float):Dynamic { })
	@:overload(function(selector:T -> String):String { })
	@:overload(function(selector:T -> Dynamic):Dynamic { })
	@:overload(function(selector:String):Dynamic { })
	function MinBy(selector:T -> Date):Date;
	@:overload(function(?selector:String):Float { })
	function Sum(?selector:Dynamic -> Float):Float;
	function ElementAt(index:Float):T;
	function ElementAtOrDefault(index:Float, defaultValue:T):T;
	@:overload(function(?predicate:String):T { })
	function First(?predicate:T -> Bool):T;
	@:overload(function(defaultValue:T, ?predicate:String):T { })
	function FirstOrDefault(defaultValue:T, ?predicate:T -> Bool):T;
	@:overload(function(?predicate:String):T { })
	function Last(?predicate:T -> Bool):T;
	@:overload(function(defaultValue:T, ?predicate:String):T { })
	function LastOrDefault(defaultValue:T, ?predicate:T -> Bool):T;
	@:overload(function(?predicate:String):T { })
	function Single(?predicate:T -> Bool):T;
	@:overload(function(defaultValue:T, ?predicate:String):T { })
	function SingleOrDefault(defaultValue:T, ?predicate:T -> Bool):T;
	function Skip(count:Float):Enumerable<T>;
	@:overload(function(predicate:String):Enumerable<T> { })
	function SkipWhile(predicate:T -> Float -> Bool):Enumerable<T>;
	function Take(count:Float):Enumerable<T>;
	@:overload(function(predicate:String):Enumerable<T> { })
	function TakeWhile(predicate:T -> Float -> Bool):Enumerable<T>;
	function TakeExceptLast(?count:Float):Enumerable<T>;
	function TakeFromLast(count:Float):Enumerable<T>;
	function IndexOf(item:Dynamic):Float;
	function LastIndexOf(item:Dynamic):Float;
	function ToArray():Array<T>;
	@:overload(function(keySelector:String, ?elementSelector:String, ?compareSelector:String):Lookup<T> { })
	function ToLookup(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Lookup<T>;
	@:overload(function(keySelector:String, elementSelector:String):Dynamic { })
	function ToObject(keySelector:Dynamic -> String, elementSelector:Dynamic -> Dynamic):Dynamic;
	@:overload(function(keySelector:String, elementSelector:String, ?compareSelector:String):Dictionary<T> { })
	function ToDictionary(keySelector:Dynamic -> Dynamic, elementSelector:Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Dictionary<T>;
	@:overload(function(?replacer:String, ?space:Float):String { })
	function ToJSON(?replacer:Dynamic -> Dynamic -> Dynamic, ?space:Float):String;
	@:overload(function(?separator:String, ?selector:String):String { })
	function ToString(?separator:String, ?selector:Dynamic -> Dynamic):String;
	@:overload(function(action:String):Enumerable<Dynamic> { })
	function Do(action:Dynamic -> Float -> Void):Enumerable<Dynamic>;
	@:overload(function(func:T -> Float -> Bool):Void { })
	@:overload(function(action_func:String):Void { })
	function ForEach(action:T -> Float -> Void):Void;
	@:overload(function(?separator:String, ?selector:String):Void { })
	function Write(?separator:String, ?selector:Dynamic -> Dynamic):Void;
	function WriteLine(?selector:Dynamic -> Dynamic):Void;
	function Force():Void;
	function Let(func:Enumerable<Dynamic> -> Enumerable<Dynamic>):Enumerable<Dynamic>;
	function Share():Enumerable<Dynamic>;
	function MemoizeAll():Enumerable<Dynamic>;
	@:overload(function(handler:String):Enumerable<Dynamic> { })
	function Catch(handler:Error -> Void):Enumerable<Dynamic>;
	@:overload(function(finallyAction:String):Enumerable<Dynamic> { })
	function Finally(finallyAction:Void -> Void):Enumerable<Dynamic>;
	@:overload(function(?message:String, ?selector:String):Enumerable<Dynamic> { })
	function Trace(?message:String, ?selector:Dynamic -> Dynamic):Enumerable<Dynamic>;
};
typedef OrderedEnumerable<T> = {
	>Enumerable<T>,
	@:overload(function(keySelector:String):OrderedEnumerable<T> { })
	function ThenBy(keySelector:Dynamic -> T):OrderedEnumerable<T>;
	@:overload(function(keySelector:String):OrderedEnumerable<T> { })
	function ThenByDescending(keySelector:Dynamic -> T):OrderedEnumerable<T>;
};
typedef Grouping<T> = {
	>Enumerable<T>,
	function Key():Dynamic;
};
typedef Lookup<TValue> = {
	function Count():Float;
	function Get(key:Dynamic):Enumerable<TValue>;
	function Contains(key:Dynamic):Bool;
	function ToEnumerable():Enumerable<TValue>;
};
typedef Dictionary<TValue> = {
	function Add(key:Dynamic, value:Dynamic):Void;
	function Get(key:Dynamic):Dynamic;
	function Set(key:Dynamic, value:Dynamic):Bool;
	function Contains(key:Dynamic):Bool;
	function Clear():Void;
	function Remove(key:Dynamic):Void;
	function Count():Float;
	function ToEnumerable():Enumerable<TValue>;
};
typedef KeyValuePair<TKey, TValue> = {
	var Key : TKey;
	var Value : TValue;
};
extern class LinqTopLevel {
	static var Enumerable : linq.EnumerableStatic;
}
