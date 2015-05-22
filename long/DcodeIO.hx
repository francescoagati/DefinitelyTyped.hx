typedef LongStatic = {
	function new(low:Float, high:Float, ?unsigned:Bool):Long;
	var MAX_SIGNED_VALUE : Long;
	var MAX_UNSIGNED_VALUE : Long;
	var MAX_VALUE : Long;
	var MIN_SIGNED_VALUE : Long;
	var MIN_UNSIGNED_VALUE : Long;
	var MIN_VALUE : Long;
	var NEG_ONE : Long;
	var ONE : Long;
	var ZERO : Long;
	function from28Bits(part0:Float, part1:Float, part2:Float, ?unsigned:Bool):Long;
	function fromBits(lowBits:Float, highBits:Float, ?unsigned:Bool):Long;
	function fromInt(value:Float, ?unsigned:Bool):Long;
	function fromNumber(value:Float, ?unsigned:Bool):Long;
	@:overload(function(str:String, ?unsigned:Float, ?radix:Float):Long { })
	@:overload(function(str:String, ?unsigned:Dynamic, ?radix:Float):Long { })
	function fromString(str:String, ?unsigned:Bool, ?radix:Float):Long;
};
typedef Long = {
	var high : Float;
	var low : Float;
	var unsigned : Bool;
	function add(other:Long):Long;
	function and(other:Long):Long;
	function clone():Long;
	function compare(other:Long):Float;
	function div(other:Long):Long;
	function equals(other:Long):Bool;
	function getHighBits():Float;
	function getHighBitsUnsigned():Float;
	function getLowBits():Float;
	function getLowBitsUnsigned():Float;
	function getNumBitsAbs():Float;
	function greaterThan(other:Long):Bool;
	function greaterThanOrEqual(other:Long):Bool;
	function isEven():Bool;
	function isNegative():Bool;
	function isOdd():Bool;
	function isZero():Bool;
	function lessThan(other:Long):Bool;
	function lessThanOrEqual(other:Long):Bool;
	function modulo(other:Long):Long;
	function multiply(other:Long):Long;
	function negate():Long;
	function not():Long;
	function notEquals(other:Long):Bool;
	function or(other:Long):Long;
	function shiftLeft(numBits:Float):Long;
	function shiftRight(numBits:Float):Long;
	function shiftRightUnsigned(numBits:Float):Long;
	function subtract(other:Long):Long;
	function toInt():Float;
	function toNumber():Float;
	function toSigned():Long;
	function toString(?radix:Float):String;
	function toUnsigned():Long;
	function xor(other:Long):Long;
};
extern class DcodeIOTopLevel {
	static var Long : LongStatic;
}
