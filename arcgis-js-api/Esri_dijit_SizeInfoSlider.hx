extern class SizeInfoSlider extends RendererSlider {
	var classificationMethod : String;
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
	var sizeInfo : Dynamic;
	var statistics : Dynamic;
	var zoomOptions : Dynamic;
	@:overload(function(params:esri.SizeInfoSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.SizeInfoSliderOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Data-value-change, listener:{ var maxValue : Float; var minValue : Float; var sizeInfo : Dynamic; var target : SizeInfoSlider; } -> Void):esri.Handle { })
	@:overload(function(type:Handle-value-change, listener:{ var sizeInfo : Dynamic; var target : SizeInfoSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Change, listener:{ var sizeInfo : Dynamic; var target : SizeInfoSlider; } -> Void):esri.Handle;
}
