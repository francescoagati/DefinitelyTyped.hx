typedef ElementCallback = { };
typedef ProgressCallback = { };
typedef VelocityStatic = {
	var Sequences : Dynamic;
	@:overload(function(elements:NodeListOf<HTMLElement>, properties:Dynamic, options:VelocityOptions):Void { })
	@:overload(function(element:HTMLElement, properties:Dynamic, options:VelocityOptions):Void { })
	function animate(options:{ var elements : NodeListOf<HTMLElement>; var properties : Dynamic; var options : VelocityOptions; }):Void;
};
typedef VelocityOptions = {
	@:optional
	var queue : Dynamic;
	@:optional
	var duration : Dynamic;
	@:optional
	var easing : Dynamic;
	@:optional
	var begin : ElementCallback;
	@:optional
	var complete : ElementCallback;
	@:optional
	var progress : ProgressCallback;
	@:optional
	var display : Dynamic;
	@:optional
	var loop : Dynamic;
	@:optional
	var delay : Dynamic;
	@:optional
	var mobileHA : Bool;
	@:optional
	var _cacheValues : Bool;
};
