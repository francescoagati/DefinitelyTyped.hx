extern class RendererSlider {
	var maximum : Float;
	var maxLabel : String;
	var minimum : Float;
	var minLabel : String;
	var precision : Float;
	var showHandles : Bool;
	var showLabels : Dynamic;
	var showTicks : Bool;
	var values : Array<Float>;
	@:overload(function(params:esri.RendererSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.RendererSliderOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Stop, listener:{ var values : Array<Float>; var target : RendererSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Slide, listener:{ var values : Array<Float>; var target : RendererSlider; } -> Void):esri.Handle;
}
