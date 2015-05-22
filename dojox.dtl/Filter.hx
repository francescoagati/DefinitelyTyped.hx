typedef Dates = {
	function date(value:Dynamic, arg:Dynamic):String;
	function time(value:Dynamic, arg:Dynamic):String;
	function timesince(value:Dynamic, arg:Dynamic):String;
	function timeuntil(value:Dynamic, arg:Dynamic):String;
};
typedef Htmlstrings = {
	function linebreaks(value:Dynamic):Dynamic;
	function linebreaksbr(value:Dynamic):Dynamic;
	function removetags(value:Dynamic, arg:Dynamic):Dynamic;
	function striptags(value:Dynamic):Dynamic;
};
typedef Integers = {
	function add(value:Dynamic, arg:Dynamic):Float;
	function get_digit(value:Dynamic, arg:Dynamic):Float;
};
typedef Logic = {
	function default_(value:Dynamic, arg:Dynamic):String;
	function default_if_none(value:Dynamic, arg:Dynamic):String;
	function divisibleby(value:Dynamic, arg:Dynamic):Bool;
	function yesno(value:Dynamic, arg:Dynamic):Dynamic;
};
typedef Misc = {
	function filesizeformat(value:Dynamic):String;
	function phone2numeric(value:Dynamic):String;
	function pluralize(value:Dynamic, arg:Dynamic):String;
	function pprint(value:Dynamic):Dynamic;
};
