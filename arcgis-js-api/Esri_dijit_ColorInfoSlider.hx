extern class ColorInfoSlider extends RendererSlider {
	var classificationMethod : String;
	var colorInfo : Dynamic;
	var handles : Array<Float>;
	var histogram : Dynamic;
	var histogramWidth : Bool;
	var maxValue : Float;
	var minValue : Float;
	var normalizationType : String;
	var primaryHandle : Float;
	var rampWidth : Float;
	var showHandles : Bool;
	var showHistogram : Bool;
	var showLabels : Bool;
	var showTicks : Bool;
	var showTransparentBackground : Bool;
	var statistics : Dynamic;
	var zoomOptions : Dynamic;
	@:overload(function(params:esri.ColorInfoSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.ColorInfoSliderOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Data-value-change, listener:{ var colorInfo : Dynamic; var maxValue : Float; var minValue : Float; var target : ColorInfoSlider; } -> Void):esri.Handle { })
	@:overload(function(type:Handle-value-change, listener:{ var target : ColorInfoSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Change, listener:{ var colorInfo : Dynamic; var target : ColorInfoSlider; } -> Void):esri.Handle;
}
