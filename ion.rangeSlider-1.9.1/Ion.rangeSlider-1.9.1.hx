typedef JQuery = {
	@:overload(function(options:IonRangeSliderOptions):JQuery { })
	@:overload(function(method:String):JQuery { })
	@:overload(function(method:String, options:IonRangeSliderOptions):JQuery { })
	function ionRangeSlider():JQuery;
};
typedef IonRangeSliderOptions = {
	@:optional
	var disable : Bool;
	@:optional
	var from : Float;
	@:optional
	var hasGrid : Bool;
	@:optional
	var hideFromTo : Bool;
	@:optional
	var hideMinMax : Bool;
	@:optional
	var max : Float;
	@:optional
	var maxPostfix : String;
	@:optional
	var min : Float;
	@:optional
	var onChange : IonRangeSliderEvent -> Void;
	@:optional
	var onFinish : IonRangeSliderEvent -> Void;
	@:optional
	var onLoad : IonRangeSliderEvent -> Void;
	@:optional
	var postfix : String;
	@:optional
	var prefix : String;
	@:optional
	var prettify : Bool;
	@:optional
	var step : Float;
	@:optional
	var to : Float;
	@:optional
	var type : String;
	@:optional
	var values : Array<Dynamic>;
};
typedef IonRangeSliderEvent = {
	var fromNumber : Float;
	var fromPers : Float;
	@:optional
	var fromValue : Dynamic;
	var fromX : Float;
	@:optional
	var fromX_pure : Float;
	var input : JQuery;
	var max : Float;
	var min : Float;
	var slider : JQuery;
	var toNumber : Float;
	var toPers : Float;
	@:optional
	var toValue : Float;
	var toX : Float;
	@:optional
	var toX_pure : Float;
};
