extern class OpacitySlider extends RendererSlider {
	var handles : Array<Float>;
	var histogram : Dynamic;
	var histogramWidth : Bool;
	var maxValue : Float;
	var minValue : Float;
	var opacityInfo : Dynamic;
	var rampWidth : Float;
	var showHandles : Bool;
	var showHistogram : Bool;
	var showLabels : Bool;
	var showTicks : Bool;
	var showTransparentBackground : Bool;
	var statistics : Dynamic;
	var zoomOptions : Dynamic;
	@:overload(function(params:esri.OpacitySliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.OpacitySliderOptions, srcNodeRef:Node):Void;
	@:overload(function(type:Data-value-change, listener:{ var maxValue : Float; var minValue : Float; var opacityInfo : Dynamic; var target : OpacitySlider; } -> Void):esri.Handle { })
	@:overload(function(type:Handle-value-change, listener:{ var opacityInfo : Dynamic; var target : OpacitySlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Change, listener:{ var opacityInfo : Dynamic; var target : OpacitySlider; } -> Void):esri.Handle;
}
