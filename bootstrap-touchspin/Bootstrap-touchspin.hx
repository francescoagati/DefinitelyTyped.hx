typedef TouchSpinOptions = {
	@:optional
	var initval : haxe.extern.EitherType<Float, String>;
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var step : Float;
	@:optional
	var forcestepdivisibility : String;
	@:optional
	var decimals : Float;
	@:optional
	var stepinterval : Float;
	@:optional
	var stepintervaldelay : Float;
	@:optional
	var verticalbuttons : Bool;
	@:optional
	var verticalupclass : String;
	@:optional
	var verticaldownclass : String;
	@:optional
	var prefix : String;
	@:optional
	var postfix : String;
	@:optional
	var prefix_extraclass : String;
	@:optional
	var postfix_extraclass : String;
	@:optional
	var booster : Bool;
	@:optional
	var boostat : Float;
	@:optional
	var maxboostedstep : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var mousewheel : Bool;
	@:optional
	var buttondown_class : String;
	@:optional
	var buttonup_class : String;
};
typedef JQuery = {
	@:overload(function(options:TouchSpinOptions):JQuery { })
	function TouchSpin():JQuery;
};
