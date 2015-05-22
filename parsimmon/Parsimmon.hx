typedef Mark<T> = {
	var start : Float;
	var end : Float;
	var value : T;
};
typedef Result<T> = {
	var status : Bool;
	@:optional
	var value : T;
	@:optional
	var expected : String;
	@:optional
	var index : Float;
};
typedef Parser<T> = {
	function parse(input:String):Result<T>;
	@:overload(function<U>(otherParser:Parser<U>):Parser<Dynamic> { })
	function or(otherParser:Parser<T>):Parser<T>;
	function chain<U>(next:T -> Parser<U>):Parser<U>;
	@:overload(function<U>(anotherParser:Parser<U>):Parser<U> { })
	function then<U>(call:T -> Parser<U>):Parser<U>;
	function map<U>(call:T -> U):Parser<U>;
	function skip<U>(otherParser:Parser<U>):Parser<T>;
	function result<U>(aResult:U):Parser<U>;
	function many():Parser<Array<T>>;
	@:overload(function(min:Float, max:Float):Parser<Array<T>> { })
	function times(n:Float):Parser<Array<T>>;
	function atMost(n:Float):Parser<Array<T>>;
	function atLeast(n:Float):Parser<Array<T>>;
	function mark():Parser<Mark<T>>;
	function desc(description:String):Parser<T>;
};
extern class ParsimmonTopLevel {
	static function string(mystring:String):Parser<String>;
	static function regex(myregex:js.RegExp):Parser<String>;
	static function succeed<U>(result:U):Parser<U>;
	static function seq<U>(parsers:haxe.extern.Rest<Parser<U>>):Parser<Array<U>>;
	static function seq(parsers:haxe.extern.Rest<Parser<Dynamic>>):Parser<Array<Dynamic>>;
	static function alt<U>(parsers:haxe.extern.Rest<Parser<U>>):Parser<U>;
	static function alt(parsers:haxe.extern.Rest<Parser<Dynamic>>):Parser<Dynamic>;
	static function lazy<U>(f:Void -> Parser<U>):Parser<U>;
	static function lazy<U>(description:String, f:Void -> Parser<U>):Parser<U>;
	static function fail(message:String):Parser<Void>;
	static function fail<U>(message:String):Parser<U>;
	static var letter : Parser<String>;
	static var letters : Parser<String>;
	static var digit : Parser<String>;
	static var digits : Parser<String>;
	static var whitespace : Parser<String>;
	static var optWhitespace : Parser<String>;
	static var any : Parser<String>;
	static var all : Parser<String>;
	static var eof : Parser<Void>;
	static var index : Parser<Float>;
}
