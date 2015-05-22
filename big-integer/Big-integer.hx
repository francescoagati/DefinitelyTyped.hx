typedef BigInteger = {
	function abs():BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function add(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function plus(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function minus(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function subtract(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function multiply(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function times(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function divide(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function over(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function pow(number:Float):BigInteger;
	function next():BigInteger;
	function prev():BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function mod(number:Float):BigInteger;
	@:overload(function(number:BigInteger):{ var quotient : BigInteger; var remainder : BigInteger; } { })
	@:overload(function(number:String):{ var quotient : BigInteger; var remainder : BigInteger; } { })
	function divmod(number:Float):{ var quotient : BigInteger; var remainder : BigInteger; };
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function greater(number:Float):Bool;
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function greaterOrEquals(number:Float):Bool;
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function lesser(number:Float):Bool;
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function lesserOrEquals(number:Float):Bool;
	function isEven():Bool;
	function isOdd():Bool;
	function isPositive():Bool;
	function isNegative():Bool;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function compare(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function compareAbs(number:Float):BigInteger;
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function equals(number:Float):Bool;
	@:overload(function(number:BigInteger):Bool { })
	@:overload(function(number:String):Bool { })
	function notEquals(number:Float):Bool;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function and(number:Float):BigInteger;
	function not():BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function or(number:Float):BigInteger;
	@:overload(function(number:BigInteger):BigInteger { })
	@:overload(function(number:String):BigInteger { })
	function xor(number:Float):BigInteger;
	function toJSNumber():Float;
	function toString():String;
	function valueOf():Float;
};
typedef BigIntegerStatic = {
	var one : BigInteger;
	var zero : BigInteger;
	var minusOne : BigInteger;
};
extern class Big-integerTopLevel {
	static var bigInt : BigIntegerStatic;
}
extern class Big-integerTopLevel {
	static var bigInt : BigIntegerStatic;
}
