typedef String = {
	function add(str:String, ?index:Float):String;
	function insert(str:String, ?index:Float):String;
	function assign(objs:haxe.extern.Rest<Dynamic>):String;
	@:overload(function(indicies:haxe.extern.Rest<Float>):Array<String> { })
	function at(index:Float, ?loop:Bool):String;
	function camelize(?first:Bool):String;
	function capitalize(?all:Bool):String;
	function chars(?fn:String -> Void):Array<String>;
	function codes(?fn:String -> Void):Array<Float>;
	function compact():String;
	function dasherize():String;
	function decodeBase64():String;
	@:overload(function(search:js.RegExp, ?fn:String -> Void):Array<String> { })
	@:overload(function(?fn:String -> Void):Array<String> { })
	function each(search:String, ?fn:String -> Void):Array<String>;
	function encodeBase64():String;
	@:overload(function(find:String, ?case_:Bool):Bool { })
	@:overload(function(find:js.RegExp, ?pos:Float, ?case_:Bool):Bool { })
	@:overload(function(find:js.RegExp, ?case_:Bool):Bool { })
	function endsWith(find:String, ?pos:Float, ?case_:Bool):Bool;
	function escapeHTML():String;
	function escapeRegExp():String;
	function escapeURL(?param:Bool):String;
	function first(?n:Float):String;
	function from(?index:Float):String;
	@:overload(function(modes:haxe.extern.Rest<String>):String { })
	function hankaku(?mode:String):String;
	@:overload(function(find:js.RegExp):Bool { })
	function has(find:String):Bool;
	function hasArabic():Bool;
	function hasCyrillic():Bool;
	function hasGreek():Bool;
	function hasHangul():Bool;
	function hasHan():Bool;
	function hasKanji():Bool;
	function hasHebrew():Bool;
	function hasHiragana():Bool;
	function hasKana():Bool;
	function hasKatakana():Bool;
	function hasLatin():Bool;
	function hasThai():Bool;
	function hasDevanagari():Bool;
	function hiragana(?all:Bool):String;
	function humanize():String;
	function isBlank():Bool;
	function isArabic():Bool;
	function isCyrillic():Bool;
	function isGreek():Bool;
	function isHangul():Bool;
	function isHan():Bool;
	function isKanji():Bool;
	function isHebrew():Bool;
	function isHiragana():Bool;
	function isKana():Bool;
	function isKatakana():Bool;
	function isLatin():Bool;
	function isThai():Bool;
	function isDevanagari():Bool;
	function katakana():String;
	function last(?n:Float):String;
	function lines(?fn:String -> Void):Array<String>;
	function normalize():String;
	function pad(padding:String, ?num:Float):String;
	function padLeft(padding:String, ?num:Float):String;
	function padRight(padding:String, ?num:Float):String;
	function paragraphs(?fn:String -> Void):Array<String>;
	function parameterize():String;
	function pluralize():String;
	@:overload(function(find:js.RegExp):String { })
	function remove(find:String):String;
	function removeTags(tags:haxe.extern.Rest<String>):String;
	function repeat(?num:Float):String;
	function reverse():String;
	function shift(num:Float):Array<String>;
	function singularize():String;
	function spacify():String;
	@:overload(function(find:String, ?case_:Bool):Bool { })
	@:overload(function(find:js.RegExp, ?pos:Float, ?case_:Bool):Bool { })
	@:overload(function(find:js.RegExp, ?case_:Bool):Bool { })
	function startsWith(find:String, ?pos:Float, ?case_:Bool):Bool;
	function stripTags(tags:haxe.extern.Rest<String>):String;
	function titleize():String;
	function to(?index:Float):String;
	function toNumber(?base:Float):Float;
	function trimLeft():String;
	function trimRight():String;
	function truncate(length:Float, ?split:Bool, ?from:String, ?ellipsis:String):String;
	function underscore():String;
	function unescapeHTML():String;
	function unescapeURL(?partial:Bool):String;
	function words(?fn:String -> Void):Array<String>;
	function zenkaku(modes:haxe.extern.Rest<String>):String;
};
typedef NumberStatic = {
	function random(?n1:Float, ?n2:Float):Float;
};
typedef Number = {
	function abbr(?precision:Float):String;
	@:overload(function(?precision:Float, ?limit:Bool):String { })
	function bytes(?precision:Float, ?limit:Float):String;
	function ceil(?precision:Float):Float;
	function chr():String;
	function downto(num:Float, ?fn:Float -> Void, ?step:Float):Array<Float>;
	function duration(?locale:String):String;
	function floor(?precision:Float):Float;
	function format(?place:Float, ?thousands:String, ?decimal:String):String;
	function hex(?pad:Float):String;
	function isEven():Bool;
	function isInteger():Bool;
	function isMultipleOf(num:Float):Bool;
	function isOdd():Bool;
	function log(?base:Float):Float;
	function abs():Float;
	function sin():Float;
	function asin():Float;
	function cos():Float;
	function acos():Float;
	function tan():Float;
	function atan():Float;
	function sqrt():Float;
	function exp():Float;
	function pow(num:Float):Float;
	@:overload(function(?precision:Float, ?limit:Bool):String { })
	function metric(?precision:Float, ?limit:Float):String;
	function ordinalize():String;
	function pad(?place:Float, ?sign:Bool, ?base:Float):String;
	function round(?precision:Float):Float;
	function times(fn:Float -> Void):Float;
	function toNumber():Float;
	function millisecond():Float;
	function milliseconds():Float;
	function second():Float;
	function seconds():Float;
	function minute():Float;
	function minutes():Float;
	function hour():Float;
	function hours():Float;
	function day():Float;
	function days():Float;
	function week():Float;
	function weeks():Float;
	function month():Float;
	function months():Float;
	function year():Float;
	function years():Float;
	@:overload(function(d:Date, ?locale:String):Date { })
	function millisecondAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function millisecondsAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function secondAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function secondsAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function minuteAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function minutesAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function hourAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function hoursAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function dayAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function daysAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function weekAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function weeksAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function monthAfter(d:String, ?locale:String):Date;
	function monthsAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function yearAfter(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function yearsAfter(d:String, ?locale:String):Date;
	function millisecondAgo():Date;
	function millisecondsAgo():Date;
	function secondAgo():Date;
	function secondsAgo():Date;
	function minuteAgo():Date;
	function minutesAgo():Date;
	function hourAgo():Date;
	function hoursAgo():Date;
	function dayAgo():Date;
	function daysAgo():Date;
	function weekAgo():Date;
	function weeksAgo():Date;
	function monthAgo():Date;
	function monthsAgo():Date;
	function yearAgo():Date;
	function yearsAgo():Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function millisecondBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function millisecondsBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function secondBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function secondsBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function minuteBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function minutesBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function hourBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function hoursBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function dayBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function daysBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function weekBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function weeksBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function monthBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function monthsBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function yearBefore(d:String, ?locale:String):Date;
	@:overload(function(d:Date, ?locale:String):Date { })
	function yearsBefore(d:String, ?locale:String):Date;
	function millisecondFromNow():Date;
	function millisecondsFromNow():Date;
	function secondFromNow():Date;
	function secondsFromNow():Date;
	function minuteFromNow():Date;
	function minutesFromNow():Date;
	function hourFromNow():Date;
	function hoursFromNow():Date;
	function dayFromNow():Date;
	function daysFromNow():Date;
	function weekFromNow():Date;
	function weeksFromNow():Date;
	function monthFromNow():Date;
	function monthsFromNow():Date;
	function yearFromNow():Date;
	function yearsFromNow():Date;
	function upto(num:Float, ?fn:haxe.Constraints.Function, ?step:Float):Array<Float>;
};
typedef ArrayStatic = {
	function create<T>(args:haxe.extern.Rest<T>):Array<T>;
	function isArray(obj:Dynamic):Bool;
};
typedef Array<T> = {
	@:overload(function(el:Array<T>, ?index:Float):Array<T> { })
	function add(el:T, ?index:Float):Array<T>;
	@:overload(function(el:Array<T>, ?index:Float):Array<T> { })
	function insert(el:T, ?index:Float):Array<T>;
	@:overload(function(start:Float, stop:Float):Array<T> { })
	function at(index:Float, ?loop:Bool):T;
	function average(?map:T -> Float):Float;
	function clone():Array<T>;
	function compact(?all:Bool):Array<T>;
	function count(f:T):Float;
	function each(fn:T -> ?Float -> ?Array<T> -> Dynamic, ?index:Float, ?loop:Bool):Array<T>;
	function every(f:T, ?scope:Dynamic):Bool;
	@:overload(function(f:T -> Float -> Array<T> -> Bool, ?scope:Dynamic):Bool { })
	function all(f:T, ?scope:Dynamic):Bool;
	@:overload(function(f:T -> Float -> Array<T> -> Bool):Array<T> { })
	function exclude(f:haxe.extern.Rest<T>):Array<T>;
	function filter(f:T, ?scope:Dynamic):Array<T>;
	@:overload(function(f:T -> Float -> Array<T> -> Bool, ?index:Float, ?loop:Bool):T { })
	function find(f:T, ?index:Float, ?loop:Bool):T;
	@:overload(function(f:T -> Float -> Array<T> -> Bool, ?index:Float, ?loop:Bool):Array<T> { })
	function findAll(f:T, ?index:Float, ?loop:Bool):Array<T>;
	@:overload(function(f:T -> Float -> Array<T> -> Bool, ?startIndex:Float, ?loop:Bool):Float { })
	function findIndex(f:T, ?startIndex:Float, ?loop:Bool):Float;
	@:overload(function(num:Float):Array<T> { })
	function first():T;
	function flatten(?limit:Float):Array<T>;
	function from(index:Float):Array<T>;
	@:overload(function<U>(map:T -> U, ?fn:String -> Array<T> -> Void):{ } { })
	function groupBy<U>(map:String, ?fn:String -> Array<T> -> Void):{ };
	@:overload(function(elements:Array<T>, ?index:Float):Array<T> { })
	function include(element:T, ?index:Float):Array<T>;
	function intersect(args:haxe.extern.Rest<T>):Array<T>;
	function isEmpty():Bool;
	@:overload(function(num:Float):Array<T> { })
	function last():T;
	function lastIndexOf(search:Dynamic, ?fromIndex:Float):Float;
	@:overload(function<U>(map:T -> U):Array<T> { })
	function least(map:String):Array<T>;
	@:overload(function<U>(map:T -> U, ?scope:Dynamic):Array<U> { })
	function map<U>(map:String, ?scope:Dynamic):Array<U>;
	@:overload(function(map:String, all:Bool):Array<T> { })
	@:overload(function<U>(map:T -> U):T { })
	@:overload(function<U>(map:T -> U, all:Bool):Array<T> { })
	function max(?map:String):T;
	@:overload(function(map:String, all:Bool):Array<T> { })
	@:overload(function<U>(map:T -> U):T { })
	@:overload(function<U>(map:T -> U, all:Bool):Array<T> { })
	function min(?map:String):T;
	@:overload(function<U>(map:T -> U):Array<T> { })
	function most(?map:String):Array<T>;
	@:overload(function(f:T -> Bool):Bool { })
	function none(f:T):Bool;
	function randomize():Array<T>;
	function reduce(fn:T -> T -> T, init:T):T;
	function reduceRight(fn:T -> T -> T, init:T):T;
	@:overload(function(fn:T -> Bool):Array<T> { })
	function remove(args:haxe.extern.Rest<T>):Array<T>;
	function removeAt(start:Float, ?end:Float):Array<T>;
	@:overload(function(num:Float):Array<T> { })
	function sample():T;
	@:overload(function(f:T -> Bool, ?scope:Dynamic):Bool { })
	function some(f:T, ?scope:Dynamic):Bool;
	@:overload(function<U>(fn:T -> U, ?desc:Bool):Array<T> { })
	function sortBy(map:String, ?desc:Bool):Array<T>;
	@:overload(function(args:Array<T>):Array<T> { })
	function subtract(args:haxe.extern.Rest<T>):Array<T>;
	@:overload(function():Float { })
	@:overload(function(map:T -> Float):Float { })
	function sum(map:String):Float;
	function to(index:Float):Array<Dynamic>;
	@:overload(function(args:haxe.extern.Rest<T>):Array<T> { })
	function union(array:Array<T>):Array<T>;
	@:overload(function<U>(fn:T -> U):Array<T> { })
	function unique(?map:String):Array<T>;
};
typedef ObjectStatic = {
	function extended(?obj:Dynamic):Dynamic;
	function fromQueryString<T:({ })>(str:String, ?deep:Bool):T;
	function isArray(obj:Dynamic):Bool;
	function isObject(obj:Dynamic):Bool;
	function isBoolean(obj:Dynamic):Bool;
	function isDate(obj:Dynamic):Bool;
	function isFunction(obj:Dynamic):Bool;
	function isNaN(obj:Dynamic):Bool;
	function isNumber(obj:Dynamic):Bool;
	function isString(obj:Dynamic):Bool;
	function isRegExp(obj:Dynamic):Bool;
	function toQueryString(obj:Dynamic, ?namespace:String):String;
	function clone<T:({ })>(?obj:T, ?deep:Bool):T;
	@:overload(function<T, U>(obj:T, map:String -> Dynamic -> Dynamic):U { })
	function map<T, U>(obj:T, map:String):U;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Bool { })
	function any(obj:Dynamic, map:String):Bool;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Bool { })
	function all(obj:Dynamic, map:String):Bool;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Bool { })
	function none(obj:Dynamic, map:String):Bool;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Float { })
	function count(obj:Dynamic, map:String):Float;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Dynamic { })
	function find(obj:Dynamic, map:String):Dynamic;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Bool):Array<Dynamic> { })
	function findAll(obj:Dynamic, map:String):Array<Dynamic>;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Dynamic, ?init:Dynamic):Dynamic { })
	function reduce(obj:Dynamic, map:String, ?init:Dynamic):Dynamic;
	function isEmpty(obj:Dynamic):Bool;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Float):Float { })
	function sum(obj:Dynamic, map:String):Float;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Float):Float { })
	function average(obj:Dynamic, map:String):Float;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Dynamic):Dynamic { })
	function min(obj:Dynamic, map:String):Dynamic;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Dynamic):Dynamic { })
	function max(obj:Dynamic, map:String):Dynamic;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Dynamic):Dynamic { })
	function least(obj:Dynamic, map:String):Dynamic;
	@:overload(function(obj:Dynamic, map:String -> Dynamic -> Dynamic):Dynamic { })
	function most(obj:Dynamic, map:String):Dynamic;
	function equal(a:Dynamic, b:Dynamic):Bool;
	function has(obj:Dynamic, key:String):Bool;
	function keys(obj:Dynamic, ?fn:String -> Dynamic -> Void):Array<String>;
	@:overload(function(target:Dynamic, source:Dynamic, ?deep:Bool, ?resolve:String -> Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function merge(target:Dynamic, source:Dynamic, ?deep:Bool, ?resolve:Bool):Dynamic;
	function reject(obj:Dynamic, find:haxe.extern.Rest<Dynamic>):Dynamic;
	function select(obj:Dynamic, find:haxe.extern.Rest<Dynamic>):Dynamic;
	function size(obj:Dynamic):Float;
	@:overload(function(obj:Dynamic, fn:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic { })
	function tap(obj:Dynamic, fn:String):Dynamic;
	function values(obj:Dynamic, ?fn:Dynamic -> Dynamic):Array<Dynamic>;
	function watch(obj:Dynamic, prop:String, fn:?String -> ?Dynamic -> ?Dynamic -> Dynamic):Void;
};
typedef Object = {
	function extended():Dynamic;
	function isArray():Bool;
	function isObject():Bool;
	function isBoolean():Bool;
	function isDate():Bool;
	function isFunction():Bool;
	function isNaN():Bool;
	function isNumber():Bool;
	function isString():Bool;
	function isRegExp():Bool;
	function toQueryString(?namespace:String):String;
	function clone(?deep:Bool):Dynamic;
	@:overload(function<U>(map:String -> Dynamic -> Dynamic):U { })
	function map<U>(map:String):U;
	@:overload(function(map:String -> Dynamic -> Bool):Bool { })
	function any(map:String):Bool;
	@:overload(function(map:String -> Dynamic -> Bool):Bool { })
	function all(map:String):Bool;
	@:overload(function(map:String -> Dynamic -> Bool):Bool { })
	function none(map:String):Bool;
	@:overload(function(map:String -> Dynamic -> Bool):Float { })
	function count(map:String):Float;
	@:overload(function(map:String -> Dynamic -> Bool):Dynamic { })
	function find(map:String):Dynamic;
	@:overload(function(map:String -> Dynamic -> Bool):Array<Dynamic> { })
	function findAll(map:String):Array<Dynamic>;
	@:overload(function(map:String -> Dynamic -> Dynamic, ?init:Dynamic):Dynamic { })
	function reduce(map:String, ?init:Dynamic):Dynamic;
	function isEmpty():Bool;
	@:overload(function(map:String -> Dynamic -> Float):Float { })
	function sum(map:String):Float;
	@:overload(function(map:String -> Dynamic -> Float):Float { })
	function average(map:String):Float;
	@:overload(function(map:String -> Dynamic -> Dynamic):Dynamic { })
	function min(map:String):Dynamic;
	@:overload(function(map:String -> Dynamic -> Dynamic):Dynamic { })
	function max(map:String):Dynamic;
	@:overload(function(map:String -> Dynamic -> Dynamic):Dynamic { })
	function least(map:String):Dynamic;
	@:overload(function(map:String -> Dynamic -> Dynamic):Dynamic { })
	function most(map:String):Dynamic;
	function equal(b:Dynamic):Bool;
	function has(key:String):Bool;
	function keys(?fn:String -> Dynamic -> Void):Array<String>;
	@:overload(function(source:Dynamic, ?deep:Bool, ?resolve:String -> Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function merge(source:Dynamic, ?deep:Bool, ?resolve:Bool):Dynamic;
	function reject(find:haxe.extern.Rest<Dynamic>):Dynamic;
	function select(find:haxe.extern.Rest<Dynamic>):Dynamic;
	function size():Float;
	@:overload(function(fn:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic { })
	function tap(fn:String):Dynamic;
	function values(?fn:Dynamic -> Dynamic):Array<Dynamic>;
	function watch(prop:String, fn:?String -> ?Dynamic -> ?Dynamic -> Dynamic):Void;
};
typedef Function = {
	function after(?num:Float):haxe.Constraints.Function;
	function bind(?scope:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function cancel():haxe.Constraints.Function;
	function debounce(ms:Float):haxe.Constraints.Function;
	function delay(?ms:Float, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function fill(args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function lazy(?ms:Float, ?limit:Float):haxe.Constraints.Function;
	function once():haxe.Constraints.Function;
	function throttle(ms:Float):haxe.Constraints.Function;
};
typedef RegExpStatic = {
	function escape(str:String):String;
};
typedef RegExp = {
	function addFlag(flag:String):js.RegExp;
	function getFlags():String;
	function removeFlag(flag:String):js.RegExp;
	function setFlags(flags:String):js.RegExp;
};
typedef Locale = {
	var plural : Bool;
	var months : String;
	var weekdays : String;
	var units : String;
	var numbers : String;
	var tokens : Array<String>;
	var short : String;
	var long : String;
	var full : String;
	var past : String;
	var future : String;
	var duration : String;
	var timeMarker : String;
	var ampm : String;
	var modifiers : Array<{ var name : String; var src : String; var value : Float; }>;
	var dateParse : Array<String>;
	var timeParse : Array<String>;
};
typedef DateStatic = {
	function addLocale(code:String, set:Locale):Locale;
	@:overload(function(d:String, ?locale:String):Date { })
	@:overload(function(year:Float, month:Float, day:Float, ?locale:String):Date { })
	function create(?locale:String):Date;
	function future(d:String, ?locale:String):Date;
	function getLocale(?code:String):Locale;
	function now():String;
	function past(d:String, ?local:String):Date;
	function range(start:Date, end:Date):DateRange;
	function setLocale(code:String):Locale;
};
typedef DateFields = {
	@:optional
	var year : Float;
	@:optional
	var month : Float;
	@:optional
	var day : Float;
};
typedef Date = {
	function addMilliseconds(num:Float, ?reset:Bool):Date;
	function addSeconds(num:Float, ?reset:Bool):Date;
	function addMinutes(num:Float, ?reset:Bool):Date;
	function addHours(num:Float, ?reset:Bool):Date;
	function addDays(num:Float, ?reset:Bool):Date;
	function addWeeks(num:Float, ?reset:Bool):Date;
	function addMonths(num:Float, ?reset:Bool):Date;
	function addYears(num:Float, ?reset:Bool):Date;
	@:overload(function(year:Float, month:Float, day:Float, ?reset:Bool):Date { })
	@:overload(function(milliseconds:Float, ?reset:Bool):Date { })
	@:overload(function(set:DateFields, ?reset:Bool):Date { })
	function advance(set:String, ?reset:Bool):Date;
	function beginningOfDay():Date;
	function beginningOfWeek():Date;
	function beginningOfMonth():Date;
	function beginningOfYear():Date;
	function clone():Date;
	function daysInMonth():Float;
	function endOfDay():Date;
	function endOfWeek():Date;
	function endOfMonth():Date;
	function endOfYear():Date;
	function format(format:String, ?locale:String):String;
	function short(?locale:String):String;
	function long(?locale:String):String;
	function full(?locale:String):String;
	function getUTCOffset(?iso:Bool):String;
	function getISOWeek():Float;
	function getWeekday():Float;
	function getUTCWeekday():Float;
	@:overload(function(milliseconds:Float, ?margin:Float):Bool { })
	@:overload(function(d:Date, ?margin:Float):Bool { })
	function is(d:String, ?margin:Float):Bool;
	@:overload(function(milliseconds:Float, ?margin:Float):Bool { })
	@:overload(function(d:Date, ?margin:Float):Bool { })
	function isAfter(d:String, ?margin:Float):Bool;
	@:overload(function(milliseconds:Float, ?margin:Float):Bool { })
	@:overload(function(d:Date, ?margin:Float):Bool { })
	@:overload(function(start:String, end:String, ?margin:Float):Bool { })
	@:overload(function(start:Float, end:String, ?margin:Float):Bool { })
	@:overload(function(start:Date, end:Date, ?margin:Float):Bool { })
	function isBefore(d:String, ?margin:Float):Bool;
	function isToday():Bool;
	function isYesterday():Bool;
	function isTomorrow():Bool;
	function isWeekday():Bool;
	function isWeekend():Bool;
	function isSunday():Bool;
	function isMonday():Bool;
	function isTuesday():Bool;
	function isWednesday():Bool;
	function isThursday():Bool;
	function isFriday():Bool;
	function isSaturday():Bool;
	function isFuture():Bool;
	function isLastWeek():Bool;
	function isLastMonth():Bool;
	function isLastYear():Bool;
	function isLeapYear():Bool;
	function isNextWeek():Bool;
	function isNextMonth():Bool;
	function isNextYear():Bool;
	function isPast():Bool;
	function isThisWeek():Bool;
	function isThisMonth():Bool;
	function isThisYear():Bool;
	function isUTC():Bool;
	function isValid():Bool;
	function iso():String;
	@:overload(function(?fn:Float -> String -> Float -> Locale -> String, ?locale:String):String { })
	function relative(locale:String):String;
	function reset(?unit:String):Date;
	@:overload(function(year:Float, month:Float, day:Float, ?reset:Bool):Date { })
	@:overload(function(d:DateFields, ?reset:Bool):Date { })
	function rewind(ms:Float, ?reset:Bool):Date;
	@:overload(function(year:Float, month:Float, day:Float):Date { })
	@:overload(function(d:DateFields, ?reset:Bool):Date { })
	function set(ms:Float):Date;
	function setISOWeek(week:Float):Void;
	function setWeekday(day:Float):Void;
	function toJSON():String;
	function millisecondsAgo():Float;
	function secondsAgo():Float;
	function minutesAgo():Float;
	function hoursAgo():Float;
	function daysAgo():Float;
	function weeksAgo():Float;
	function monthsAgo():Float;
	function yearsAgo():Float;
	function millisecondsFromNow():Float;
	function secondsFromNow():Float;
	function minutesFromNow():Float;
	function hoursFromNow():Float;
	function daysFromNow():Float;
	function weeksFromNow():Float;
	function monthsFromNow():Float;
	function yearsFromNow():Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function millisecondsSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function secondsSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function minutesSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function hoursSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function daysSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function weeksSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function monthsSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function yearsSince(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function millisecondsUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function secondsUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function minutesUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function hoursUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function daysUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function weeksUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function monthsUntil(?date:Date, ?locale:String):Float;
	@:overload(function(date:String, ?locale:String):Float { })
	function yearsUntil(?date:Date, ?locale:String):Float;
	function utc(?on:Bool):Date;
};
typedef DateRange = {
	var start : Date;
	var end : Date;
	@:overload(function(d:DateRange):Bool { })
	function contains(d:Date):Bool;
	function duration():Float;
	function eachMillisecond(?fn:Date -> Void):Array<Date>;
	function eachSecond(?fn:Date -> Void):Array<Date>;
	function eachMinute(?fn:Date -> Void):Array<Date>;
	function eachHour(?fn:Date -> Void):Array<Date>;
	function eachDay(?fn:Date -> Void):Array<Date>;
	function eachWeek(?fn:Date -> Void):Array<Date>;
	function eachMonth(?fn:Date -> Void):Array<Date>;
	function eachYear(?fn:Date -> Void):Array<Date>;
	@:overload(function(increment:String, ?fn:Date -> Void):Array<Date> { })
	function every(ms:Float, ?fn:Date -> Void):Array<Date>;
	function intersect(range:DateRange):DateRange;
	function isValid():Bool;
	function toString():String;
	function union(range:DateRange):DateRange;
};
