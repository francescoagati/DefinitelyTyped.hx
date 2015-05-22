typedef Charting = {
	function hideTooltip(gfxObject:dojox.gfx.shape.Shape):Void;
	function showTooltip(innerHTML:String, gfxObject:dojox.gfx.shape.Shape, positions:Array<String>):Void;
};
typedef Islamic = {
	var locale : Dynamic;
	function add(date:dojox.date.islamic.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.islamic.Date, date2:dojox.date.islamic.Date, portion:String):Void;
	function difference(date1:dojox.date.islamic.Date, date2:dojox.date.islamic.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.islamic.Date):Void;
};
typedef Languages = {
	var pygments : Dynamic;
};
typedef Functional = {
	function buildLambda(s:String):String;
	function clearLambdaCache():Void;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Bool { })
	@:overload(function(a:String, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Bool { })
	function every(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Bool;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Bool { })
	@:overload(function(a:String, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Bool { })
	function everyRev(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Bool;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	function filter(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic>;
	@:overload(function(obj:Dynamic, f:String, o:Dynamic):Dynamic { })
	@:overload(function(obj:Dynamic, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function filterIn(obj:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	function filterRev(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic>;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic { })
	function foldl(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function foldl1(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Dynamic { })
	function foldr(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function foldr1(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):String { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):String { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):String { })
	@:overload(function(a:String, f:String, o:Dynamic):String { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):String { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):String { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):String { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):String { })
	function forEach(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):String;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Void { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Void { })
	@:overload(function(a:String, f:String, o:Dynamic):Void { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Void { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Void { })
	function forEachRev(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Void;
	@:overload(function(obj:Dynamic, f:String, o:Dynamic):String { })
	@:overload(function(obj:Dynamic, f:Array<Dynamic>, o:Dynamic):String { })
	function forIn(obj:Dynamic, f:haxe.Constraints.Function, o:Dynamic):String;
	function keys(obj:Dynamic):Array<Dynamic>;
	@:overload(function(s:String):haxe.Constraints.Function { })
	@:overload(function(s:Array<Dynamic>):haxe.Constraints.Function { })
	function lambda(s:haxe.Constraints.Function):haxe.Constraints.Function;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	function map(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic>;
	@:overload(function(obj:Dynamic, f:String, o:Dynamic):Dynamic { })
	@:overload(function(obj:Dynamic, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function mapIn(obj:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function mapRev(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	function rawLambda(s:String):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, z:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, z:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, z:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:String, z:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, z:Dynamic):Dynamic { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, z:Dynamic):Dynamic { })
	function reduce(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, z:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, z:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, z:Dynamic):Dynamic { })
	function reduceRight(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic):Dynamic;
	@:overload(function(n:Float, f:String, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(n:Float, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Dynamic { })
	function repeat(n:Float, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	function scanl(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic>;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Array<Dynamic> { })
	function scanl1(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Array<Dynamic>;
	@:overload(function(a:String, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Dynamic { })
	function scanr(a:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:String, o:Dynamic):Dynamic { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Dynamic { })
	function scanr1(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Dynamic;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Bool { })
	@:overload(function(a:String, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:Dynamic, f:Array<Dynamic>, o:Dynamic):Bool { })
	function some(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Bool;
	@:overload(function(a:String, f:haxe.Constraints.Function, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:String, o:Dynamic):Bool { })
	@:overload(function(a:String, f:String, o:Dynamic):Bool { })
	@:overload(function(a:Array<Dynamic>, f:Array<Dynamic>, o:Dynamic):Bool { })
	@:overload(function(a:String, f:Array<Dynamic>, o:Dynamic):Bool { })
	function someRev(a:Array<Dynamic>, f:haxe.Constraints.Function, o:Dynamic):Bool;
	@:overload(function(pr:String, f:haxe.Constraints.Function, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:haxe.Constraints.Function, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:String, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:String, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:String, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:Array<Dynamic>, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:Array<Dynamic>, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:Array<Dynamic>, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:haxe.Constraints.Function, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:haxe.Constraints.Function, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:haxe.Constraints.Function, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:String, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:String, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:String, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:Array<Dynamic>, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:Array<Dynamic>, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:Array<Dynamic>, g:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:haxe.Constraints.Function, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:haxe.Constraints.Function, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:haxe.Constraints.Function, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:String, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:String, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:String, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:Array<Dynamic>, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:Array<Dynamic>, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:Array<Dynamic>, g:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	function unfold(pr:haxe.Constraints.Function, f:haxe.Constraints.Function, g:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic>;
	@:overload(function(pr:String, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:String, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:haxe.Constraints.Function, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:String, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	@:overload(function(pr:Array<Dynamic>, f:Array<Dynamic>, z:Dynamic, o:Dynamic):Array<Dynamic> { })
	function until(pr:haxe.Constraints.Function, f:haxe.Constraints.Function, z:Dynamic, o:Dynamic):Array<Dynamic>;
	function values(obj:Dynamic):Array<Dynamic>;
};
typedef Regexp = { };
typedef Umalqura = {
	var locale : Dynamic;
	function add(date:dojox.date.umalqura.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.umalqura.Date, date2:dojox.date.umalqura.Date, portion:String):Void;
	function difference(date1:dojox.date.umalqura.Date, date2:dojox.date.umalqura.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.umalqura.Date):Void;
};
typedef Buddhist = {
	var locale : Dynamic;
	function add(date:dojox.date.buddhist.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.buddhist.Date, date2:dojox.date.buddhist.Date, portion:String):Void;
	function difference(date1:dojox.date.hebrew.Date, date2:dojox.date.hebrew.Date, interval:String):Void;
	function getDaysInMonth(dateObject:dojox.date.buddhist.Date):Void;
	function isLeapYear(dateObject:dojox.date.buddhist.Date):Void;
};
typedef Hebrew = {
	var locale : Dynamic;
	var numerals : Dynamic;
	function add(date:dojox.date.hebrew.Date, interval:String, amount:Float):Void;
	function compare(dateheb1:dojox.date.hebrew.Date, dateheb2:dojox.date.hebrew.Date, portion:String):Void;
	function difference(date1:dojox.date.hebrew.Date, date2:dojox.date.hebrew.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.hebrew.Date):Void;
};
typedef Persian = {
	var locale : Dynamic;
	function add(date:dojox.date.persian.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.persian.Date, date2:dojox.date.persian.Date, portion:String):Void;
	function difference(date1:dojox.date.persian.Date, date2:dojox.date.persian.Date, interval:String):Void;
	function getDaysInMonth(month:dojox.date.persian.Date):Void;
};
typedef Relative = {
	function format(dateObject:Date, options:Dynamic):Void;
};
typedef Util = { };
typedef Utils = {
	function coerceType(target:Dynamic, source:Dynamic):Dynamic;
	function merge(object:Dynamic, mixin:Dynamic):Dynamic;
	function updateWithObject(target:Dynamic, source:Dynamic, conv:Bool):Dynamic;
	function updateWithPattern(target:Dynamic, source:Dynamic, pattern:Dynamic, conv:Bool):Dynamic;
};
