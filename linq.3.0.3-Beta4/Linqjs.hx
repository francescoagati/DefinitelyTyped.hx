typedef IEnumerator = {
	function current():Dynamic;
	function moveNext():Bool;
	function dispose():Void;
};
typedef EnumerableStatic = {
	var Utils : { function createLambda(expression:Dynamic):haxe.extern.Rest<Dynamic> -> Dynamic; function createEnumerable(getEnumerator:Void -> IEnumerator):Enumerable; function createEnumerator(initialize:Void -> Void, tryGetNext:Void -> Bool, dispose:Void -> Void):IEnumerator; function extendTo(type:Dynamic):Void; };
	function choice(params:haxe.extern.Rest<Dynamic>):Enumerable;
	function cycle(params:haxe.extern.Rest<Dynamic>):Enumerable;
	function empty():Enumerable;
	@:overload(function(obj:Enumerable):Enumerable { })
	@:overload(function(obj:String):Enumerable { })
	@:overload(function(obj:Float):Enumerable { })
	@:overload(function(obj:{ var length : Float; }):Enumerable { })
	@:overload(function(obj:Dynamic):Enumerable { })
	function from():Enumerable;
	function make(element:Dynamic):Enumerable;
	@:overload(function(input:String, pattern:String, ?flags:String):Enumerable { })
	function matches(input:String, pattern:js.RegExp):Enumerable;
	function range(start:Float, count:Float, ?step:Float):Enumerable;
	function rangeDown(start:Float, count:Float, ?step:Float):Enumerable;
	function rangeTo(start:Float, to:Float, ?step:Float):Enumerable;
	function repeat(element:Dynamic, ?count:Float):Enumerable;
	function repeatWithFinalize(initializer:Void -> Dynamic, finalizer:Dynamic -> Void):Enumerable;
	function generate(func:Void -> Dynamic, ?count:Float):Enumerable;
	function toInfinity(?start:Float, ?step:Float):Enumerable;
	function toNegativeInfinity(?start:Float, ?step:Float):Enumerable;
	function unfold(seed:Dynamic, func:Dynamic -> Dynamic):Enumerable;
	function defer(enumerableFactory:Void -> Enumerable):Enumerable;
};
typedef Enumerable = {
	function new(getEnumerator:Void -> IEnumerator):Void;
	function getEnumerator():IEnumerator;
	function traverseBreadthFirst(func:Dynamic -> Enumerable, ?resultSelector:Dynamic -> Float -> Dynamic):Enumerable;
	function traverseDepthFirst(func:Dynamic -> Enumerable, ?resultSelector:Dynamic -> Float -> Dynamic):Enumerable;
	function flatten():Enumerable;
	function pairwise(selector:Dynamic -> Dynamic -> Dynamic):Enumerable;
	@:overload(function(seed:Dynamic, func:Dynamic -> Dynamic -> Dynamic):Enumerable { })
	function scan(func:Dynamic -> Dynamic -> Dynamic):Enumerable;
	function select(selector:Dynamic -> Float -> Dynamic):Enumerable;
	@:overload(function(collectionSelector:Dynamic -> Float -> Enumerable, ?resultSelector:Dynamic -> Dynamic -> Dynamic):Enumerable { })
	@:overload(function(collectionSelector:Dynamic -> Float -> { var length : Float; }, ?resultSelector:Dynamic -> Dynamic -> Dynamic):Enumerable { })
	function selectMany(collectionSelector:Dynamic -> Float -> Array<Dynamic>, ?resultSelector:Dynamic -> Dynamic -> Dynamic):Enumerable;
	function where(predicate:Dynamic -> Float -> Bool):Enumerable;
	function choose(selector:Dynamic -> Float -> Dynamic):Enumerable;
	function ofType(type:Dynamic):Enumerable;
	@:overload(function(second:Enumerable, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable { })
	@:overload(function(second:{ var length : Float; }, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable { })
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Enumerable { })
	function zip(second:Array<Dynamic>, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable;
	@:overload(function(second:Enumerable, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable { })
	@:overload(function(second:{ var length : Float; }, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable { })
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Enumerable { })
	function merge(second:Array<Dynamic>, resultSelector:Dynamic -> Dynamic -> Float -> Dynamic):Enumerable;
	function join(inner:Enumerable, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	function groupJoin(inner:Enumerable, outerKeySelector:Dynamic -> Dynamic, innerKeySelector:Dynamic -> Dynamic, resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	function all(predicate:Dynamic -> Bool):Bool;
	function any(?predicate:Dynamic -> Bool):Bool;
	function isEmpty():Bool;
	function concat(sequences:haxe.extern.Rest<Dynamic>):Enumerable;
	@:overload(function(index:Float, second:Enumerable):Enumerable { })
	@:overload(function(index:Float, second:{ var length : Float; }):Enumerable { })
	function insert(index:Float, second:Array<Dynamic>):Enumerable;
	@:overload(function(alternateSequence:Array<Dynamic>):Enumerable { })
	@:overload(function(alternateSequence:Enumerable):Enumerable { })
	function alternate(alternateValue:Dynamic):Enumerable;
	@:overload(function(value:Dynamic):Enumerable { })
	function contains(value:Dynamic, compareSelector:Dynamic -> Dynamic):Enumerable;
	function defaultIfEmpty(?defaultValue:Dynamic):Enumerable;
	function distinct(?compareSelector:Dynamic -> Dynamic):Enumerable;
	function distinctUntilChanged(compareSelector:Dynamic -> Dynamic):Enumerable;
	@:overload(function(second:{ var length : Float; }, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	@:overload(function(second:Enumerable, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	function except(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	@:overload(function(second:{ var length : Float; }, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	@:overload(function(second:Enumerable, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	function intersect(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	@:overload(function(second:{ var length : Float; }, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	@:overload(function(second:Enumerable, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	function sequenceEqual(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	@:overload(function(second:{ var length : Float; }, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	@:overload(function(second:Enumerable, ?compareSelector:Dynamic -> Dynamic):Enumerable { })
	function union(second:Array<Dynamic>, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	function orderBy(keySelector:Dynamic -> Dynamic):OrderedEnumerable;
	function orderByDescending(keySelector:Dynamic -> Dynamic):OrderedEnumerable;
	function reverse():Enumerable;
	function shuffle():Enumerable;
	function weightedSample(weightSelector:Dynamic -> Dynamic):Enumerable;
	function groupBy(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	function partitionBy(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Enumerable;
	function buffer(count:Float):Enumerable;
	@:overload(function(seed:Dynamic, func:Dynamic -> Dynamic -> Dynamic, ?resultSelector:Dynamic -> Dynamic):Dynamic { })
	function aggregate(func:Dynamic -> Dynamic -> Dynamic):Dynamic;
	function average(?selector:Dynamic -> Dynamic):Float;
	function count(?predicate:Dynamic -> Float -> Bool):Float;
	function max(?selector:Dynamic -> Dynamic):Float;
	function min(?selector:Dynamic -> Dynamic):Float;
	function maxBy(keySelector:Dynamic -> Dynamic):Dynamic;
	function minBy(keySelector:Dynamic -> Dynamic):Dynamic;
	function sum(?selector:Dynamic -> Dynamic):Float;
	function elementAt(index:Float):Dynamic;
	function elementAtOrDefault(index:Float, ?defaultValue:Dynamic):Dynamic;
	function first(?predicate:Dynamic -> Float -> Bool):Dynamic;
	function firstOrDefault(?predicate:Dynamic -> Float -> Bool, ?defaultValue:Dynamic):Dynamic;
	function last(?predicate:Dynamic -> Float -> Bool):Dynamic;
	function lastOrDefault(?predicate:Dynamic -> Float -> Bool, ?defaultValue:Dynamic):Dynamic;
	function single(?predicate:Dynamic -> Float -> Bool):Dynamic;
	function singleOrDefault(?predicate:Dynamic -> Float -> Bool, ?defaultValue:Dynamic):Dynamic;
	function skip(count:Float):Enumerable;
	function skipWhile(predicate:Dynamic -> Float -> Bool):Enumerable;
	function take(count:Float):Enumerable;
	function takeWhile(predicate:Dynamic -> Float -> Bool):Enumerable;
	function takeExceptLast(?count:Float):Enumerable;
	function takeFromLast(count:Float):Enumerable;
	@:overload(function(predicate:Dynamic -> Float -> Bool):Float { })
	function indexOf(item:Dynamic):Float;
	@:overload(function(predicate:Dynamic -> Float -> Bool):Float { })
	function lastIndexOf(item:Dynamic):Float;
	function asEnumerable():Enumerable;
	function toArray():Array<Dynamic>;
	function toLookup(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Lookup;
	function toObject(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic):Dynamic;
	function toDictionary(keySelector:Dynamic -> Dynamic, ?elementSelector:Dynamic -> Dynamic, ?compareSelector:Dynamic -> Dynamic):Dictionary;
	@:overload(function(replacer:Array<Dynamic>):String { })
	@:overload(function(replacer:String -> Dynamic -> Dynamic, space:Dynamic):String { })
	@:overload(function(replacer:Array<Dynamic>, space:Dynamic):String { })
	function toJSONString(replacer:String -> Dynamic -> Dynamic):String;
	function toJoinedString(?separator:String, ?selector:Dynamic -> Float -> Dynamic):String;
	@:overload(function(action:Dynamic -> Float -> Bool):Enumerable { })
	function doAction(action:Dynamic -> Float -> Void):Enumerable;
	@:overload(function(action:Dynamic -> Float -> Bool):Void { })
	function forEach(action:Dynamic -> Float -> Void):Void;
	function write(?separator:String, ?selector:Dynamic -> Dynamic):Void;
	function writeLine(?selector:Dynamic -> Dynamic):Void;
	function force():Void;
	@:overload(function(func:Enumerable -> { var length : Float; }):Enumerable { })
	@:overload(function(func:Enumerable -> Enumerable):Enumerable { })
	function letBind(func:Enumerable -> Array<Dynamic>):Enumerable;
	function share():DisposableEnumerable;
	function memoize():DisposableEnumerable;
	function catchError(handler:Dynamic -> Void):Enumerable;
	function finallyAction(finallyAction:Void -> Void):Enumerable;
	function log(?selector:Dynamic -> Void):Enumerable;
	function trace(?message:String, ?selector:Dynamic -> Void):Enumerable;
};
typedef OrderedEnumerable = {
	>Enumerable,
	function createOrderedEnumerable(keySelector:Dynamic -> Dynamic, descending:Bool):OrderedEnumerable;
	function thenBy(keySelector:Dynamic -> Dynamic):OrderedEnumerable;
	function thenByDescending(keySelector:Dynamic -> Dynamic):OrderedEnumerable;
};
typedef DisposableEnumerable = {
	>Enumerable,
	function dispose():Void;
};
typedef Dictionary = {
	function add(key:Dynamic, value:Dynamic):Void;
	function get(key:Dynamic):Dynamic;
	function set(key:Dynamic, value:Dynamic):Bool;
	function contains(key:Dynamic):Bool;
	function clear():Void;
	function remove(key:Dynamic):Void;
	function count():Float;
	function toEnumerable():Enumerable;
};
typedef Lookup = {
	function count():Float;
	function get(key:Dynamic):Enumerable;
	function contains(key:Dynamic):Bool;
	function toEnumerable():Enumerable;
};
typedef Grouping = {
	>Enumerable,
	function key():Dynamic;
};
