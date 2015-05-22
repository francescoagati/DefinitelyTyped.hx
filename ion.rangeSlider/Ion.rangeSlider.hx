typedef JQuery = {
	function destroy():Void;
	@:overload(function(options:IonRangeSliderOptions):JQuery { })
	function ionRangeSlider():JQuery;
	function reset():Void;
	function update(option:IonRangeSliderOptions):Void;
};
typedef IonRangeSliderOptions = {
	@:optional
	var decorate_both : Bool;
	@:optional
	var disable : Bool;
	@:optional
	var drag_interval : Bool;
	@:optional
	var force_edges : Bool;
	@:optional
	var from : Float;
	@:optional
	var from_fixed : Bool;
	@:optional
	var from_max : Float;
	@:optional
	var from_min : Float;
	@:optional
	var from_shadow : Bool;
	@:optional
	var grid : Bool;
	@:optional
	var grid_margin : Bool;
	@:optional
	var grid_num : Float;
	@:optional
	var grid_snap : Bool;
	@:optional
	var hide_from_to : Bool;
	@:optional
	var hide_min_max : Bool;
	@:optional
	var keyboard : Bool;
	@:optional
	var keyboard_step : Float;
	@:optional
	var max : Float;
	@:optional
	var max_interval : Float;
	@:optional
	var max_postfix : String;
	@:optional
	var min : Float;
	@:optional
	var min_interval : Float;
	@:optional
	var onChange : IonRangeSliderEvent -> Void;
	@:optional
	var onFinish : IonRangeSliderEvent -> Void;
	@:optional
	var onStart : IonRangeSliderEvent -> Void;
	@:optional
	var onUpdate : IonRangeSliderEvent -> Void;
	@:optional
	var postfix : String;
	@:optional
	var prefix : String;
	@:optional
	var prettify : Float -> String;
	@:optional
	var prettify_enabled : Bool;
	@:optional
	var prettify_separator : String;
	@:optional
	var step : Float;
	@:optional
	var to : Float;
	@:optional
	var to_fixed : Bool;
	@:optional
	var to_max : Float;
	@:optional
	var to_min : Float;
	@:optional
	var to_shadowed : Bool;
	@:optional
	var type : String;
	@:optional
	var values : Array<Dynamic>;
	@:optional
	var values_separator : String;
};
typedef IonRangeSliderEvent = {
	var from : Float;
	var from_precent : Float;
	var from_value : Dynamic;
	var input : JQuery;
	var max : Float;
	var min : Float;
	var slider : JQuery;
	var to : Float;
	var to_precent : Float;
	var to_value : Dynamic;
};
