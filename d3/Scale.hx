typedef ScaleBase = {
	function linear():LinearScale;
	function ordinal():OrdinalScale;
	function quantize():QuantizeScale;
	function category10():OrdinalScale;
	function category20():OrdinalScale;
	function category20b():OrdinalScale;
	function category20c():OrdinalScale;
	function identity():IdentityScale;
	function log():LogScale;
	function pow():PowScale;
	function quantile():QuantileScale;
	function sqrt():SqrtScale;
	function threshold():ThresholdScale;
};
typedef GenericScale<S> = {
	var domain : { };
	var range : { };
	@:optional
	function invertExtent(y:Dynamic):Array<Dynamic>;
	function copy():S;
};
typedef Scale = {
	>GenericScale<Scale>,
};
typedef GenericQuantitativeScale<S> = {
	>GenericScale<S>,
	function invert(value:Float):Float;
	var rangeRound : Array<Dynamic> -> S;
	var interpolate : { };
	var clamp : { };
	function nice(?count:Float):S;
	function ticks(count:Float):Array<Dynamic>;
	function tickFormat(count:Float, ?format:String):Float -> String;
};
typedef QuantitativeScale = {
	>GenericQuantitativeScale<QuantitativeScale>,
};
typedef LinearScale = {
	>GenericQuantitativeScale<LinearScale>,
};
typedef IdentityScale = {
	>GenericScale<IdentityScale>,
	function invert(value:Float):Float;
	function ticks(count:Float):Array<Dynamic>;
	function tickFormat(count:Float):Float -> String;
};
typedef SqrtScale = {
	>GenericQuantitativeScale<SqrtScale>,
};
typedef PowScale = {
	>GenericQuantitativeScale<PowScale>,
};
typedef LogScale = {
	>GenericQuantitativeScale<LogScale>,
};
typedef OrdinalScale = {
	>GenericScale<OrdinalScale>,
	function rangePoints(interval:Array<Dynamic>, ?padding:Float):OrdinalScale;
	function rangeBands(interval:Array<Dynamic>, ?padding:Float, ?outerPadding:Float):OrdinalScale;
	function rangeRoundBands(interval:Array<Dynamic>, ?padding:Float, ?outerPadding:Float):OrdinalScale;
	function rangeBand():Float;
	function rangeExtent():Array<Dynamic>;
};
typedef QuantizeScale = {
	>GenericScale<QuantizeScale>,
};
typedef ThresholdScale = {
	>GenericScale<ThresholdScale>,
};
typedef QuantileScale = {
	>GenericScale<QuantileScale>,
	function quantiles():Array<Dynamic>;
};
typedef TimeScale = {
	>GenericScale<TimeScale>,
	function invert(value:Float):Date;
	var rangeRound : Array<Dynamic> -> TimeScale;
	var interpolate : { };
	function clamp(clamp:Bool):TimeScale;
	var ticks : { };
	function tickFormat(count:Float):Float -> String;
	function nice(?count:Float):TimeScale;
};
