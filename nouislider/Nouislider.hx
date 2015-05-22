typedef NoUiSliderInstance = {
	>JQuery,
	@:overload(function(value:Dynamic):JQuery { })
	function val():haxe.extern.EitherType<Float, Array<Float>>;
	function Link(target:String, ?method:Dynamic, ?format:Dynamic):Dynamic;
};
typedef NoUiSliderOptions = {
	var start : haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<Float>, Array<Array<Float>>>>;
	var range : Dynamic;
	@:optional
	var connect : haxe.extern.EitherType<String, Bool>;
	@:optional
	var margin : Float;
	@:optional
	var limit : Float;
	@:optional
	var step : Float;
	@:optional
	var orientation : String;
	@:optional
	var direction : String;
	@:optional
	var animate : Bool;
	@:optional
	var format : haxe.extern.EitherType<Dynamic, haxe.extern.Rest<Dynamic> -> Dynamic>;
};
typedef NoUiSliderPipsOptions = {
	var mode : String;
	@:optional
	var density : Float;
	@:optional
	var filter : haxe.extern.Rest<Dynamic> -> Float;
	@:optional
	var format : Dynamic;
	@:optional
	var values : haxe.extern.EitherType<Float, Array<Float>>;
	@:optional
	var stepped : Bool;
};
typedef JQuery = {
	function noUiSlider(?options:NoUiSliderOptions):NoUiSliderInstance;
	function noUiSlider_pips(?options:NoUiSliderPipsOptions):NoUiSliderInstance;
};
