@:enum abstract RoundingMode(Int) {
	var ROUND_UP = 0;
	var ROUND_DOWN = 1;
	var ROUND_CEIL = 2;
	var ROUND_FLOOR = 3;
	var ROUND_HALF_UP = 4;
	var ROUND_HALF_DOWN = 5;
	var ROUND_HALF_EVEN = 6;
	var ROUND_HALF_CEIL = 7;
	var ROUND_HALF_FLOOR = 8;
	var EUCLID = 9;
}
typedef IFormatConfig = {
	@:optional
	var decimalSeparator : String;
	@:optional
	var groupSeparator : String;
	@:optional
	var groupSize : Float;
	@:optional
	var secondaryGroupSize : Float;
	@:optional
	var fractionGroupSeparator : String;
	@:optional
	var fractionGroupSize : Float;
};
typedef IDecimalConfig = {
	@:optional
	var precision : Float;
	@:optional
	var rounding : RoundingMode;
	@:optional
	var toExpNeg : Float;
	@:optional
	var toExpPos : Float;
	@:optional
	var minE : Float;
	@:optional
	var maxE : Float;
	@:optional
	var errors : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var crypto : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var modulo : RoundingMode;
	@:optional
	var format : IFormatConfig;
};
typedef IDecimalStatic = {
	>IDecimalConfig,
	@:overload(function(object:IDecimalConfig):Void { })
	function new(value:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function config(object:IDecimalConfig):IDecimalStatic;
	function exp(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>):Decimal;
	function ln(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>):Decimal;
	function log(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function max(args:haxe.extern.Rest<Dynamic>):Decimal;
	function min(args:haxe.extern.Rest<Dynamic>):Decimal;
	function noConflict():IDecimalStatic;
	function pow(base:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, exponent:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>):Decimal;
	function random(?dp:Float):Decimal;
	function sqrt(arg:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>):Decimal;
	var ONE : Float;
	var ROUND_UP : Float;
	var ROUND_DOWN : Float;
	var ROUND_CEIL : Float;
	var ROUND_FLOOR : Float;
	var ROUND_HALF_UP : Float;
	var ROUND_HALF_DOWN : Float;
	var ROUND_HALF_EVEN : Float;
	var ROUND_HALF_CEIL : Float;
	var ROUND_HALF_FLOOR : Float;
	var EUCLID : Float;
};
typedef Decimal = {
	function absoluteValue():Decimal;
	function abs():Decimal;
	function ceil():Decimal;
	function comparedTo(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Float;
	function cmp(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Float;
	function decimalPlaces():Float;
	function dp():Float;
	function dividedBy(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function div(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function dividedToIntegerBy(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function divToInt(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function equals(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function eq(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function exponential():Decimal;
	function exp():Decimal;
	function floor():Decimal;
	function greaterThan(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function gt(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function greaterThanOrEqualTo(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function gte(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function isFinite():Bool;
	function isInteger():Bool;
	function isInt():Bool;
	function isNaN():Bool;
	function isNegative():Bool;
	function isNeg():Bool;
	function isZero():Bool;
	function lessThan(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function lt(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function lessThanOrEqualTo(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function lte(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Bool;
	function logarithm(?n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function log(?n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function minus(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function modulo(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function mod(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function naturalLogarithm():Decimal;
	function ln():Decimal;
	function negated():Decimal;
	function neg():Decimal;
	function plus(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function precision(?include_leading_zeros:haxe.extern.EitherType<Bool, Float>):Float;
	function sd(?include_leading_zeros:haxe.extern.EitherType<Bool, Float>):Float;
	function round():Decimal;
	function squareRoot():Decimal;
	function sqrt():Decimal;
	function times(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function toDecimalPlaces(?dp:Float, ?rm:RoundingMode):Decimal;
	function toDP(?dp:Float, ?rm:RoundingMode):Decimal;
	function toExponential(?dp:Float, ?rm:RoundingMode):String;
	function toFixed(?dp:Float, ?rm:RoundingMode):String;
	function toFormat(?dp:Float, ?rm:RoundingMode):String;
	function toFraction(?max_denominator:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>):Array<String>;
	function toJSON():String;
	function toNearest(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?rm:RoundingMode):Decimal;
	function toNumber():Float;
	function toPower(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function pow(n:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Decimal>>, ?base:Float):Decimal;
	function toPrecision(?sd:Float, ?rm:RoundingMode):String;
	function toSignificantDigits(?sd:Float, ?rm:RoundingMode):Decimal;
	function toSD(?sd:Float, ?rm:RoundingMode):Decimal;
	function toString(?base:Float):String;
	function truncated():Decimal;
	function trunc():Decimal;
	function valueOf():String;
	var c : Array<Float>;
	var e : Float;
	var s : Float;
};
