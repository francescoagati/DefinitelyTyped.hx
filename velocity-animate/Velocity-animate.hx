typedef JQuery = {
	@:overload(function(properties:Dynamic, options:jquery.velocity.VelocityOptions):JQuery { })
	@:overload(function(properties:Dynamic, ?duration:Float, ?easing:String, ?complete:jquery.velocity.ElementCallback):JQuery { })
	@:overload(function(properties:Dynamic, ?duration:Float, ?easing:Array<Float>, ?complete:jquery.velocity.ElementCallback):JQuery { })
	@:overload(function(properties:Dynamic, ?duration:Float, ?complete:jquery.velocity.ElementCallback):JQuery { })
	@:overload(function(properties:Dynamic, ?easing:String, ?complete:jquery.velocity.ElementCallback):JQuery { })
	@:overload(function(properties:Dynamic, ?easing:Array<Float>, ?complete:jquery.velocity.ElementCallback):JQuery { })
	@:overload(function(properties:Dynamic, ?complete:jquery.velocity.ElementCallback):JQuery { })
	function velocity(options:{ var properties : Dynamic; var options : jquery.velocity.VelocityOptions; }):JQuery;
};
typedef JQueryStatic = {
	var Velocity : jquery.velocity.VelocityStatic;
};
