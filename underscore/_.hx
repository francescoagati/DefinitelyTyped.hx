typedef ThrottleSettings = {
	@:optional
	var leading : Bool;
	@:optional
	var trailing : Bool;
};
typedef TemplateSettings = {
	@:optional
	var evaluate : js.RegExp;
	@:optional
	var interpolate : js.RegExp;
	@:optional
	var escape : js.RegExp;
};
typedef Collection<T> = { };
typedef List<T> = {
	>Collection<T>,
	var length : Float;
};
typedef Dictionary<T> = {
	>Collection<T>,
};
typedef ListIterator<T, TResult> = { };
typedef ObjectIterator<T, TResult> = { };
typedef MemoIterator<T, TResult> = { };
typedef MemoObjectIterator<T, TResult> = { };
typedef UnderscoreStatic = {
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):_.Dictionary<T> { })
	function each<T>(list:_.List<T>, iterator:_.ListIterator<T, Void>, ?context:Dynamic):_.List<T>;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):_.Dictionary<T> { })
	function forEach<T>(list:_.List<T>, iterator:_.ListIterator<T, Void>, ?context:Dynamic):_.List<T>;
	@:overload(function<T, TResult>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function map<T, TResult>(list:_.List<T>, iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<T, TResult>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function collect<T, TResult>(list:_.List<T>, iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<T, TResult>(list:_.Dictionary<T>, iterator:_.MemoObjectIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult { })
	function reduce<T, TResult>(list:_.Collection<T>, iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function inject<T, TResult>(list:_.Collection<T>, iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function foldl<T, TResult>(list:_.Collection<T>, iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function reduceRight<T, TResult>(list:_.Collection<T>, iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function foldr<T, TResult>(list:_.Collection<T>, iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):T { })
	function find<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):T { })
	function detect<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	function findIndex<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Float;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Array<T> { })
	function filter<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Array<T> { })
	function select<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function where<T, U:({ })>(list:_.List<T>, properties:U):Array<T>;
	function findWhere<T, U:({ })>(list:_.List<T>, properties:U):T;
	@:overload(function<T>(object:_.Dictionary<T>, iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Array<T> { })
	function reject<T>(list:_.List<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	@:overload(function<T>(list:_.Dictionary<T>, ?iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Bool { })
	function every<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	@:overload(function<T>(list:_.Dictionary<T>, ?iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Bool { })
	function all<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	@:overload(function<T>(object:_.Dictionary<T>, ?iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Bool { })
	function some<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	@:overload(function<T>(object:_.Dictionary<T>, ?iterator:_.ObjectIterator<T, Bool>, ?context:Dynamic):Bool { })
	function any<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	@:overload(function<T>(object:_.Dictionary<T>, value:T):Bool { })
	function contains<T>(list:_.List<T>, value:T):Bool;
	@:overload(function<T>(object:_.Dictionary<T>, value:T):Bool { })
	function include<T>(list:_.Collection<T>, value:T):Bool;
	function invoke<T:({ })>(list:_.List<T>, methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function pluck<T:({ })>(list:_.List<T>, propertyName:String):Array<Dynamic>;
	@:overload(function<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):T { })
	function max(list:_.List<Float>):Float;
	@:overload(function<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):T { })
	function min(list:_.List<Float>):Float;
	@:overload(function<T>(list:_.List<T>, iterator:String, ?context:Dynamic):Array<T> { })
	function sortBy<T, TSort>(list:_.List<T>, ?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T>;
	@:overload(function<T>(list:_.List<T>, iterator:String, ?context:Dynamic):_.Dictionary<Array<T>> { })
	function groupBy<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<Array<T>>;
	@:overload(function<T>(list:_.List<T>, iterator:String, ?context:Dynamic):_.Dictionary<T> { })
	function indexBy<T>(list:_.List<T>, iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<T>;
	@:overload(function<T>(list:_.List<T>, iterator:String, ?context:Dynamic):_.Dictionary<Float> { })
	function countBy<T>(list:_.List<T>, ?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<Float>;
	function shuffle<T>(list:_.Collection<T>):Array<T>;
	@:overload(function<T>(list:_.Collection<T>):T { })
	function sample<T>(list:_.Collection<T>, n:Float):Array<T>;
	function toArray<T>(list:_.Collection<T>):Array<T>;
	function size<T>(list:_.Collection<T>):Float;
	function partition<T>(array:Array<T>, iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<Array<T>>;
	@:overload(function<T>(array:_.List<T>, n:Float):Array<T> { })
	function first<T>(array:_.List<T>):T;
	@:overload(function<T>(array:_.List<T>, n:Float):Array<T> { })
	function head<T>(array:_.List<T>):T;
	@:overload(function<T>(array:_.List<T>, n:Float):Array<T> { })
	function take<T>(array:_.List<T>):T;
	function initial<T>(array:_.List<T>, ?n:Float):Array<T>;
	@:overload(function<T>(array:_.List<T>, n:Float):Array<T> { })
	function last<T>(array:_.List<T>):T;
	function rest<T>(array:_.List<T>, ?n:Float):Array<T>;
	function tail<T>(array:_.List<T>, ?n:Float):Array<T>;
	function drop<T>(array:_.List<T>, ?n:Float):Array<T>;
	function compact<T>(array:_.List<T>):Array<T>;
	function flatten(array:_.List<Dynamic>, ?shallow:Bool):Array<Dynamic>;
	function without<T>(array:_.List<T>, values:haxe.extern.Rest<T>):Array<T>;
	function union<T>(arrays:haxe.extern.Rest<_.List<T>>):Array<T>;
	function intersection<T>(arrays:haxe.extern.Rest<_.List<T>>):Array<T>;
	function difference<T>(array:_.List<T>, others:haxe.extern.Rest<_.List<T>>):Array<T>;
	@:overload(function<T, TSort>(array:_.List<T>, ?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T> { })
	function uniq<T, TSort>(array:_.List<T>, ?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T>;
	@:overload(function<T, TSort>(array:_.List<T>, ?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T> { })
	function unique<T, TSort>(array:_.List<T>, ?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T>;
	@:overload(function(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic> { })
	function zip(arrays:haxe.extern.Rest<Array<Dynamic>>):Array<Array<Dynamic>>;
	@:overload(function<TResult:({ })>(keyValuePairs:haxe.extern.Rest<Array<Dynamic>>):TResult { })
	@:overload(function<TResult:({ })>(list:_.List<Dynamic>, ?values:Dynamic):TResult { })
	function object<TResult:({ })>(keys:_.List<String>, values:_.List<Dynamic>):TResult;
	@:overload(function<T>(array:_.List<T>, value:T, startFrom:Float):Float { })
	function indexOf<T>(array:_.List<T>, value:T, ?isSorted:Bool):Float;
	function lastIndexOf<T>(array:_.List<T>, value:T, ?from:Float):Float;
	function sortedIndex<T, TSort>(list:_.List<T>, value:T, ?iterator:T -> TSort, ?context:Dynamic):Float;
	@:overload(function(stop:Float):Array<Float> { })
	function range(start:Float, stop:Float, ?step:Float):Array<Float>;
	function bind(func:haxe.Constraints.Function, context:Dynamic, arguments:haxe.extern.Rest<Dynamic>):Void -> Dynamic;
	function bindAll(object:Dynamic, methodNames:haxe.extern.Rest<String>):Dynamic;
	function partial(fn:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function memoize(fn:haxe.Constraints.Function, ?hashFn:haxe.extern.Rest<Dynamic> -> String):haxe.Constraints.Function;
	@:overload(function(func:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	function delay(func:haxe.Constraints.Function, wait:Float, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function defer(fn:haxe.Constraints.Function, arguments:haxe.extern.Rest<Dynamic>):Void;
	function throttle<T:(haxe.Constraints.Function)>(func:T, wait:Float, ?options:_.ThrottleSettings):T;
	function debounce<T:(haxe.Constraints.Function)>(fn:T, wait:Float, ?immediate:Bool):T;
	function once<T:(haxe.Constraints.Function)>(fn:T):T;
	function after(count:Float, fn:haxe.Constraints.Function):haxe.Constraints.Function;
	function before(count:Float, fn:haxe.Constraints.Function):haxe.Constraints.Function;
	function wrap(fn:haxe.Constraints.Function, wrapper:haxe.Constraints.Function -> haxe.extern.Rest<Dynamic> -> Dynamic):haxe.Constraints.Function;
	function negate(predicate:haxe.Constraints.Function):Bool;
	function compose(functions:haxe.extern.Rest<haxe.Constraints.Function>):haxe.Constraints.Function;
	function keys(object:Dynamic):Array<String>;
	function values(object:Dynamic):Array<Dynamic>;
	function pairs(object:Dynamic):Array<Array<Dynamic>>;
	function invert(object:Dynamic):Dynamic;
	function functions(object:Dynamic):Array<String>;
	function methods(object:Dynamic):Array<String>;
	function extend(destination:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(object:Dynamic, fn:Dynamic -> Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function pick(object:Dynamic, keys:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(object:Dynamic, keys:Array<String>):Dynamic { })
	@:overload(function(object:Dynamic, iteratee:haxe.Constraints.Function):Dynamic { })
	function omit(object:Dynamic, keys:haxe.extern.Rest<String>):Dynamic;
	function defaults(object:Dynamic, defaults:haxe.extern.Rest<Dynamic>):Dynamic;
	function clone<T>(object:T):T;
	function tap<T>(object:T, intercepter:haxe.Constraints.Function):T;
	function has(object:Dynamic, key:String):Bool;
	function matches<T, TResult>(attrs:T):_.ListIterator<T, TResult>;
	function property(key:String):Dynamic -> Dynamic;
	function isEqual(object:Dynamic, other:Dynamic):Bool;
	function isEmpty(object:Dynamic):Bool;
	function isElement(object:Dynamic):Bool;
	function isArray(object:Dynamic):Bool;
	function isObject(object:Dynamic):Bool;
	function isArguments(object:Dynamic):Bool;
	function isFunction(object:Dynamic):Bool;
	function isString(object:Dynamic):Bool;
	function isNumber(object:Dynamic):Bool;
	function isFinite(object:Dynamic):Bool;
	function isBoolean(object:Dynamic):Bool;
	function isDate(object:Dynamic):Bool;
	function isRegExp(object:Dynamic):Bool;
	function isNaN(object:Dynamic):Bool;
	function isNull(object:Dynamic):Bool;
	function isUndefined(value:Dynamic):Bool;
	function noConflict():Dynamic;
	function identity<T>(value:T):T;
	function constant<T>(value:T):Void -> T;
	function noop():Void;
	function times<TResult>(n:Float, iterator:Float -> TResult, ?context:Dynamic):Array<TResult>;
	@:overload(function(min:Float, max:Float):Float { })
	function random(max:Float):Float;
	function mixin(object:Dynamic):Void;
	@:overload(function(value:haxe.Constraints.Function, ?context:Dynamic, ?argCount:Float):haxe.Constraints.Function { })
	@:overload(function(value:Dynamic):haxe.Constraints.Function { })
	function iteratee(value:String):haxe.Constraints.Function;
	@:overload(function():Float { })
	function uniqueId(prefix:String):String;
	function escape(str:String):String;
	function unescape(str:String):String;
	function result(object:Dynamic, property:String):Dynamic;
	function template(templateString:String, ?settings:_.TemplateSettings):haxe.extern.Rest<Dynamic> -> String;
	var templateSettings : _.TemplateSettings;
	function now():Float;
	@:overload(function<T:({ })>(obj:T):_Chain<T> { })
	function chain<T>(obj:Array<T>):_Chain<T>;
	function value<T, TResult>(obj:T):TResult;
};
typedef Underscore<T> = {
	@:overload(function(iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):Array<T> { })
	function each(iterator:_.ListIterator<T, Void>, ?context:Dynamic):Array<T>;
	@:overload(function(iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):Array<T> { })
	function forEach(iterator:_.ListIterator<T, Void>, ?context:Dynamic):Array<T>;
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function map<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):Array<TResult> { })
	function collect<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):Array<TResult>;
	function reduce<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function inject<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function foldl<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function reduceRight<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function foldr<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):TResult;
	function find(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	function detect(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):T;
	function filter(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function select(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function where<U:({ })>(properties:U):Array<T>;
	function findWhere<U:({ })>(properties:U):T;
	function reject(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<T>;
	function all(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function every(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function any(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function some(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Bool;
	function contains(value:T):Bool;
	function include(value:T):Bool;
	function invoke(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function pluck(propertyName:String):Array<Dynamic>;
	@:overload(function(iterator:_.ListIterator<T, Float>, ?context:Dynamic):T { })
	@:overload(function(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):T { })
	function max():Float;
	@:overload(function(iterator:_.ListIterator<T, Float>, ?context:Dynamic):T { })
	@:overload(function(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):T { })
	function min():Float;
	@:overload(function(iterator:String, ?context:Dynamic):Array<T> { })
	function sortBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):Array<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_.Dictionary<Array<T>> { })
	function groupBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<_.List<T>>;
	@:overload(function(iterator:String, ?context:Dynamic):_.Dictionary<T> { })
	function indexBy(iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_.Dictionary<Float> { })
	function countBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_.Dictionary<Float>;
	function shuffle():Array<T>;
	@:overload(function<T>():T { })
	function sample<T>(n:Float):Array<T>;
	function toArray():Array<T>;
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
	function tail(?n:Float):Array<T>;
	function drop(?n:Float):Array<T>;
	function compact():Array<T>;
	function flatten(?shallow:Bool):Array<Dynamic>;
	function without(values:haxe.extern.Rest<T>):Array<T>;
	function partition(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):Array<Array<T>>;
	function union(arrays:haxe.extern.Rest<_.List<T>>):Array<T>;
	function intersection(arrays:haxe.extern.Rest<_.List<T>>):Array<T>;
	function difference(others:haxe.extern.Rest<_.List<T>>):Array<T>;
	@:overload(function<TSort>(?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T> { })
	function uniq(?isSorted:Bool, ?iterator:_.ListIterator<T, Dynamic>):Array<T>;
	@:overload(function<TSort>(?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):Array<T> { })
	function unique<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):Array<T>;
	function zip(arrays:haxe.extern.Rest<Array<Dynamic>>):Array<Array<Dynamic>>;
	@:overload(function(?values:Dynamic):Dynamic { })
	function object(keyValuePairs:haxe.extern.Rest<Array<Dynamic>>):Dynamic;
	@:overload(function(value:T, startFrom:Float):Float { })
	function indexOf(value:T, ?isSorted:Bool):Float;
	function lastIndexOf(value:T, ?from:Float):Float;
	function sortedIndex(value:T, ?iterator:T -> Dynamic, ?context:Dynamic):Float;
	@:overload(function():Array<Float> { })
	function range(stop:Float, ?step:Float):Array<Float>;
	function bind(object:Dynamic, arguments:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function bindAll(methodNames:haxe.extern.Rest<String>):Dynamic;
	function partial(arguments:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function memoize(?hashFn:Dynamic -> String):haxe.Constraints.Function;
	function defer(arguments:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(arguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	function delay(wait:Float, arguments:haxe.extern.Rest<Dynamic>):Dynamic;
	function throttle(wait:Float, ?options:_.ThrottleSettings):haxe.Constraints.Function;
	function debounce(wait:Float, ?immediate:Bool):haxe.Constraints.Function;
	function once():haxe.Constraints.Function;
	function after(fn:haxe.Constraints.Function):haxe.Constraints.Function;
	function before(fn:haxe.Constraints.Function):haxe.Constraints.Function;
	function wrap(wrapper:haxe.Constraints.Function):Void -> haxe.Constraints.Function;
	function negate():Bool;
	function compose(functions:haxe.extern.Rest<haxe.Constraints.Function>):haxe.Constraints.Function;
	function keys():Array<String>;
	function values():Array<T>;
	function pairs():Array<Array<Dynamic>>;
	function invert():Dynamic;
	function functions():Array<String>;
	function methods():Array<String>;
	function extend(sources:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(keys:Array<String>):Dynamic { })
	@:overload(function(fn:Dynamic -> Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function pick(keys:haxe.extern.Rest<String>):Dynamic;
	@:overload(function(keys:Array<String>):Dynamic { })
	@:overload(function(fn:haxe.Constraints.Function):Dynamic { })
	function omit(keys:haxe.extern.Rest<String>):Dynamic;
	function defaults(defaults:haxe.extern.Rest<Dynamic>):Dynamic;
	function clone():T;
	function tap(interceptor:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	function has(key:String):Bool;
	function matches<TResult>():_.ListIterator<T, TResult>;
	function property():Dynamic -> Dynamic;
	function isEqual(other:Dynamic):Bool;
	function isEmpty():Bool;
	function isElement():Bool;
	function isArray():Bool;
	function isObject():Bool;
	function isArguments():Bool;
	function isFunction():Bool;
	function isString():Bool;
	function isNumber():Bool;
	function isFinite():Bool;
	function isBoolean():Bool;
	function isDate():Bool;
	function isRegExp():Bool;
	function isNaN():Bool;
	function isNull():Bool;
	function isUndefined():Bool;
	function identity():Dynamic;
	function constant():Void -> T;
	function noop():Void;
	function times<TResult>(iterator:Float -> TResult, ?context:Dynamic):Array<TResult>;
	@:overload(function(max:Float):Float { })
	function random():Float;
	function mixin():Void;
	function iteratee(?context:Dynamic, ?argCount:Float):haxe.Constraints.Function;
	function uniqueId():String;
	function escape():String;
	function unescape():String;
	function result(property:String):Dynamic;
	function template(?settings:_.TemplateSettings):haxe.extern.Rest<Dynamic> -> String;
	function chain():_Chain<T>;
	function value<TResult>():TResult;
};
typedef _Chain<T> = {
	@:overload(function(iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):_Chain<T> { })
	function each(iterator:_.ListIterator<T, Void>, ?context:Dynamic):_Chain<T>;
	@:overload(function(iterator:_.ObjectIterator<T, Void>, ?context:Dynamic):_Chain<T> { })
	function forEach(iterator:_.ListIterator<T, Void>, ?context:Dynamic):_Chain<T>;
	@:overload(function<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):_Chain<TResult> { })
	@:overload(function<TArray>(iterator:_.ObjectIterator<T, Array<TArray>>, ?context:Dynamic):_ChainOfArrays<TArray> { })
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):_Chain<TResult> { })
	function map<TArray>(iterator:_.ListIterator<T, Array<TArray>>, ?context:Dynamic):_ChainOfArrays<TArray>;
	@:overload(function<TResult>(iterator:_.ObjectIterator<T, TResult>, ?context:Dynamic):_Chain<TResult> { })
	function collect<TResult>(iterator:_.ListIterator<T, TResult>, ?context:Dynamic):_Chain<TResult>;
	function reduce<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):_ChainSingle<TResult>;
	function inject<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):_ChainSingle<TResult>;
	function foldl<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):_ChainSingle<TResult>;
	function reduceRight<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):_ChainSingle<TResult>;
	function foldr<TResult>(iterator:_.MemoIterator<T, TResult>, ?memo:TResult, ?context:Dynamic):_ChainSingle<TResult>;
	function find(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_ChainSingle<T>;
	function detect(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function filter(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function select(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function where<U:({ })>(properties:U):_Chain<T>;
	function findWhere<U:({ })>(properties:U):_ChainSingle<T>;
	function reject(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function all(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function every(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function any(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function some(?iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<T>;
	function contains(value:T):_Chain<T>;
	function include(value:T):_Chain<T>;
	function invoke(methodName:String, arguments:haxe.extern.Rest<Dynamic>):_Chain<T>;
	function pluck(propertyName:String):_Chain<Dynamic>;
	@:overload(function(iterator:_.ListIterator<T, Float>, ?context:Dynamic):_ChainSingle<T> { })
	@:overload(function(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_ChainSingle<T> { })
	function max():_ChainSingle<T>;
	@:overload(function(iterator:_.ListIterator<T, Float>, ?context:Dynamic):_ChainSingle<T> { })
	@:overload(function(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_ChainSingle<T> { })
	function min():_ChainSingle<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_Chain<T> { })
	function sortBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_Chain<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_ChainOfArrays<T> { })
	function groupBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_ChainOfArrays<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_Chain<T> { })
	function indexBy(iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_Chain<T>;
	@:overload(function(iterator:String, ?context:Dynamic):_Chain<T> { })
	function countBy(?iterator:_.ListIterator<T, Dynamic>, ?context:Dynamic):_Chain<T>;
	function shuffle():_Chain<T>;
	@:overload(function<T>():_Chain<T> { })
	function sample<T>(n:Float):_Chain<T>;
	function toArray():_Chain<T>;
	function size():_Chain<T>;
	@:overload(function(n:Float):_Chain<T> { })
	function first():_ChainSingle<T>;
	@:overload(function(n:Float):_Chain<T> { })
	function head():_Chain<T>;
	@:overload(function(n:Float):_Chain<T> { })
	function take():_Chain<T>;
	function initial(?n:Float):_Chain<T>;
	@:overload(function(n:Float):_Chain<T> { })
	function last():_ChainSingle<T>;
	function rest(?n:Float):_Chain<T>;
	function tail(?n:Float):_Chain<T>;
	function drop(?n:Float):_Chain<T>;
	function compact():_Chain<T>;
	function flatten(?shallow:Bool):_Chain<Dynamic>;
	function without(values:haxe.extern.Rest<T>):_Chain<T>;
	function partition(iterator:_.ListIterator<T, Bool>, ?context:Dynamic):_Chain<Array<Array<T>>>;
	function union(arrays:haxe.extern.Rest<_.List<T>>):_Chain<T>;
	function intersection(arrays:haxe.extern.Rest<_.List<T>>):_Chain<T>;
	function difference(others:haxe.extern.Rest<_.List<T>>):_Chain<T>;
	@:overload(function<TSort>(?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):_Chain<T> { })
	function uniq(?isSorted:Bool, ?iterator:_.ListIterator<T, Dynamic>):_Chain<T>;
	@:overload(function<TSort>(?iterator:_.ListIterator<T, TSort>, ?context:Dynamic):_Chain<T> { })
	function unique<TSort>(?isSorted:Bool, ?iterator:_.ListIterator<T, TSort>):_Chain<T>;
	function zip(arrays:haxe.extern.Rest<Array<Dynamic>>):_Chain<T>;
	@:overload(function(?values:Dynamic):_Chain<T> { })
	function object(keyValuePairs:haxe.extern.Rest<Array<Dynamic>>):_Chain<T>;
	@:overload(function(value:T, startFrom:Float):_ChainSingle<T> { })
	function indexOf(value:T, ?isSorted:Bool):_ChainSingle<T>;
	function lastIndexOf(value:T, ?from:Float):_ChainSingle<T>;
	function sortedIndex(value:T, ?iterator:T -> Dynamic, ?context:Dynamic):_Chain<T>;
	@:overload(function():_Chain<T> { })
	function range(stop:Float, ?step:Float):_Chain<T>;
	function bind(object:Dynamic, arguments:haxe.extern.Rest<Dynamic>):_Chain<T>;
	function bindAll(methodNames:haxe.extern.Rest<String>):_Chain<T>;
	function partial(arguments:haxe.extern.Rest<Dynamic>):_Chain<T>;
	function memoize(?hashFn:Dynamic -> String):_Chain<T>;
	function defer(arguments:haxe.extern.Rest<Dynamic>):_Chain<T>;
	@:overload(function(arguments:haxe.extern.Rest<Dynamic>):_Chain<T> { })
	function delay(wait:Float, arguments:haxe.extern.Rest<Dynamic>):_Chain<T>;
	function throttle(wait:Float, ?options:_.ThrottleSettings):_Chain<T>;
	function debounce(wait:Float, ?immediate:Bool):_Chain<T>;
	function once():_Chain<T>;
	function after(func:haxe.Constraints.Function):_Chain<T>;
	function before(fn:haxe.Constraints.Function):_Chain<T>;
	function wrap(wrapper:haxe.Constraints.Function):Void -> _Chain<T>;
	function negate():_Chain<T>;
	function compose(functions:haxe.extern.Rest<haxe.Constraints.Function>):_Chain<T>;
	function keys():_Chain<String>;
	function values():_Chain<T>;
	function pairs():_Chain<T>;
	function invert():_Chain<T>;
	function functions():_Chain<T>;
	function methods():_Chain<T>;
	function extend(sources:haxe.extern.Rest<Dynamic>):_Chain<T>;
	@:overload(function(fn:Dynamic -> Dynamic -> Dynamic -> Dynamic):_Chain<T> { })
	function pick(keys:haxe.extern.Rest<String>):_Chain<T>;
	@:overload(function(keys:Array<String>):_Chain<T> { })
	@:overload(function(iteratee:haxe.Constraints.Function):_Chain<T> { })
	function omit(keys:haxe.extern.Rest<String>):_Chain<T>;
	function defaults(defaults:haxe.extern.Rest<Dynamic>):_Chain<T>;
	function clone():_Chain<T>;
	function tap(interceptor:haxe.extern.Rest<Dynamic> -> Dynamic):_Chain<T>;
	function has(key:String):_Chain<T>;
	function matches<TResult>():_Chain<T>;
	function property():_Chain<T>;
	function isEqual(other:Dynamic):_Chain<T>;
	function isEmpty():_Chain<T>;
	function isElement():_Chain<T>;
	function isArray():_Chain<T>;
	function isObject():_Chain<T>;
	function isArguments():_Chain<T>;
	function isFunction():_Chain<T>;
	function isString():_Chain<T>;
	function isNumber():_Chain<T>;
	function isFinite():_Chain<T>;
	function isBoolean():_Chain<T>;
	function isDate():_Chain<T>;
	function isRegExp():_Chain<T>;
	function isNaN():_Chain<T>;
	function isNull():_Chain<T>;
	function isUndefined():_Chain<T>;
	function identity():_Chain<T>;
	function constant():_Chain<T>;
	function noop():_Chain<T>;
	function times<TResult>(iterator:Float -> TResult, ?context:Dynamic):_Chain<T>;
	@:overload(function(max:Float):_Chain<T> { })
	function random():_Chain<T>;
	function mixin():_Chain<T>;
	function iteratee(?context:Dynamic, ?argCount:Float):_Chain<T>;
	function uniqueId():_Chain<T>;
	function escape():_Chain<T>;
	function unescape():_Chain<T>;
	function result(property:String):_Chain<T>;
	function template(?settings:_.TemplateSettings):haxe.extern.Rest<Dynamic> -> _Chain<T>;
	function concat(arr:haxe.extern.Rest<Array<T>>):_Chain<T>;
	function join(?separator:Dynamic):_ChainSingle<T>;
	function pop():_ChainSingle<T>;
	function push(item:haxe.extern.Rest<T>):_Chain<T>;
	function reverse():_Chain<T>;
	function shift():_ChainSingle<T>;
	function slice(start:Float, ?end:Float):_Chain<T>;
	function sort(compareFn:T -> T -> Bool):_Chain<T>;
	function splice(index:Float, quantity:Float, items:haxe.extern.Rest<T>):_Chain<T>;
	function toString():_ChainSingle<T>;
	function unshift(items:haxe.extern.Rest<T>):_Chain<T>;
	function chain():_Chain<T>;
	function value<TResult>():Array<T>;
};
typedef _ChainSingle<T> = {
	function value():T;
};
typedef _ChainOfArrays<T> = {
	>_Chain<Array<T>>,
	function flatten():_Chain<T>;
};
