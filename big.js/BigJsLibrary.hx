@:enum abstract RoundingMode(Int) {
	var RoundTowardsZero = 0;
	var RoundTowardsNearestAwayFromZero = 1;
	var RoundTowardsNearestTowardsEven = 2;
	var RoundAwayFromZero = 3;
}
typedef BigJS = {
	>BigJS_Constructors,
	var DP : Float;
	var RM : RoundingMode;
};
typedef BigJS_Constructors = {
	@:overload(function(value:String):BigJS { })
	@:overload(function(value:BigJS):BigJS { })
	function new(value:Float):BigJS;
};
typedef BigJS = {
	>BigJS_Constructors,
	function abs():BigJS;
	@:overload(function(n:String):Float { })
	@:overload(function(n:BigJS):Float { })
	function cmp(n:Float):Float;
	@:overload(function(n:String):BigJS { })
	@:overload(function(n:BigJS):BigJS { })
	function div(n:Float):BigJS;
	@:overload(function(n:String):Bool { })
	@:overload(function(n:BigJS):Bool { })
	function eq(n:Float):Bool;
	@:overload(function(n:String):Bool { })
	@:overload(function(n:BigJS):Bool { })
	function gt(n:Float):Bool;
	@:overload(function(n:String):Bool { })
	@:overload(function(n:BigJS):Bool { })
	function gte(n:Float):Bool;
	@:overload(function(n:String):Bool { })
	@:overload(function(n:BigJS):Bool { })
	function lt(n:Float):Bool;
	@:overload(function(n:String):Bool { })
	@:overload(function(n:BigJS):Bool { })
	function lte(n:Float):Bool;
	@:overload(function(n:String):BigJS { })
	@:overload(function(n:BigJS):BigJS { })
	function minus(n:Float):BigJS;
	@:overload(function(n:String):BigJS { })
	@:overload(function(n:BigJS):BigJS { })
	function mod(n:Float):BigJS;
	@:overload(function(n:String):BigJS { })
	@:overload(function(n:BigJS):BigJS { })
	function plus(n:Float):BigJS;
	function pow(exp:Float):BigJS;
	@:overload(function(dp:Float):BigJS { })
	@:overload(function(dp:Float, rm:RoundingMode):BigJS { })
	function round():BigJS;
	function sqrt():BigJS;
	@:overload(function(n:String):BigJS { })
	@:overload(function(n:BigJS):BigJS { })
	function times(n:Float):BigJS;
	@:overload(function(dp:Float):String { })
	function toExponential():String;
	@:overload(function(dp:Float):String { })
	function toFixed():String;
	@:overload(function(sd:Float):String { })
	function toPrecision():String;
	function toString():String;
	function valueOf():String;
	function toJSON():String;
	var c : Array<Float>;
	var e : Float;
	var s : Float;
};
