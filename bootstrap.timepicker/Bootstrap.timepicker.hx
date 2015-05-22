typedef TimeickerOptions = {
	@:optional
	var defaultTime : String;
	@:optional
	var disableFocus : Bool;
	@:optional
	var isOpen : Bool;
	@:optional
	var minuteStep : Float;
	@:optional
	var modalBackdrop : Bool;
	@:optional
	var secondStep : Float;
	@:optional
	var showSeconds : Bool;
	@:optional
	var showInputs : Bool;
	@:optional
	var showMeridian : Bool;
	@:optional
	var template : String;
	@:optional
	var appendWidgetTo : String;
};
typedef JQuery = {
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(methodName:String, params:Dynamic):JQuery { })
	@:overload(function(options:TimeickerOptions):JQuery { })
	function timepicker():JQuery;
};
