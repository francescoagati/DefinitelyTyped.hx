typedef UnderscoreStatic = {
	var str : UnderscoreStringStatic;
	var string : UnderscoreStringStatic;
};
typedef UnderscoreStringStatic = {
	>UnderscoreStringStaticExports,
	function include(str:String, needle:String):Bool;
	function contains(str:String, needle:String):Bool;
	function reverse(str:String):String;
};
typedef UnderscoreStringStaticExports = {
	function exports():UnderscoreStringStaticExports;
	function isBlank(str:String):Bool;
	function stripTags(str:String):String;
	function capitalize(str:String):String;
	function chop(str:String, step:Float):Array<Dynamic>;
	function clean(str:String):String;
	function count(str:String, substr:String):Float;
	function chars(str:String):Array<Dynamic>;
	function swapCase(str:String):String;
	function escapeHTML(str:String):String;
	function unescapeHTML(str:String):String;
	function escapeRegExp(str:String):String;
	function splice(str:String, i:Float, howmany:Float, ?substr:String):String;
	function insert(str:String, i:Float, substr:String):String;
	function join(separator:String, args:haxe.extern.Rest<String>):String;
	function lines(str:String):Array<Dynamic>;
	function startsWith(str:String, starts:String):Bool;
	function endsWith(value:String, starts:String):Bool;
	function succ(str:String):String;
	function titleize(str:String):String;
	function camelize(str:String):String;
	function underscored(str:String):String;
	function dasherize(str:String):String;
	function classify(str:String):String;
	function humanize(str:String):String;
	function trim(str:String, ?characters:String):String;
	function strip(str:String, ?characters:String):String;
	function ltrim(str:String, ?characters:String):String;
	function lstrip(str:String, ?characters:String):String;
	function rtrim(str:String, ?characters:String):String;
	function rstrip(str:String, ?characters:String):String;
	function truncate(str:String, length:Float, ?truncateStr:String):String;
	function prune(str:String, length:Float, ?pruneStr:String):String;
	@:overload(function(str:String, delimiter:String):Array<String> { })
	@:overload(function(str:String, delimiter:js.RegExp):Array<String> { })
	function words(str:String):Array<String>;
	function pad(str:String, length:Float, ?padStr:String, ?type:String):String;
	function lpad(str:String, length:Float, ?padStr:String):String;
	function rjust(str:String, length:Float, ?padStr:String):String;
	function rpad(str:String, length:Float, ?padStr:String):String;
	function ljust(str:String, length:Float, ?padStr:String):String;
	function lrpad(str:String, length:Float, ?padStr:String):String;
	function center(str:String, length:Float, ?padStr:String):String;
	function sprintf(format:String, args:haxe.extern.Rest<Dynamic>):String;
	function toNumber(str:String, ?decimals:Float):Float;
	function numberFormat(number:Float, ?dec:Float, ?dsep:String, ?tsep:String):String;
	function strRight(str:String, sep:String):String;
	function strRightBack(str:String, sep:String):String;
	function strLeft(str:String, sep:String):String;
	function strLeftBack(str:String, sep:String):String;
	function toSentence(array:Array<Dynamic>, ?separator:String, ?lastSeparator:String, ?serial:Bool):String;
	function toSentenceSerial(array:Array<Dynamic>, ?separator:String, ?lastSeparator:String):String;
	function slugify(str:String):String;
	function surround(str:String, wrapper:String):String;
	function quote(str:String, ?quoteChar:String):String;
	function q(str:String, ?quoteChar:String):String;
	function unquote(str:String, ?quoteChar:String):String;
	function repeat(value:String, count:Float, ?separator:String):String;
	function naturalCmp(str1:String, str2:String):Float;
	function levenshtein(str1:String, str2:String):Float;
	function toBoolean(str:String, ?trueValues:Array<Dynamic>, ?falseValues:Array<Dynamic>):Bool;
};
extern class Underscore.stringTopLevel {
	static var s : UnderscoreStringStatic;
	static var underscoreString : UnderscoreStringStatic;
}
extern class Underscore.stringTopLevel {
	static var s : UnderscoreStringStatic;
	static var underscoreString : UnderscoreStringStatic;
}
