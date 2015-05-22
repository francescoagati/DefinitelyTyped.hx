typedef JQueryTransitOptions = {
	@:optional
	var opacity : Float;
	@:optional
	var duration : Float;
	@:optional
	var delay : Float;
	@:optional
	var easing : String;
	@:optional
	var complete : Void -> Void;
	@:optional
	var scale : Dynamic;
};
typedef JQuery = {
	@:overload(function(options:JQueryTransitOptions, duration:Float):JQuery { })
	@:overload(function(options:JQueryTransitOptions, easing:String):JQuery { })
	@:overload(function(options:JQueryTransitOptions, duration:Float, easing:String):JQuery { })
	@:overload(function(options:JQueryTransitOptions, complete:Void -> Void):JQuery { })
	@:overload(function(options:JQueryTransitOptions, duration:Float, easing:String, complete:Void -> Void):JQuery { })
	function transition(options:JQueryTransitOptions):JQuery;
	function css(propertyName:String, value:Array<Float>):JQuery;
};
